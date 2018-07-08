var pas = {};

var rtl = {

  quiet: false,
  debug_load_units: false,
  debug_rtti: false,

  debug: function(){
    if (rtl.quiet || !console || !console.log) return;
    console.log(arguments);
  },

  error: function(s){
    rtl.debug('Error: ',s);
    throw s;
  },

  warn: function(s){
    rtl.debug('Warn: ',s);
  },

  hasString: function(s){
    return rtl.isString(s) && (s.length>0);
  },

  isArray: function(a) {
    return Array.isArray(a);
  },

  isFunction: function(f){
    return typeof(f)==="function";
  },

  isModule: function(m){
    return rtl.isObject(m) && rtl.hasString(m.$name) && (pas[m.$name]===m);
  },

  isImplementation: function(m){
    return rtl.isObject(m) && rtl.isModule(m.$module) && (m.$module.$impl===m);
  },

  isNumber: function(n){
    return typeof(n)==="number";
  },

  isObject: function(o){
    var s=typeof(o);
    return (typeof(o)==="object") && (o!=null);
  },

  isString: function(s){
    return typeof(s)==="string";
  },

  getNumber: function(n){
    return typeof(n)==="number"?n:NaN;
  },

  getChar: function(c){
    return ((typeof(c)==="string") && (c.length===1)) ? c : "";
  },

  getObject: function(o){
    return ((typeof(o)==="object") || (typeof(o)==='function')) ? o : null;
  },

  isPasClass: function(type){
    return (rtl.isObject(type) && type.hasOwnProperty('$classname') && rtl.isObject(type.$module));
  },

  isPasClassInstance: function(type){
    return (rtl.isObject(type) && rtl.isPasClass(type.$class));
  },

  hexStr: function(n,digits){
    return ("000000000000000"+n.toString(16).toUpperCase()).slice(-digits);
  },

  m_loading: 0,
  m_loading_intf: 1,
  m_intf_loaded: 2,
  m_loading_impl: 3, // loading all used unit
  m_initializing: 4, // running initialization
  m_initialized: 5,

  module: function(module_name, intfuseslist, intfcode, impluseslist, implcode){
    if (rtl.debug_load_units) rtl.debug('rtl.module name="'+module_name+'" intfuses='+intfuseslist+' impluses='+impluseslist+' hasimplcode='+rtl.isFunction(implcode));
    if (!rtl.hasString(module_name)) rtl.error('invalid module name "'+module_name+'"');
    if (!rtl.isArray(intfuseslist)) rtl.error('invalid interface useslist of "'+module_name+'"');
    if (!rtl.isFunction(intfcode)) rtl.error('invalid interface code of "'+module_name+'"');
    if (!(impluseslist==undefined) && !rtl.isArray(impluseslist)) rtl.error('invalid implementation useslist of "'+module_name+'"');
    if (!(implcode==undefined) && !rtl.isFunction(implcode)) rtl.error('invalid implementation code of "'+module_name+'"');

    if (pas[module_name])
      rtl.error('module "'+module_name+'" is already registered');

    var module = pas[module_name] = {
      $name: module_name,
      $intfuseslist: intfuseslist,
      $impluseslist: impluseslist,
      $state: rtl.m_loading,
      $intfcode: intfcode,
      $implcode: implcode,
      $impl: null,
      $rtti: Object.create(rtl.tSectionRTTI)
    };
    module.$rtti.$module = module;
    if (implcode) module.$impl = {
      $module: module,
      $rtti: module.$rtti
    };
  },

  exitcode: 0,

  run: function(module_name){
  
    function doRun(){
      if (!rtl.hasString(module_name)) module_name='program';
      if (rtl.debug_load_units) rtl.debug('rtl.run module="'+module_name+'"');
      rtl.initRTTI();
      var module = pas[module_name];
      if (!module) rtl.error('rtl.run module "'+module_name+'" missing');
      rtl.loadintf(module);
      rtl.loadimpl(module);
      if (module_name=='program'){
        if (rtl.debug_load_units) rtl.debug('running $main');
        var r = pas.program.$main();
        if (rtl.isNumber(r)) rtl.exitcode = r;
      }
    }
    
    if (rtl.showUncaughtExceptions) {
      try{
        doRun();
      } catch(re) {
        var errMsg = re.hasOwnProperty('$class') ? re.$class.$classname : '';
	    errMsg +=  ((errMsg) ? ': ' : '') + (re.hasOwnProperty('fMessage') ? re.fMessage : re);
        alert('Uncaught Exception : '+errMsg);
        rtl.exitCode = 216;
      }
    } else {
      doRun();
    }
    return rtl.exitcode;
  },

  loadintf: function(module){
    if (module.$state>rtl.m_loading_intf) return; // already finished
    if (rtl.debug_load_units) rtl.debug('loadintf: "'+module.$name+'"');
    if (module.$state===rtl.m_loading_intf)
      rtl.error('unit cycle detected "'+module.$name+'"');
    module.$state=rtl.m_loading_intf;
    // load interfaces of interface useslist
    rtl.loaduseslist(module,module.$intfuseslist,rtl.loadintf);
    // run interface
    if (rtl.debug_load_units) rtl.debug('loadintf: run intf of "'+module.$name+'"');
    module.$intfcode(module.$intfuseslist);
    // success
    module.$state=rtl.m_intf_loaded;
    // Note: units only used in implementations are not yet loaded (not even their interfaces)
  },

  loaduseslist: function(module,useslist,f){
    if (useslist==undefined) return;
    for (var i in useslist){
      var unitname=useslist[i];
      if (rtl.debug_load_units) rtl.debug('loaduseslist of "'+module.$name+'" uses="'+unitname+'"');
      if (pas[unitname]==undefined)
        rtl.error('module "'+module.$name+'" misses "'+unitname+'"');
      f(pas[unitname]);
    }
  },

  loadimpl: function(module){
    if (module.$state>=rtl.m_loading_impl) return; // already processing
    if (module.$state<rtl.m_intf_loaded) rtl.error('loadimpl: interface not loaded of "'+module.$name+'"');
    if (rtl.debug_load_units) rtl.debug('loadimpl: load uses of "'+module.$name+'"');
    module.$state=rtl.m_loading_impl;
    // load interfaces of implementation useslist
    rtl.loaduseslist(module,module.$impluseslist,rtl.loadintf);
    // load implementation of interfaces useslist
    rtl.loaduseslist(module,module.$intfuseslist,rtl.loadimpl);
    // load implementation of implementation useslist
    rtl.loaduseslist(module,module.$impluseslist,rtl.loadimpl);
    // Note: At this point all interfaces used by this unit are loaded. If
    //   there are implementation uses cycles some used units might not yet be
    //   initialized. This is by design.
    // run implementation
    if (rtl.debug_load_units) rtl.debug('loadimpl: run impl of "'+module.$name+'"');
    if (rtl.isFunction(module.$implcode)) module.$implcode(module.$impluseslist);
    // run initialization
    if (rtl.debug_load_units) rtl.debug('loadimpl: run init of "'+module.$name+'"');
    module.$state=rtl.m_initializing;
    if (rtl.isFunction(module.$init)) module.$init();
    // unit initialized
    module.$state=rtl.m_initialized;
  },

  createCallback: function(scope, fn){
    var cb;
    if (typeof(fn)==='string'){
      cb = function(){
        return scope[fn].apply(scope,arguments);
      };
    } else {
      cb = function(){
        return fn.apply(scope,arguments);
      };
    };
    cb.scope = scope;
    cb.fn = fn;
    return cb;
  },

  cloneCallback: function(cb){
    return rtl.createCallback(cb.scope,cb.fn);
  },

  eqCallback: function(a,b){
    // can be a function or a function wrapper
    if (a==b){
      return true;
    } else {
      return (a!=null) && (b!=null) && (a.fn) && (a.scope===b.scope) && (a.fn==b.fn);
    }
  },

  initClass: function(c,parent,name,initfn){
    parent[name] = c;
    c.$classname = name;
    if ((parent.$module) && (parent.$module.$impl===parent)) parent=parent.$module;
    c.$parent = parent;
    c.$fullname = parent.$name+'.'+name;
    if (rtl.isModule(parent)){
      c.$module = parent;
      c.$name = name;
    } else {
      c.$module = parent.$module;
      c.$name = parent.name+'.'+name;
    };
    // rtti
    if (rtl.debug_rtti) rtl.debug('initClass '+c.$fullname);
    var t = c.$module.$rtti.$Class(c.$name,{ "class": c, module: parent });
    c.$rtti = t;
    if (rtl.isObject(c.$ancestor)) t.ancestor = c.$ancestor.$rtti;
    if (!t.ancestor) t.ancestor = null;
    // init members
    initfn.call(c);
  },

  createClass: function(parent,name,ancestor,initfn){
    // create a normal class,
    // ancestor must be null or a normal class,
    // the root ancestor can be an external class
    var c = null;
    if (ancestor != null){
      c = Object.create(ancestor);
      c.$ancestor = ancestor;
      // Note:
      // if root is an "object" then c.$ancestor === Object.getPrototypeOf(c)
      // if root is a "function" then c.$ancestor === c.__proto__, Object.getPrototypeOf(c) returns the root
    } else {
      c = {};
      c.$create = function(fnname,args){
        if (args == undefined) args = [];
        var o = Object.create(this);
        o.$class = this; // Note: o.$class === Object.getPrototypeOf(o)
        o.$init();
        try{
          o[fnname].apply(o,args);
          o.AfterConstruction();
        } catch($e){
          o.$destroy;
          throw $e;
        }
        return o;
      };
      c.$destroy = function(fnname){
        this.BeforeDestruction();
        this[fnname]();
        this.$final;
      };
    };
    rtl.initClass(c,parent,name,initfn);
  },

  createClassExt: function(parent,name,ancestor,newinstancefnname,initfn){
    // Create a class using an external ancestor.
    // If newinstancefnname is given, use that function to create the new object.
    // If exist call BeforeDestruction and AfterConstruction.
    var c = null;
    c = Object.create(ancestor);
    c.$create = function(fnname,args){
      if (args == undefined) args = [];
      var o = null;
      if (newinstancefnname.length>0){
        o = this[newinstancefnname](fnname,args);
      } else {
        o = Object.create(this);
      }
      o.$class = this; // Note: o.$class === Object.getPrototypeOf(o)
      o.$init();
      try{
        o[fnname].apply(o,args);
        if (o.AfterConstruction) o.AfterConstruction();
      } catch($e){
        o.$destroy;
        throw $e;
      }
      return o;
    };
    c.$destroy = function(fnname){
      if (this.BeforeDestruction) this.BeforeDestruction();
      this[fnname]();
      this.$final;
    };
    rtl.initClass(c,parent,name,initfn);
  },

  tObjectDestroy: "Destroy",

  free: function(obj,name){
    if (obj[name]==null) return;
    obj[name].$destroy(rtl.tObjectDestroy);
    obj[name]=null;
  },

  freeLoc: function(obj){
    if (obj==null) return;
    obj.$destroy(rtl.tObjectDestroy);
    return null;
  },

  is: function(instance,type){
    return type.isPrototypeOf(instance) || (instance===type);
  },

  isExt: function(instance,type,mode){
    // mode===1 means instance must be a Pascal class instance
    // mode===2 means instance must be a Pascal class
    // Notes:
    // isPrototypeOf and instanceof return false on equal
    // isPrototypeOf does not work for Date.isPrototypeOf(new Date())
    //   so if isPrototypeOf is false test with instanceof
    // instanceof needs a function on right side
    if (instance == null) return false; // Note: ==null checks for undefined too
    if ((typeof(type) !== 'object') && (typeof(type) !== 'function')) return false;
    if (instance === type){
      if (mode===1) return false;
      if (mode===2) return rtl.isPasClass(instance);
      return true;
    }
    if (type.isPrototypeOf && type.isPrototypeOf(instance)){
      if (mode===1) return rtl.isPasClassInstance(instance);
      if (mode===2) return rtl.isPasClass(instance);
      return true;
    }
    if ((typeof type == 'function') && (instance instanceof type)) return true;
    return false;
  },

  Exception: null,
  EInvalidCast: null,
  EAbstractError: null,
  ERangeError: null,

  raiseE: function(typename){
    var t = rtl[typename];
    if (t==null){
      var mod = pas.SysUtils;
      if (!mod) mod = pas.sysutils;
      if (mod){
        t = mod[typename];
        if (!t) t = mod[typename.toLowerCase()];
        if (!t) t = mod['Exception'];
        if (!t) t = mod['exception'];
      }
    }
    if (t){
      if (t.Create){
        throw t.$create("Create");
      } else if (t.create){
        throw t.$create("create");
      }
    }
    if (typename === "EInvalidCast") throw "invalid type cast";
    if (typename === "EAbstractError") throw "Abstract method called";
    if (typename === "ERangeError") throw "range error";
    throw typename;
  },

  as: function(instance,type){
    if((instance === null) || rtl.is(instance,type)) return instance;
    rtl.raiseE("EInvalidCast");
  },

  asExt: function(instance,type,mode){
    if((instance === null) || rtl.isExt(instance,type,mode)) return instance;
    rtl.raiseE("EInvalidCast");
  },

  createInterface: function(module, name, guid, fnnames, ancestor, initfn){
    //console.log('createInterface name="'+name+'" guid="'+guid+'" names='+fnnames);
    var i = ancestor?Object.create(ancestor):{};
    module[name] = i;
    i.$module = module;
    i.$name = name;
    i.$fullname = module.$name+'.'+name;
    i.$guid = guid;
    i.$guidr = null;
    i.$names = fnnames?fnnames:[];
    if (rtl.isFunction(initfn)){
      // rtti
      if (rtl.debug_rtti) rtl.debug('createInterface '+i.$fullname);
      var t = i.$module.$rtti.$Interface(name,{ "interface": i, module: module });
      i.$rtti = t;
      if (ancestor) t.ancestor = ancestor.$rtti;
      if (!t.ancestor) t.ancestor = null;
      initfn.call(i);
    }
    return i;
  },

  strToGUIDR: function(s,g){
    var p = 0;
    function n(l){
      var h = s.substr(p,l);
      p+=l;
      return parseInt(h,16);
    }
    p+=1; // skip {
    g.D1 = n(8);
    p+=1; // skip -
    g.D2 = n(4);
    p+=1; // skip -
    g.D3 = n(4);
    p+=1; // skip -
    if (!g.D4) g.D4=[];
    g.D4[0] = n(2);
    g.D4[1] = n(2);
    p+=1; // skip -
    for(var i=2; i<8; i++) g.D4[i] = n(2);
    return g;
  },

  guidrToStr: function(g){
    if (g.$intf) return g.$intf.$guid;
    var h = rtl.hexStr;
    var s='{'+h(g.D1,8)+'-'+h(g.D2,4)+'-'+h(g.D3,4)+'-'+h(g.D4[0],2)+h(g.D4[1],2)+'-';
    for (var i=2; i<8; i++) s+=h(g.D4[i],2);
    s+='}';
    return s;
  },

  createTGUID: function(guid){
    var TGuid = (pas.System)?pas.System.TGuid:pas.system.tguid;
    var g = rtl.strToGUIDR(guid,new TGuid());
    return g;
  },

  getIntfGUIDR: function(intfTypeOrVar){
    if (!intfTypeOrVar) return null;
    if (!intfTypeOrVar.$guidr){
      var g = rtl.createTGUID(intfTypeOrVar.$guid);
      if (!intfTypeOrVar.hasOwnProperty('$guid')) intfTypeOrVar = Object.getPrototypeOf(intfTypeOrVar);
      g.$intf = intfTypeOrVar;
      intfTypeOrVar.$guidr = g;
    }
    return intfTypeOrVar.$guidr;
  },

  addIntf: function (aclass, intf, map){
    function jmp(fn){
      if (typeof(fn)==="function"){
        return function(){ return fn.apply(this.$o,arguments); };
      } else {
        return function(){ rtl.raiseE('EAbstractError'); };
      }
    }
    if(!map) map = {};
    var t = intf;
    var item = Object.create(t);
    aclass.$intfmaps[intf.$guid] = item;
    do{
      var names = t.$names;
      if (!names) break;
      for (var i=0; i<names.length; i++){
        var intfname = names[i];
        var fnname = map[intfname];
        if (!fnname) fnname = intfname;
        //console.log('addIntf: intftype='+t.$name+' index='+i+' intfname="'+intfname+'" fnname="'+fnname+'" proc='+typeof(fn));
        item[intfname] = jmp(aclass[fnname]);
      }
      t = Object.getPrototypeOf(t);
    }while(t!=null);
  },

  getIntfG: function (obj, guid, query){
    if (!obj) return null;
    //console.log('getIntfG: obj='+obj.$classname+' guid='+guid+' query='+query);
    // search
    var maps = obj.$intfmaps;
    if (!maps) return null;
    var item = maps[guid];
    if (!item) return null;
    // check delegation
    //console.log('getIntfG: obj='+obj.$classname+' guid='+guid+' query='+query+' item='+typeof(item));
    if (typeof item === 'function') return item.call(obj); // COM: contains _AddRef
    // check cache
    var intf = null;
    if (obj.$interfaces){
      intf = obj.$interfaces[guid];
      //console.log('getIntfG: obj='+obj.$classname+' guid='+guid+' cache='+typeof(intf));
    }
    if (!intf){ // intf can be undefined!
      intf = Object.create(item);
      intf.$o = obj;
      if (!obj.$interfaces) obj.$interfaces = {};
      obj.$interfaces[guid] = intf;
    }
    if (typeof(query)==='object'){
      // called by queryIntfT
      var o = null;
      if (intf.QueryInterface(rtl.getIntfGUIDR(query),
          {get:function(){ return o; }, set:function(v){ o=v; }}) === 0){
        return o;
      } else {
        return null;
      }
    } else if(query===2){
      // called by TObject.GetInterfaceByStr
      if (intf.$kind === 'com') intf._AddRef();
    }
    return intf;
  },

  getIntfT: function(obj,intftype){
    return rtl.getIntfG(obj,intftype.$guid);
  },

  queryIntfT: function(obj,intftype){
    return rtl.getIntfG(obj,intftype.$guid,intftype);
  },

  queryIntfIsT: function(obj,intftype){
    var i = rtl.queryIntfG(obj,intftype.$guid);
    if (!i) return false;
    if (i.$kind === 'com') i._Release();
    return true;
  },

  asIntfT: function (obj,intftype){
    var i = rtl.getIntfG(obj,intftype.$guid);
    if (i!==null) return i;
    rtl.raiseEInvalidCast();
  },

  intfIsClass: function(intf,classtype){
    return (intf!=null) && (rtl.is(intf.$o,classtype));
  },

  intfAsClass: function(intf,classtype){
    if (intf==null) return null;
    return rtl.as(intf.$o,classtype);
  },

  intfToClass: function(intf,classtype){
    if ((intf!==null) && rtl.is(intf.$o,classtype)) return intf.$o;
    return null;
  },

  // interface reference counting
  intfRefs: { // base object for temporary interface variables
    ref: function(id,intf){
      // called for temporary interface references needing delayed release
      var old = this[id];
      //console.log('rtl.intfRefs.ref: id='+id+' old="'+(old?old.$name:'null')+'" intf="'+(intf?intf.$name:'null'));
      if (old){
        // called again, e.g. in a loop
        delete this[id];
        old._Release(); // may fail
      }
      this[id]=intf;
      return intf;
    },
    free: function(){
      //console.log('rtl.intfRefs.free...');
      for (var id in this){
        if (this.hasOwnProperty(id)) this[id]._Release;
      }
    }
  },

  createIntfRefs: function(){
    //console.log('rtl.createIntfRefs');
    return Object.create(rtl.intfRefs);
  },

  setIntfP: function(path,name,value,skipAddRef){
    var old = path[name];
    //console.log('rtl.setIntfP path='+path+' name='+name+' old="'+(old?old.$name:'null')+'" value="'+(value?value.$name:'null')+'"');
    if (old === value) return;
    if (old !== null){
      path[name]=null;
      old._Release();
    }
    if (value !== null){
      if (!skipAddRef) value._AddRef();
      path[name]=value;
    }
  },

  setIntfL: function(old,value,skipAddRef){
    //console.log('rtl.setIntfL old="'+(old?old.$name:'null')+'" value="'+(value?value.$name:'null')+'"');
    if (old !== value){
      if (value!==null){
        if (!skipAddRef) value._AddRef();
      }
      if (old!==null){
        old._Release();  // Release after AddRef, to avoid double Release if Release creates an exception
      }
    } else if (skipAddRef){
      if (old!==null){
        old._Release();  // value has an AddRef
      }
    }
    return value;
  },

  _AddRef: function(intf){
    //if (intf) console.log('rtl._AddRef intf="'+(intf?intf.$name:'null')+'"');
    if (intf) intf._AddRef();
    return intf;
  },

  _Release: function(intf){
    //if (intf) console.log('rtl._Release intf="'+(intf?intf.$name:'null')+'"');
    if (intf) intf._Release();
    return intf;
  },

  checkMethodCall: function(obj,type){
    if (rtl.isObject(obj) && rtl.is(obj,type)) return;
    rtl.raiseE("EInvalidCast");
  },

  rc: function(i,minval,maxval){
    // range check integer
    if ((Math.floor(i)===i) && (i>=minval) && (i<=maxval)) return i;
    rtl.raiseE('ERangeError');
  },

  rcc: function(c,minval,maxval){
    // range check char
    if ((typeof(c)==='string') && (c.length===1)){
      var i = c.charCodeAt(0);
      if ((i>=minval) && (i<=maxval)) return c;
    }
    rtl.raiseE('ERangeError');
  },

  rcSetCharAt: function(s,index,c){
    // range check setCharAt
    if ((typeof(s)!=='string') || (index<0) || (index>=s.length)) rtl.raiseE('ERangeError');
    return rtl.setCharAt(s,index,c);
  },

  rcCharAt: function(s,index){
    // range check charAt
    if ((typeof(s)!=='string') || (index<0) || (index>=s.length)) rtl.raiseE('ERangeError');
    return s.charAt(index);
  },

  rcArrR: function(arr,index){
    // range check read array
    if (Array.isArray(arr) && (typeof(index)==='number') && (index>=0) && (index<arr.length)){
      if (arguments.length>2){
        // arr,index1,index2,...
        arr=arr[index];
        for (var i=2; i<arguments.length; i++) arr=rtl.rcArrR(arr,arguments[i]);
        return arr;
      }
      return arr[index];
    }
    rtl.raiseE('ERangeError');
  },

  rcArrW: function(arr,index,value){
    // range check write array
    // arr,index1,index2,...,value
    for (var i=3; i<arguments.length; i++){
      arr=rtl.rcArrR(arr,index);
      index=arguments[i-1];
      value=arguments[i];
    }
    if (Array.isArray(arr) && (typeof(index)==='number') && (index>=0) && (index<arr.length)){
      return arr[index]=value;
    }
    rtl.raiseE('ERangeError');
  },

  length: function(arr){
    return (arr == null) ? 0 : arr.length;
  },

  arraySetLength: function(arr,defaultvalue,newlength){
    // multi dim: (arr,defaultvalue,dim1,dim2,...)
    if (arr == null) arr = [];
    var p = arguments;
    function setLength(a,argNo){
      var oldlen = a.length;
      var newlen = p[argNo];
      if (oldlen!==newlength){
        a.length = newlength;
        if (argNo === p.length-1){
          if (rtl.isArray(defaultvalue)){
            for (var i=oldlen; i<newlen; i++) a[i]=[]; // nested array
          } else if (rtl.isFunction(defaultvalue)){
            for (var i=oldlen; i<newlen; i++) a[i]=new defaultvalue(); // e.g. record
          } else if (rtl.isObject(defaultvalue)) {
            for (var i=oldlen; i<newlen; i++) a[i]={}; // e.g. set
          } else {
            for (var i=oldlen; i<newlen; i++) a[i]=defaultvalue;
          }
        } else {
          for (var i=oldlen; i<newlen; i++) a[i]=[]; // nested array
        }
      }
      if (argNo < p.length-1){
        // multi argNo
        for (var i=0; i<newlen; i++) a[i]=setLength(a[i],argNo+1);
      }
      return a;
    }
    return setLength(arr,2);
  },

  arrayEq: function(a,b){
    if (a===null) return b===null;
    if (b===null) return false;
    if (a.length!==b.length) return false;
    for (var i=0; i<a.length; i++) if (a[i]!==b[i]) return false;
    return true;
  },

  arrayClone: function(type,src,srcpos,end,dst,dstpos){
    // type: 0 for references, "refset" for calling refSet(), a function for new type()
    // src must not be null
    // This function does not range check.
    if (rtl.isFunction(type)){
      for (; srcpos<end; srcpos++) dst[dstpos++] = new type(src[srcpos]); // clone record
    } else if((typeof(type)==="string") && (type === 'refSet')) {
      for (; srcpos<end; srcpos++) dst[dstpos++] = rtl.refSet(src[srcpos]); // ref set
    }  else {
      for (; srcpos<end; srcpos++) dst[dstpos++] = src[srcpos]; // reference
    };
  },

  arrayConcat: function(type){
    // type: see rtl.arrayClone
    var a = [];
    var l = 0;
    for (var i=1; i<arguments.length; i++) l+=arguments[i].length;
    a.length = l;
    l=0;
    for (var i=1; i<arguments.length; i++){
      var src = arguments[i];
      if (src == null) continue;
      rtl.arrayClone(type,src,0,src.length,a,l);
      l+=src.length;
    };
    return a;
  },

  arrayCopy: function(type, srcarray, index, count){
    // type: see rtl.arrayClone
    // if count is missing, use srcarray.length
    if (srcarray == null) return [];
    if (index < 0) index = 0;
    if (count === undefined) count=srcarray.length;
    var end = index+count;
    if (end>srcarray.length) end = srcarray.length;
    if (index>=end) return [];
    if (type===0){
      return srcarray.slice(index,end);
    } else {
      var a = [];
      a.length = end-index;
      rtl.arrayClone(type,srcarray,index,end,a,0);
      return a;
    }
  },

  setCharAt: function(s,index,c){
    return s.substr(0,index)+c+s.substr(index+1);
  },

  getResStr: function(mod,name){
    var rs = mod.$resourcestrings[name];
    return rs.current?rs.current:rs.org;
  },

  createSet: function(){
    var s = {};
    for (var i=0; i<arguments.length; i++){
      if (arguments[i]!=null){
        s[arguments[i]]=true;
      } else {
        var first=arguments[i+=1];
        var last=arguments[i+=1];
        for(var j=first; j<=last; j++) s[j]=true;
      }
    }
    return s;
  },

  cloneSet: function(s){
    var r = {};
    for (var key in s) r[key]=true;
    return r;
  },

  refSet: function(s){
    s.$shared = true;
    return s;
  },

  includeSet: function(s,enumvalue){
    if (s.$shared) s = rtl.cloneSet(s);
    s[enumvalue] = true;
    return s;
  },

  excludeSet: function(s,enumvalue){
    if (s.$shared) s = rtl.cloneSet(s);
    delete s[enumvalue];
    return s;
  },

  diffSet: function(s,t){
    var r = {};
    for (var key in s) if (!t[key]) r[key]=true;
    delete r.$shared;
    return r;
  },

  unionSet: function(s,t){
    var r = {};
    for (var key in s) r[key]=true;
    for (var key in t) r[key]=true;
    delete r.$shared;
    return r;
  },

  intersectSet: function(s,t){
    var r = {};
    for (var key in s) if (t[key]) r[key]=true;
    delete r.$shared;
    return r;
  },

  symDiffSet: function(s,t){
    var r = {};
    for (var key in s) if (!t[key]) r[key]=true;
    for (var key in t) if (!s[key]) r[key]=true;
    delete r.$shared;
    return r;
  },

  eqSet: function(s,t){
    for (var key in s) if (!t[key] && (key!='$shared')) return false;
    for (var key in t) if (!s[key] && (key!='$shared')) return false;
    return true;
  },

  neSet: function(s,t){
    return !rtl.eqSet(s,t);
  },

  leSet: function(s,t){
    for (var key in s) if (!t[key] && (key!='$shared')) return false;
    return true;
  },

  geSet: function(s,t){
    for (var key in t) if (!s[key] && (key!='$shared')) return false;
    return true;
  },

  strSetLength: function(s,newlen){
    var oldlen = s.length;
    if (oldlen > newlen){
      return s.substring(0,newlen);
    } else if (s.repeat){
      // Note: repeat needs ECMAScript6!
      return s+' '.repeat(newlen-oldlen);
    } else {
       while (oldlen<newlen){
         s+=' ';
         oldlen++;
       };
       return s;
    }
  },

  spaceLeft: function(s,width){
    var l=s.length;
    if (l>=width) return s;
    if (s.repeat){
      // Note: repeat needs ECMAScript6!
      return ' '.repeat(width-l) + s;
    } else {
      while (l<width){
        s=' '+s;
        l++;
      };
    };
  },

  floatToStr : function(d,w,p){
    // input 1-3 arguments: double, width, precision
    if (arguments.length>2){
      return rtl.spaceLeft(d.toFixed(p),w);
    } else {
	  // exponent width
	  var pad = "";
	  var ad = Math.abs(d);
	  if (ad<1.0e+10) {
		pad='00';
	  } else if (ad<1.0e+100) {
		pad='0';
      }  	
	  if (arguments.length<2) {
	    w=9;		
      } else if (w<9) {
		w=9;
      }		  
      var p = w-8;
      var s=(d>0 ? " " : "" ) + d.toExponential(p);
      s=s.replace(/e(.)/,'E$1'+pad);
      return rtl.spaceLeft(s,w);
    }
  },

  initRTTI: function(){
    if (rtl.debug_rtti) rtl.debug('initRTTI');

    // base types
    rtl.tTypeInfo = { name: "tTypeInfo" };
    function newBaseTI(name,kind,ancestor){
      if (!ancestor) ancestor = rtl.tTypeInfo;
      if (rtl.debug_rtti) rtl.debug('initRTTI.newBaseTI "'+name+'" '+kind+' ("'+ancestor.name+'")');
      var t = Object.create(ancestor);
      t.name = name;
      t.kind = kind;
      rtl[name] = t;
      return t;
    };
    function newBaseInt(name,minvalue,maxvalue,ordtype){
      var t = newBaseTI(name,1 /* tkInteger */,rtl.tTypeInfoInteger);
      t.minvalue = minvalue;
      t.maxvalue = maxvalue;
      t.ordtype = ordtype;
      return t;
    };
    newBaseTI("tTypeInfoInteger",1 /* tkInteger */);
    newBaseInt("shortint",-0x80,0x7f,0);
    newBaseInt("byte",0,0xff,1);
    newBaseInt("smallint",-0x8000,0x7fff,2);
    newBaseInt("word",0,0xffff,3);
    newBaseInt("longint",-0x80000000,0x7fffffff,4);
    newBaseInt("longword",0,0xffffffff,5);
    newBaseInt("nativeint",-0x10000000000000,0xfffffffffffff,6);
    newBaseInt("nativeuint",0,0xfffffffffffff,7);
    newBaseTI("char",2 /* tkChar */);
    newBaseTI("string",3 /* tkString */);
    newBaseTI("tTypeInfoEnum",4 /* tkEnumeration */,rtl.tTypeInfoInteger);
    newBaseTI("tTypeInfoSet",5 /* tkSet */);
    newBaseTI("double",6 /* tkDouble */);
    newBaseTI("boolean",7 /* tkBool */);
    newBaseTI("tTypeInfoProcVar",8 /* tkProcVar */);
    newBaseTI("tTypeInfoMethodVar",9 /* tkMethod */,rtl.tTypeInfoProcVar);
    newBaseTI("tTypeInfoArray",10 /* tkArray */);
    newBaseTI("tTypeInfoDynArray",11 /* tkDynArray */);
    newBaseTI("tTypeInfoPointer",15 /* tkPointer */);
    var t = newBaseTI("pointer",15 /* tkPointer */,rtl.tTypeInfoPointer);
    t.reftype = null;
    newBaseTI("jsvalue",16 /* tkJSValue */);
    newBaseTI("tTypeInfoRefToProcVar",17 /* tkRefToProcVar */,rtl.tTypeInfoProcVar);

    // member kinds
    rtl.tTypeMember = {};
    function newMember(name,kind){
      var m = Object.create(rtl.tTypeMember);
      m.name = name;
      m.kind = kind;
      rtl[name] = m;
    };
    newMember("tTypeMemberField",1); // tmkField
    newMember("tTypeMemberMethod",2); // tmkMethod
    newMember("tTypeMemberProperty",3); // tmkProperty

    // base object for storing members: a simple object
    rtl.tTypeMembers = {};

    // tTypeInfoStruct - base object for tTypeInfoClass, tTypeInfoRecord, tTypeInfoInterface
    var tis = newBaseTI("tTypeInfoStruct",0);
    tis.$addMember = function(name,ancestor,options){
      if (rtl.debug_rtti){
        if (!rtl.hasString(name) || (name.charAt()==='$')) throw 'invalid member "'+name+'", this="'+this.name+'"';
        if (!rtl.is(ancestor,rtl.tTypeMember)) throw 'invalid ancestor "'+ancestor+':'+ancestor.name+'", "'+this.name+'.'+name+'"';
        if ((options!=undefined) && (typeof(options)!='object')) throw 'invalid options "'+options+'", "'+this.name+'.'+name+'"';
      };
      var t = Object.create(ancestor);
      t.name = name;
      this.members[name] = t;
      this.names.push(name);
      if (rtl.isObject(options)){
        for (var key in options) if (options.hasOwnProperty(key)) t[key] = options[key];
      };
      return t;
    };
    tis.addField = function(name,type,options){
      var t = this.$addMember(name,rtl.tTypeMemberField,options);
      if (rtl.debug_rtti){
        if (!rtl.is(type,rtl.tTypeInfo)) throw 'invalid type "'+type+'", "'+this.name+'.'+name+'"';
      };
      t.typeinfo = type;
      this.fields.push(name);
      return t;
    };
    tis.addFields = function(){
      var i=0;
      while(i<arguments.length){
        var name = arguments[i++];
        var type = arguments[i++];
        if ((i<arguments.length) && (typeof(arguments[i])==='object')){
          this.addField(name,type,arguments[i++]);
        } else {
          this.addField(name,type);
        };
      };
    };
    tis.addMethod = function(name,methodkind,params,result,options){
      var t = this.$addMember(name,rtl.tTypeMemberMethod,options);
      t.methodkind = methodkind;
      t.procsig = rtl.newTIProcSig(params);
      t.procsig.resulttype = result?result:null;
      this.methods.push(name);
      return t;
    };
    tis.addProperty = function(name,flags,result,getter,setter,options){
      var t = this.$addMember(name,rtl.tTypeMemberProperty,options);
      t.flags = flags;
      t.typeinfo = result;
      t.getter = getter;
      t.setter = setter;
      // Note: in options: params, stored, defaultvalue
      if (rtl.isArray(t.params)) t.params = rtl.newTIParams(t.params);
      this.properties.push(name);
      if (!rtl.isString(t.stored)) t.stored = "";
      return t;
    };
    tis.getField = function(index){
      return this.members[this.fields[index]];
    };
    tis.getMethod = function(index){
      return this.members[this.methods[index]];
    };
    tis.getProperty = function(index){
      return this.members[this.properties[index]];
    };

    newBaseTI("tTypeInfoRecord",12 /* tkRecord */,rtl.tTypeInfoStruct);
    newBaseTI("tTypeInfoClass",13 /* tkClass */,rtl.tTypeInfoStruct);
    newBaseTI("tTypeInfoClassRef",14 /* tkClassRef */);
    newBaseTI("tTypeInfoInterface",15 /* tkInterface */,rtl.tTypeInfoStruct);
  },

  tSectionRTTI: {
    $module: null,
    $inherited: function(name,ancestor,o){
      if (rtl.debug_rtti){
        rtl.debug('tSectionRTTI.newTI "'+(this.$module?this.$module.$name:"(no module)")
          +'"."'+name+'" ('+ancestor.name+') '+(o?'init':'forward'));
      };
      var t = this[name];
      if (t){
        if (!t.$forward) throw 'duplicate type "'+name+'"';
        if (!ancestor.isPrototypeOf(t)) throw 'typeinfo ancestor mismatch "'+name+'" ancestor="'+ancestor.name+'" t.name="'+t.name+'"';
      } else {
        t = Object.create(ancestor);
        t.name = name;
        t.$module = this.$module;
        this[name] = t;
      }
      if (o){
        delete t.$forward;
        for (var key in o) if (o.hasOwnProperty(key)) t[key]=o[key];
      } else {
        t.$forward = true;
      }
      return t;
    },
    $Scope: function(name,ancestor,o){
      var t=this.$inherited(name,ancestor,o);
      t.members = {};
      t.names = [];
      t.fields = [];
      t.methods = [];
      t.properties = [];
      return t;
    },
    $TI: function(name,kind,o){ var t=this.$inherited(name,rtl.tTypeInfo,o); t.kind = kind; return t; },
    $Int: function(name,o){ return this.$inherited(name,rtl.tTypeInfoInteger,o); },
    $Enum: function(name,o){ return this.$inherited(name,rtl.tTypeInfoEnum,o); },
    $Set: function(name,o){ return this.$inherited(name,rtl.tTypeInfoSet,o); },
    $StaticArray: function(name,o){ return this.$inherited(name,rtl.tTypeInfoArray,o); },
    $DynArray: function(name,o){ return this.$inherited(name,rtl.tTypeInfoDynArray,o); },
    $ProcVar: function(name,o){ return this.$inherited(name,rtl.tTypeInfoProcVar,o); },
    $RefToProcVar: function(name,o){ return this.$inherited(name,rtl.tTypeInfoRefToProcVar,o); },
    $MethodVar: function(name,o){ return this.$inherited(name,rtl.tTypeInfoMethodVar,o); },
    $Record: function(name,o){ return this.$Scope(name,rtl.tTypeInfoRecord,o); },
    $Class: function(name,o){ return this.$Scope(name,rtl.tTypeInfoClass,o); },
    $ClassRef: function(name,o){ return this.$inherited(name,rtl.tTypeInfoClassRef,o); },
    $Pointer: function(name,o){ return this.$inherited(name,rtl.tTypeInfoPointer,o); },
    $Interface: function(name,o){ return this.$Scope(name,rtl.tTypeInfoInterface,o); }
  },

  newTIParam: function(param){
    // param is an array, 0=name, 1=type, 2=optional flags
    var t = {
      name: param[0],
      typeinfo: param[1],
      flags: (rtl.isNumber(param[2]) ? param[2] : 0)
    };
    return t;
  },

  newTIParams: function(list){
    // list: optional array of [paramname,typeinfo,optional flags]
    var params = [];
    if (rtl.isArray(list)){
      for (var i=0; i<list.length; i++) params.push(rtl.newTIParam(list[i]));
    };
    return params;
  },

  newTIProcSig: function(params,result,flags){
    var s = {
      params: rtl.newTIParams(params),
      resulttype: result,
      flags: flags
    };
    return s;
  }
}
rtl.module("System",[],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  this.MaxLongint = 0x7fffffff;
  this.Maxint = 2147483647;
  rtl.createClass($mod,"TObject",null,function () {
    this.$init = function () {
    };
    this.$final = function () {
    };
    this.Create = function () {
    };
    this.Destroy = function () {
    };
    this.Free = function () {
      this.$destroy("Destroy");
    };
    this.AfterConstruction = function () {
    };
    this.BeforeDestruction = function () {
    };
  });
  this.Trunc = function (A) {
    if (!Math.trunc) {
      Math.trunc = function(v) {
        v = +v;
        if (!isFinite(v)) return v;
        return (v - v % 1) || (v < 0 ? -0 : v === 0 ? v : 0);
      };
    }
    $mod.Trunc = Math.trunc;
    return Math.trunc(A);
  };
  this.Int = function (A) {
    var Result = 0.0;
    Result = Math.trunc(A);
    return Result;
  };
  this.Copy = function (S, Index, Size) {
    if (Index<1) Index = 1;
    return (Size>0) ? S.substring(Index-1,Index+Size-1) : "";
  };
  this.Copy$1 = function (S, Index) {
    if (Index<1) Index = 1;
    return S.substr(Index-1);
  };
  this.Delete = function (S, Index, Size) {
    var h = "";
    if (((Index < 1) || (Index > S.get().length)) || (Size <= 0)) return;
    h = S.get();
    S.set($mod.Copy(h,1,Index - 1) + $mod.Copy$1(h,Index + Size));
  };
  this.Pos = function (Search, InString) {
    return InString.indexOf(Search)+1;
  };
  this.Insert = function (Insertion, Target, Index) {
    var t = "";
    if (Insertion === "") return;
    t = Target.get();
    if (Index < 1) {
      Target.set(Insertion + t)}
     else if (Index > t.length) {
      Target.set(t + Insertion)}
     else Target.set(($mod.Copy(t,1,Index - 1) + Insertion) + $mod.Copy(t,Index,t.length));
  };
  this.upcase = function (c) {
    return c.toUpperCase();
  };
  this.val = function (S, NI, Code) {
    var x = 0.0;
    Code.set(0);
    x = Number(S);
    if (isNaN(x) || (x !== $mod.Int(x))) {
      Code.set(1)}
     else NI.set($mod.Trunc(x));
  };
  this.StringOfChar = function (c, l) {
    var Result = "";
    var i = 0;
    Result = "";
    for (var $l1 = 1, $end2 = l; $l1 <= $end2; $l1++) {
      i = $l1;
      Result = Result + c;
    };
    return Result;
  };
  this.Writeln = function () {
    var i = 0;
    var l = 0;
    var s = "";
    l = rtl.length(arguments) - 1;
    if ($impl.WriteCallBack != null) {
      for (var $l1 = 0, $end2 = l; $l1 <= $end2; $l1++) {
        i = $l1;
        $impl.WriteCallBack(arguments[i],i === l);
      };
    } else {
      s = $impl.WriteBuf;
      for (var $l3 = 0, $end4 = l; $l3 <= $end4; $l3++) {
        i = $l3;
        s = s + ("" + arguments[i]);
      };
      console.log(s);
      $impl.WriteBuf = "";
    };
  };
  this.Assigned = function (V) {
    return (V!=undefined) && (V!=null) && (!rtl.isArray(V) || (V.length > 0));
  };
  $mod.$init = function () {
    rtl.exitcode = 0;
  };
},null,function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  $impl.WriteBuf = "";
  $impl.WriteCallBack = null;
});
rtl.module("Types",["System"],function () {
  "use strict";
  var $mod = this;
  this.TDirection = {"0": "FromBeginning", FromBeginning: 0, "1": "FromEnd", FromEnd: 1};
});
rtl.module("JS",["System","Types"],function () {
  "use strict";
  var $mod = this;
  this.isBoolean = function (v) {
    return typeof(v) == 'boolean';
  };
  this.isInteger = function (v) {
    return Math.floor(v)===v;
  };
  this.isNull = function (v) {
    return v === null;
  };
  this.isUndefined = function (v) {
    return v == undefined;
  };
  this.toNumber = function (v) {
    return v-0;
  };
  this.TJSValueType = {"0": "jvtNull", jvtNull: 0, "1": "jvtBoolean", jvtBoolean: 1, "2": "jvtInteger", jvtInteger: 2, "3": "jvtFloat", jvtFloat: 3, "4": "jvtString", jvtString: 4, "5": "jvtObject", jvtObject: 5, "6": "jvtArray", jvtArray: 6};
  this.GetValueType = function (JS) {
    var Result = 0;
    var t = "";
    if ($mod.isNull(JS)) {
      Result = 0}
     else {
      t = typeof(JS);
      if (t === "string") {
        Result = 4}
       else if (t === "boolean") {
        Result = 1}
       else if (t === "object") {
        if (rtl.isArray(JS)) {
          Result = 6}
         else Result = 5;
      } else if (t === "number") if ($mod.isInteger(JS)) {
        Result = 2}
       else Result = 3;
    };
    return Result;
  };
});
rtl.module("RTLConsts",["System"],function () {
  "use strict";
  var $mod = this;
  this.SArgumentMissing = 'Missing argument in format "%s"';
  this.SInvalidFormat = 'Invalid format specifier : "%s"';
  this.SInvalidArgIndex = 'Invalid argument index in format: "%s"';
  this.SListCapacityError = "List capacity (%s) exceeded.";
  this.SListCountError = "List count (%s) out of bounds.";
  this.SListIndexError = "List index (%s) out of bounds";
  this.SInvalidName = 'Invalid component name: "%s"';
  this.SDuplicateName = 'Duplicate component name: "%s"';
  this.SErrInvalidInteger = 'Invalid integer value: "%s"';
});
rtl.module("SysUtils",["System","RTLConsts","JS"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  this.FreeAndNil = function (Obj) {
    var o = null;
    o = Obj.get();
    if (o === null) return;
    Obj.set(null);
    o.$destroy("Destroy");
  };
  rtl.createClass($mod,"Exception",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.fMessage = "";
    };
    this.Create$1 = function (Msg) {
      this.fMessage = Msg;
    };
    this.CreateFmt = function (Msg, Args) {
      this.fMessage = $mod.Format(Msg,Args);
    };
  });
  rtl.createClass($mod,"EAbort",$mod.Exception,function () {
  });
  rtl.createClass($mod,"EConvertError",$mod.Exception,function () {
  });
  this.Trim = function (S) {
    return S.trim();
  };
  this.TrimLeft = function (S) {
    return S.replace(/^[\s\uFEFF\xA0\x00-\x1f]+/,'');
  };
  this.UpperCase = function (s) {
    return s.toUpperCase();
  };
  this.LowerCase = function (s) {
    return s.toLowerCase();
  };
  this.CompareText = function (s1, s2) {
    var l1 = s1.toLowerCase();
    var l2 = s2.toLowerCase();
    if (l1>l2){ return 1;
    } else if (l1<l2){ return -1;
    } else { return 0; };
  };
  this.SameText = function (s1, s2) {
    return s1.toLowerCase() == s2.toLowerCase();
  };
  this.AnsiSameText = function (s1, s2) {
    return s1.localeCompare(s2) == 0;
  };
  this.Format = function (Fmt, Args) {
    var Result = "";
    var ChPos = 0;
    var OldPos = 0;
    var ArgPos = 0;
    var DoArg = 0;
    var Len = 0;
    var Hs = "";
    var ToAdd = "";
    var Index = 0;
    var Width = 0;
    var Prec = 0;
    var Left = false;
    var Fchar = "";
    var vq = 0;
    function ReadFormat() {
      var Result = "";
      var Value = 0;
      function ReadInteger() {
        var Code = 0;
        var ArgN = 0;
        if (Value !== -1) return;
        OldPos = ChPos;
        while (((ChPos <= Len) && (Fmt.charAt(ChPos - 1) <= "9")) && (Fmt.charAt(ChPos - 1) >= "0")) ChPos += 1;
        if (ChPos > Len) $impl.DoFormatError(1,Fmt);
        if (Fmt.charAt(ChPos - 1) === "*") {
          if (Index === -1) {
            ArgN = ArgPos}
           else {
            ArgN = Index;
            Index += 1;
          };
          if ((ChPos > OldPos) || (ArgN > (rtl.length(Args) - 1))) $impl.DoFormatError(1,Fmt);
          ArgPos = ArgN + 1;
          if (rtl.isNumber(Args[ArgN]) && pas.JS.isInteger(Args[ArgN])) {
            Value = Math.floor(Args[ArgN])}
           else $impl.DoFormatError(1,Fmt);
          ChPos += 1;
        } else {
          if (OldPos < ChPos) {
            pas.System.val(pas.System.Copy(Fmt,OldPos,ChPos - OldPos),{get: function () {
                return Value;
              }, set: function (v) {
                Value = v;
              }},{get: function () {
                return Code;
              }, set: function (v) {
                Code = v;
              }});
            if (Code > 0) $impl.DoFormatError(1,Fmt);
          } else Value = -1;
        };
      };
      function ReadIndex() {
        if (Fmt.charAt(ChPos - 1) !== ":") {
          ReadInteger()}
         else Value = 0;
        if (Fmt.charAt(ChPos - 1) === ":") {
          if (Value === -1) $impl.DoFormatError(2,Fmt);
          Index = Value;
          Value = -1;
          ChPos += 1;
        };
      };
      function ReadLeft() {
        if (Fmt.charAt(ChPos - 1) === "-") {
          Left = true;
          ChPos += 1;
        } else Left = false;
      };
      function ReadWidth() {
        ReadInteger();
        if (Value !== -1) {
          Width = Value;
          Value = -1;
        };
      };
      function ReadPrec() {
        if (Fmt.charAt(ChPos - 1) === ".") {
          ChPos += 1;
          ReadInteger();
          if (Value === -1) Value = 0;
          Prec = Value;
        };
      };
      Index = -1;
      Width = -1;
      Prec = -1;
      Value = -1;
      ChPos += 1;
      if (Fmt.charAt(ChPos - 1) === "%") {
        Result = "%";
        return Result;
      };
      ReadIndex();
      ReadLeft();
      ReadWidth();
      ReadPrec();
      Result = pas.System.upcase(Fmt.charAt(ChPos - 1));
      return Result;
    };
    function Checkarg(AT, err) {
      var Result = false;
      Result = false;
      if (Index === -1) {
        DoArg = ArgPos}
       else DoArg = Index;
      ArgPos = DoArg + 1;
      if ((DoArg > (rtl.length(Args) - 1)) || (pas.JS.GetValueType(Args[DoArg]) !== AT)) {
        if (err) $impl.DoFormatError(3,Fmt);
        ArgPos -= 1;
        return Result;
      };
      Result = true;
      return Result;
    };
    Result = "";
    Len = Fmt.length;
    ChPos = 1;
    OldPos = 1;
    ArgPos = 0;
    while (ChPos <= Len) {
      while ((ChPos <= Len) && (Fmt.charAt(ChPos - 1) !== "%")) ChPos += 1;
      if (ChPos > OldPos) Result = Result + pas.System.Copy(Fmt,OldPos,ChPos - OldPos);
      if (ChPos < Len) {
        Fchar = ReadFormat();
        var $tmp1 = Fchar;
        if ($tmp1 === "D") {
          Checkarg(2,true);
          ToAdd = $mod.IntToStr(Math.floor(Args[DoArg]));
          Width = Math.abs(Width);
          Index = Prec - ToAdd.length;
          if (ToAdd.charAt(0) !== "-") {
            ToAdd = pas.System.StringOfChar("0",Index) + ToAdd}
           else pas.System.Insert(pas.System.StringOfChar("0",Index + 1),{get: function () {
              return ToAdd;
            }, set: function (v) {
              ToAdd = v;
            }},2);
        } else if ($tmp1 === "U") {
          Checkarg(2,true);
          if (Math.floor(Args[DoArg]) < 0) $impl.DoFormatError(3,Fmt);
          ToAdd = $mod.IntToStr(Math.floor(Args[DoArg]));
          Width = Math.abs(Width);
          Index = Prec - ToAdd.length;
          ToAdd = pas.System.StringOfChar("0",Index) + ToAdd;
        } else if ($tmp1 === "E") {
          if (Checkarg(3,false) || Checkarg(2,true)) ToAdd = $mod.FloatToStrF(rtl.getNumber(Args[DoArg]),0,9999,Prec);
        } else if ($tmp1 === "F") {
          if (Checkarg(3,false) || Checkarg(2,true)) ToAdd = $mod.FloatToStrF(rtl.getNumber(Args[DoArg]),0,9999,Prec);
        } else if ($tmp1 === "G") {
          if (Checkarg(3,false) || Checkarg(2,true)) ToAdd = $mod.FloatToStrF(rtl.getNumber(Args[DoArg]),1,Prec,3);
        } else if ($tmp1 === "N") {
          if (Checkarg(3,false) || Checkarg(2,true)) ToAdd = $mod.FloatToStrF(rtl.getNumber(Args[DoArg]),3,9999,Prec);
        } else if ($tmp1 === "M") {
          if (Checkarg(3,false) || Checkarg(2,true)) ToAdd = $mod.FloatToStrF(rtl.getNumber(Args[DoArg]),4,9999,Prec);
        } else if ($tmp1 === "S") {
          Checkarg(4,true);
          Hs = "" + Args[DoArg];
          Index = Hs.length;
          if ((Prec !== -1) && (Index > Prec)) Index = Prec;
          ToAdd = pas.System.Copy(Hs,1,Index);
        } else if ($tmp1 === "P") {
          Checkarg(2,true);
          ToAdd = $mod.IntToHex(Math.floor(Args[DoArg]),31);
        } else if ($tmp1 === "X") {
          Checkarg(2,true);
          vq = Math.floor(Args[DoArg]);
          Index = 31;
          if (Prec > Index) {
            ToAdd = $mod.IntToHex(vq,Index)}
           else {
            Index = 1;
            while (((1 << (Index * 4)) <= vq) && (Index < 16)) Index += 1;
            if (Index > Prec) Prec = Index;
            ToAdd = $mod.IntToHex(vq,Prec);
          };
        } else if ($tmp1 === "%") ToAdd = "%";
        if (Width !== -1) if (ToAdd.length < Width) if (!Left) {
          ToAdd = pas.System.StringOfChar(" ",Width - ToAdd.length) + ToAdd}
         else ToAdd = ToAdd + pas.System.StringOfChar(" ",Width - ToAdd.length);
        Result = Result + ToAdd;
      };
      ChPos += 1;
      OldPos = ChPos;
    };
    return Result;
  };
  var Alpha = rtl.createSet(null,65,90,null,97,122,95);
  var AlphaNum = rtl.unionSet(Alpha,rtl.createSet(null,48,57));
  var Dot = ".";
  this.IsValidIdent = function (Ident, AllowDots, StrictDots) {
    var Result = false;
    var First = false;
    var I = 0;
    var Len = 0;
    Len = Ident.length;
    if (Len < 1) return false;
    First = true;
    Result = false;
    I = 1;
    while (I <= Len) {
      if (First) {
        if (!(Ident.charCodeAt(I - 1) in Alpha)) return Result;
        First = false;
      } else if (AllowDots && (Ident.charAt(I - 1) === Dot)) {
        if (StrictDots) {
          if (I >= Len) return Result;
          First = true;
        };
      } else if (!(Ident.charCodeAt(I - 1) in AlphaNum)) return Result;
      I = I + 1;
    };
    Result = true;
    return Result;
  };
  this.TStringReplaceFlag = {"0": "rfReplaceAll", rfReplaceAll: 0, "1": "rfIgnoreCase", rfIgnoreCase: 1};
  this.StringReplace = function (aOriginal, aSearch, aReplace, Flags) {
    var Result = "";
    var REFlags = "";
    var REString = "";
    REFlags = "";
    if (0 in Flags) REFlags = "g";
    if (1 in Flags) REFlags = REFlags + "i";
    REString = aSearch.replace(new RegExp($impl.RESpecials,"g"),"\\$1");
    Result = aOriginal.replace(new RegExp(REString,REFlags),aReplace);
    return Result;
  };
  this.IntToStr = function (Value) {
    var Result = "";
    Result = "" + Value;
    return Result;
  };
  this.TryStrToInt$1 = function (S, res) {
    var Result = false;
    var Radix = 10;
    var F = "";
    var N = "";
    var J = undefined;
    N = S;
    F = pas.System.Copy(N,1,1);
    if (F === "$") {
      Radix = 16}
     else if (F === "&") {
      Radix = 8}
     else if (F === "%") Radix = 2;
    if (Radix !== 10) pas.System.Delete({get: function () {
        return N;
      }, set: function (v) {
        N = v;
      }},1,1);
    J = parseInt(N,Radix);
    Result = !isNaN(J);
    if (Result) res.set(Math.floor(J));
    return Result;
  };
  this.StrToIntDef = function (S, aDef) {
    var Result = 0;
    var R = 0;
    if ($mod.TryStrToInt$1(S,{get: function () {
        return R;
      }, set: function (v) {
        R = v;
      }})) {
      Result = R}
     else Result = aDef;
    return Result;
  };
  this.StrToInt = function (S) {
    var Result = 0;
    var R = 0;
    if (!$mod.TryStrToInt$1(S,{get: function () {
        return R;
      }, set: function (v) {
        R = v;
      }})) throw $mod.EConvertError.$create("CreateFmt",[pas.RTLConsts.SErrInvalidInteger,[S]]);
    Result = R;
    return Result;
  };
  var HexDigits = "0123456789ABCDEF";
  this.IntToHex = function (Value, Digits) {
    var Result = "";
    if (Digits === 0) Digits = 1;
    Result = "";
    while (Value > 0) {
      Result = HexDigits.charAt(((Value & 15) + 1) - 1) + Result;
      Value = Value >>> 4;
    };
    while (Result.length < Digits) Result = "0" + Result;
    return Result;
  };
  this.TFloatFormat = {"0": "ffFixed", ffFixed: 0, "1": "ffGeneral", ffGeneral: 1, "2": "ffExponent", ffExponent: 2, "3": "ffNumber", ffNumber: 3, "4": "ffCurrency", ffCurrency: 4};
  this.FloatToStr = function (Value) {
    var Result = "";
    Result = $mod.FloatToStrF(Value,1,15,0);
    return Result;
  };
  this.FloatToStrF = function (Value, format, Precision, Digits) {
    var Result = "";
    var DS = "";
    DS = $mod.DecimalSeparator;
    var $tmp1 = format;
    if ($tmp1 === 1) {
      Result = $impl.FormatGeneralFloat(Value,Precision,DS)}
     else if ($tmp1 === 2) {
      Result = $impl.FormatExponentFloat(Value,Precision,Digits,DS)}
     else if ($tmp1 === 0) {
      Result = $impl.FormatFixedFloat(Value,Digits,DS)}
     else if ($tmp1 === 3) {
      Result = $impl.FormatNumberFloat(Value,Digits,DS,$mod.ThousandSeparator)}
     else if ($tmp1 === 4) Result = $impl.FormatNumberCurrency(Value * 10000,Digits,DS,$mod.ThousandSeparator);
    if (((format !== 4) && (Result.length > 1)) && (Result.charAt(0) === "-")) $impl.RemoveLeadingNegativeSign({get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }},DS);
    return Result;
  };
  this.Abort = function () {
    throw $mod.EAbort.$create("Create$1",[$impl.SAbortError]);
  };
  this.TTimeStamp = function (s) {
    if (s) {
      this.Time = s.Time;
      this.date = s.date;
    } else {
      this.Time = 0;
      this.date = 0;
    };
    this.$equal = function (b) {
      return (this.Time === b.Time) && (this.date === b.date);
    };
  };
  this.TimeSeparator = ":";
  this.DateSeparator = "-";
  this.ShortDateFormat = "yyyy-mm-dd";
  this.LongDateFormat = "ddd, yyyy-mm-dd";
  this.ShortTimeFormat = "hh:nn";
  this.LongTimeFormat = "hh:nn:ss";
  this.DecimalSeparator = ".";
  this.ThousandSeparator = "";
  this.TimeAMString = "AM";
  this.TimePMString = "PM";
  this.HoursPerDay = 24;
  this.MinsPerHour = 60;
  this.SecsPerMin = 60;
  this.MSecsPerSec = 1000;
  this.MinsPerDay = 24 * 60;
  this.SecsPerDay = 1440 * 60;
  this.MSecsPerDay = 86400 * 1000;
  this.MaxDateTime = 2958465.99999999;
  this.DateDelta = 693594;
  this.MonthDays = [[31,28,31,30,31,30,31,31,30,31,30,31],[31,29,31,30,31,30,31,31,30,31,30,31]];
  this.ShortMonthNames = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
  this.LongMonthNames = ["January","February","March","April","May","June","July","August","September","October","November","December"];
  this.ShortDayNames = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
  this.LongDayNames = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
  rtl.createClass($mod,"TFormatSettings",pas.System.TObject,function () {
    this.GetThousandSeparator = function () {
      var Result = "";
      Result = $mod.ThousandSeparator;
      return Result;
    };
  });
  this.FormatSettings = null;
  this.DateTimeToTimeStamp = function (DateTime) {
    var Result = new $mod.TTimeStamp();
    var D = 0.0;
    D = DateTime * 86400000;
    if (D < 0) {
      D = D - 0.5}
     else D = D + 0.5;
    Result.Time = pas.System.Trunc(Math.abs(pas.System.Trunc(D)) % 86400000);
    Result.date = 693594 + Math.floor(pas.System.Trunc(D) / 86400000);
    return Result;
  };
  this.TryEncodeDate = function (Year, Month, Day, date) {
    var Result = false;
    var c = 0;
    var ya = 0;
    Result = (((((Year > 0) && (Year < 10000)) && (Month >= 1)) && (Month <= 12)) && (Day > 0)) && (Day <= $mod.MonthDays[+$mod.IsLeapYear(Year)][Month - 1]);
    if (Result) {
      if (Month > 2) {
        Month -= 3}
       else {
        Month += 9;
        Year -= 1;
      };
      c = Math.floor(Year / 100);
      ya = Year - (100 * c);
      date.set(((((146097 * c) >>> 2) + ((1461 * ya) >>> 2)) + Math.floor(((153 * Month) + 2) / 5)) + Day);
      date.set(date.get() - 693900);
    };
    return Result;
  };
  this.TryEncodeTime = function (Hour, Min, Sec, MSec, Time) {
    var Result = false;
    Result = (((Hour < 24) && (Min < 60)) && (Sec < 60)) && (MSec < 1000);
    if (Result) Time.set(((((Hour * 3600000) + (Min * 60000)) + (Sec * 1000)) + MSec) / 86400000);
    return Result;
  };
  this.EncodeDate = function (Year, Month, Day) {
    var Result = 0.0;
    if (!$mod.TryEncodeDate(Year,Month,Day,{get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }})) throw $mod.EConvertError.$create("CreateFmt",["%s-%s-%s is not a valid date specification",[$mod.IntToStr(Year),$mod.IntToStr(Month),$mod.IntToStr(Day)]]);
    return Result;
  };
  this.EncodeTime = function (Hour, Minute, Second, MilliSecond) {
    var Result = 0.0;
    if (!$mod.TryEncodeTime(Hour,Minute,Second,MilliSecond,{get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }})) throw $mod.EConvertError.$create("CreateFmt",["%s:%s:%s.%s is not a valid time specification",[$mod.IntToStr(Hour),$mod.IntToStr(Minute),$mod.IntToStr(Second),$mod.IntToStr(MilliSecond)]]);
    return Result;
  };
  this.DecodeDate = function (date, Year, Month, Day) {
    var ly = 0;
    var ld = 0;
    var lm = 0;
    var j = 0;
    if (date <= -693594) {
      Year.set(0);
      Month.set(0);
      Day.set(0);
    } else {
      if (date > 0) {
        date = date + (1 / (86400000 * 2))}
       else date = date - (1 / (86400000 * 2));
      if (date > $mod.MaxDateTime) date = $mod.MaxDateTime;
      j = ((pas.System.Trunc(date) + 693900) << 2) - 1;
      ly = Math.floor(j / 146097);
      j = j - (146097 * ly);
      ld = j >>> 2;
      j = Math.floor(((ld << 2) + 3) / 1461);
      ld = (((ld << 2) + 7) - (1461 * j)) >>> 2;
      lm = Math.floor(((5 * ld) - 3) / 153);
      ld = Math.floor((((5 * ld) + 2) - (153 * lm)) / 5);
      ly = (100 * ly) + j;
      if (lm < 10) {
        lm += 3}
       else {
        lm -= 9;
        ly += 1;
      };
      Year.set(ly);
      Month.set(lm);
      Day.set(ld);
    };
  };
  this.DecodeDateFully = function (DateTime, Year, Month, Day, DOW) {
    var Result = false;
    $mod.DecodeDate(DateTime,Year,Month,Day);
    DOW.set($mod.DayOfWeek(DateTime));
    Result = $mod.IsLeapYear(Year.get());
    return Result;
  };
  this.DecodeTime = function (Time, Hour, Minute, Second, MilliSecond) {
    var l = 0;
    l = $mod.DateTimeToTimeStamp(Time).Time;
    Hour.set(Math.floor(l / 3600000));
    l = l % 3600000;
    Minute.set(Math.floor(l / 60000));
    l = l % 60000;
    Second.set(Math.floor(l / 1000));
    l = l % 1000;
    MilliSecond.set(l);
  };
  this.DayOfWeek = function (DateTime) {
    var Result = 0;
    Result = 1 + ((pas.System.Trunc(DateTime) - 1) % 7);
    if (Result <= 0) Result += 7;
    return Result;
  };
  this.IsLeapYear = function (Year) {
    var Result = false;
    Result = ((Year % 4) === 0) && (((Year % 100) !== 0) || ((Year % 400) === 0));
    return Result;
  };
  this.FormatDateTime = function (FormatStr, DateTime) {
    var Result = "";
    function StoreStr(APos, Len) {
      Result = Result + pas.System.Copy(FormatStr,APos,Len);
    };
    function StoreString(AStr) {
      Result = Result + AStr;
    };
    function StoreInt(Value, Digits) {
      var S = "";
      S = $mod.IntToStr(Value);
      while (S.length < Digits) S = "0" + S;
      StoreString(S);
    };
    var Year = 0;
    var Month = 0;
    var Day = 0;
    var DayOfWeek = 0;
    var Hour = 0;
    var Minute = 0;
    var Second = 0;
    var MilliSecond = 0;
    function StoreFormat(FormatStr, Nesting, TimeFlag) {
      var Token = "";
      var lastformattoken = "";
      var prevlasttoken = "";
      var Count = 0;
      var Clock12 = false;
      var tmp = 0;
      var isInterval = false;
      var P = 0;
      var FormatCurrent = 0;
      var FormatEnd = 0;
      if (Nesting > 1) return;
      FormatCurrent = 1;
      FormatEnd = FormatStr.length;
      Clock12 = false;
      isInterval = false;
      P = 1;
      while (P <= FormatEnd) {
        Token = FormatStr.charAt(P - 1);
        var $tmp1 = Token;
        if (($tmp1 === "'") || ($tmp1 === '"')) {
          P += 1;
          while ((P < FormatEnd) && (FormatStr.charAt(P - 1) !== Token)) P += 1;
        } else if (($tmp1 === "A") || ($tmp1 === "a")) {
          if ((($mod.CompareText(pas.System.Copy(FormatStr,P,3),"A\/P") === 0) || ($mod.CompareText(pas.System.Copy(FormatStr,P,4),"AMPM") === 0)) || ($mod.CompareText(pas.System.Copy(FormatStr,P,5),"AM\/PM") === 0)) {
            Clock12 = true;
            break;
          };
        };
        P += 1;
      };
      Token = "ÿ";
      lastformattoken = " ";
      prevlasttoken = "H";
      while (FormatCurrent <= FormatEnd) {
        Token = $mod.UpperCase(FormatStr.charAt(FormatCurrent - 1)).charAt(0);
        Count = 1;
        P = FormatCurrent + 1;
        var $tmp2 = Token;
        if (($tmp2 === "'") || ($tmp2 === '"')) {
          while ((P < FormatEnd) && (FormatStr.charAt(P - 1) !== Token)) P += 1;
          P += 1;
          Count = P - FormatCurrent;
          StoreStr(FormatCurrent + 1,Count - 2);
        } else if ($tmp2 === "A") {
          if ($mod.CompareText(pas.System.Copy(FormatStr,FormatCurrent,4),"AMPM") === 0) {
            Count = 4;
            if (Hour < 12) {
              StoreString($mod.TimeAMString)}
             else StoreString($mod.TimePMString);
          } else if ($mod.CompareText(pas.System.Copy(FormatStr,FormatCurrent,5),"AM\/PM") === 0) {
            Count = 5;
            if (Hour < 12) {
              StoreStr(FormatCurrent,2)}
             else StoreStr(FormatCurrent + 3,2);
          } else if ($mod.CompareText(pas.System.Copy(FormatStr,FormatCurrent,3),"A\/P") === 0) {
            Count = 3;
            if (Hour < 12) {
              StoreStr(FormatCurrent,1)}
             else StoreStr(FormatCurrent + 2,1);
          } else throw $mod.EConvertError.$create("Create$1",["Illegal character in format string"]);
        } else if ($tmp2 === "\/") {
          StoreString($mod.DateSeparator);
        } else if ($tmp2 === ":") {
          StoreString($mod.TimeSeparator)}
         else if ((((((((((($tmp2 === " ") || ($tmp2 === "C")) || ($tmp2 === "D")) || ($tmp2 === "H")) || ($tmp2 === "M")) || ($tmp2 === "N")) || ($tmp2 === "S")) || ($tmp2 === "T")) || ($tmp2 === "Y")) || ($tmp2 === "Z")) || ($tmp2 === "F")) {
          while ((P <= FormatEnd) && ($mod.UpperCase(FormatStr.charAt(P - 1)) === Token)) P += 1;
          Count = P - FormatCurrent;
          var $tmp3 = Token;
          if ($tmp3 === " ") {
            StoreStr(FormatCurrent,Count)}
           else if ($tmp3 === "Y") {
            if (Count > 2) {
              StoreInt(Year,4)}
             else StoreInt(Year % 100,2);
          } else if ($tmp3 === "M") {
            if (isInterval && ((prevlasttoken === "H") || TimeFlag)) {
              StoreInt(Minute + ((Hour + (pas.System.Trunc(Math.abs(DateTime)) * 24)) * 60),0)}
             else if ((lastformattoken === "H") || TimeFlag) {
              if (Count === 1) {
                StoreInt(Minute,0)}
               else StoreInt(Minute,2);
            } else {
              var $tmp4 = Count;
              if ($tmp4 === 1) {
                StoreInt(Month,0)}
               else if ($tmp4 === 2) {
                StoreInt(Month,2)}
               else if ($tmp4 === 3) {
                StoreString($mod.ShortMonthNames[Month - 1])}
               else {
                StoreString($mod.LongMonthNames[Month - 1]);
              };
            };
          } else if ($tmp3 === "D") {
            var $tmp5 = Count;
            if ($tmp5 === 1) {
              StoreInt(Day,0)}
             else if ($tmp5 === 2) {
              StoreInt(Day,2)}
             else if ($tmp5 === 3) {
              StoreString($mod.ShortDayNames[DayOfWeek])}
             else if ($tmp5 === 4) {
              StoreString($mod.LongDayNames[DayOfWeek])}
             else if ($tmp5 === 5) {
              StoreFormat($mod.ShortDateFormat,Nesting + 1,false)}
             else {
              StoreFormat($mod.LongDateFormat,Nesting + 1,false);
            };
          } else if ($tmp3 === "H") {
            if (isInterval) {
              StoreInt(Hour + (pas.System.Trunc(Math.abs(DateTime)) * 24),0)}
             else if (Clock12) {
              tmp = Hour % 12;
              if (tmp === 0) tmp = 12;
              if (Count === 1) {
                StoreInt(tmp,0)}
               else StoreInt(tmp,2);
            } else {
              if (Count === 1) {
                StoreInt(Hour,0)}
               else StoreInt(Hour,2);
            }}
           else if ($tmp3 === "N") {
            if (isInterval) {
              StoreInt(Minute + ((Hour + (pas.System.Trunc(Math.abs(DateTime)) * 24)) * 60),0)}
             else if (Count === 1) {
              StoreInt(Minute,0)}
             else StoreInt(Minute,2)}
           else if ($tmp3 === "S") {
            if (isInterval) {
              StoreInt(Second + ((Minute + ((Hour + (pas.System.Trunc(Math.abs(DateTime)) * 24)) * 60)) * 60),0)}
             else if (Count === 1) {
              StoreInt(Second,0)}
             else StoreInt(Second,2)}
           else if ($tmp3 === "Z") {
            if (Count === 1) {
              StoreInt(MilliSecond,0)}
             else StoreInt(MilliSecond,3)}
           else if ($tmp3 === "T") {
            if (Count === 1) {
              StoreFormat($mod.ShortTimeFormat,Nesting + 1,true)}
             else StoreFormat($mod.LongTimeFormat,Nesting + 1,true)}
           else if ($tmp3 === "C") {
            StoreFormat($mod.ShortDateFormat,Nesting + 1,false);
            if (((Hour !== 0) || (Minute !== 0)) || (Second !== 0)) {
              StoreString(" ");
              StoreFormat($mod.LongTimeFormat,Nesting + 1,true);
            };
          } else if ($tmp3 === "F") {
            StoreFormat($mod.ShortDateFormat,Nesting + 1,false);
            StoreString(" ");
            StoreFormat($mod.LongTimeFormat,Nesting + 1,true);
          };
          prevlasttoken = lastformattoken;
          lastformattoken = Token;
        } else {
          StoreString(Token);
        };
        FormatCurrent += Count;
      };
    };
    $mod.DecodeDateFully(DateTime,{get: function () {
        return Year;
      }, set: function (v) {
        Year = v;
      }},{get: function () {
        return Month;
      }, set: function (v) {
        Month = v;
      }},{get: function () {
        return Day;
      }, set: function (v) {
        Day = v;
      }},{get: function () {
        return DayOfWeek;
      }, set: function (v) {
        DayOfWeek = v;
      }});
    $mod.DecodeTime(DateTime,{get: function () {
        return Hour;
      }, set: function (v) {
        Hour = v;
      }},{get: function () {
        return Minute;
      }, set: function (v) {
        Minute = v;
      }},{get: function () {
        return Second;
      }, set: function (v) {
        Second = v;
      }},{get: function () {
        return MilliSecond;
      }, set: function (v) {
        MilliSecond = v;
      }});
    if (FormatStr !== "") {
      StoreFormat(FormatStr,0,false)}
     else StoreFormat("C",0,false);
    return Result;
  };
  this.CurrencyFormat = 0;
  this.NegCurrFormat = 0;
  this.CurrencyDecimals = 2;
  this.CurrencyString = "$";
  $mod.$init = function () {
    $mod.FormatSettings = $mod.TFormatSettings.$create("Create");
  };
},null,function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  $impl.SAbortError = "Operation aborted";
  $impl.feInvalidFormat = 1;
  $impl.feMissingArgument = 2;
  $impl.feInvalidArgIndex = 3;
  $impl.DoFormatError = function (ErrCode, fmt) {
    var $tmp1 = ErrCode;
    if ($tmp1 === 1) {
      throw $mod.EConvertError.$create("CreateFmt",[pas.RTLConsts.SInvalidFormat,[fmt]])}
     else if ($tmp1 === 2) {
      throw $mod.EConvertError.$create("CreateFmt",[pas.RTLConsts.SArgumentMissing,[fmt]])}
     else if ($tmp1 === 3) throw $mod.EConvertError.$create("CreateFmt",[pas.RTLConsts.SInvalidArgIndex,[fmt]]);
  };
  $impl.maxdigits = 15;
  $impl.ReplaceDecimalSep = function (S, DS) {
    var Result = "";
    var P = 0;
    P = pas.System.Pos(".",S);
    if (P > 0) {
      Result = (pas.System.Copy(S,1,P - 1) + DS) + pas.System.Copy(S,P + 1,S.length - P)}
     else Result = S;
    return Result;
  };
  $impl.FormatGeneralFloat = function (Value, Precision, DS) {
    var Result = "";
    var P = 0;
    var PE = 0;
    var Q = 0;
    var Exponent = 0;
    if ((Precision === -1) || (Precision > 15)) Precision = 15;
    Result = rtl.floatToStr(Value,Precision + 7);
    Result = $mod.TrimLeft(Result);
    P = pas.System.Pos(".",Result);
    if (P === 0) return Result;
    PE = pas.System.Pos("E",Result);
    if (PE === 0) {
      Result = $impl.ReplaceDecimalSep(Result,DS);
      return Result;
    };
    Q = PE + 2;
    Exponent = 0;
    while (Q <= Result.length) {
      Exponent = ((Exponent * 10) + Result.charCodeAt(Q - 1)) - "0".charCodeAt();
      Q += 1;
    };
    if (Result.charAt((PE + 1) - 1) === "-") Exponent = -Exponent;
    if (((P + Exponent) < PE) && (Exponent > -6)) {
      Result = rtl.strSetLength(Result,PE - 1);
      if (Exponent >= 0) {
        for (var $l1 = 0, $end2 = Exponent - 1; $l1 <= $end2; $l1++) {
          Q = $l1;
          Result = rtl.setCharAt(Result,P - 1,Result.charAt((P + 1) - 1));
          P += 1;
        };
        Result = rtl.setCharAt(Result,P - 1,".");
        P = 1;
        if (Result.charAt(P - 1) === "-") P += 1;
        while (((Result.charAt(P - 1) === "0") && (P < Result.length)) && (pas.System.Copy(Result,P + 1,DS.length) !== DS)) pas.System.Delete({get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }},P,1);
      } else {
        pas.System.Insert(pas.System.Copy("00000",1,-Exponent),{get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }},P - 1);
        Result = rtl.setCharAt(Result,(P - Exponent) - 1,Result.charAt(((P - Exponent) - 1) - 1));
        Result = rtl.setCharAt(Result,P - 1,".");
        if (Exponent !== -1) Result = rtl.setCharAt(Result,((P - Exponent) - 1) - 1,"0");
      };
      Q = Result.length;
      while ((Q > 0) && (Result.charAt(Q - 1) === "0")) Q -= 1;
      if (Result.charAt(Q - 1) === ".") Q -= 1;
      if ((Q === 0) || ((Q === 1) && (Result.charAt(0) === "-"))) {
        Result = "0"}
       else Result = rtl.strSetLength(Result,Q);
    } else {
      while (Result.charAt((PE - 1) - 1) === "0") {
        pas.System.Delete({get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }},PE - 1,1);
        PE -= 1;
      };
      if (Result.charAt((PE - 1) - 1) === DS) {
        pas.System.Delete({get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }},PE - 1,1);
        PE -= 1;
      };
      if (Result.charAt((PE + 1) - 1) === "+") {
        pas.System.Delete({get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }},PE + 1,1)}
       else PE += 1;
      while (Result.charAt((PE + 1) - 1) === "0") pas.System.Delete({get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }},PE + 1,1);
    };
    Result = $impl.ReplaceDecimalSep(Result,DS);
    return Result;
  };
  $impl.FormatExponentFloat = function (Value, Precision, Digits, DS) {
    var Result = "";
    var P = 0;
    DS = $mod.DecimalSeparator;
    if ((Precision === -1) || (Precision > 15)) Precision = 15;
    Result = rtl.floatToStr(Value,Precision + 7);
    while (Result.charAt(0) === " ") pas.System.Delete({get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }},1,1);
    P = pas.System.Pos("E",Result);
    if (P === 0) {
      Result = $impl.ReplaceDecimalSep(Result,DS);
      return Result;
    };
    P += 2;
    if (Digits > 4) Digits = 4;
    Digits = ((Result.length - P) - Digits) + 1;
    if (Digits < 0) {
      pas.System.Insert(pas.System.Copy("0000",1,-Digits),{get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }},P)}
     else while ((Digits > 0) && (Result.charAt(P - 1) === "0")) {
      pas.System.Delete({get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }},P,1);
      if (P > Result.length) {
        pas.System.Delete({get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }},P - 2,2);
        break;
      };
      Digits -= 1;
    };
    Result = $impl.ReplaceDecimalSep(Result,DS);
    return Result;
  };
  $impl.FormatFixedFloat = function (Value, Digits, DS) {
    var Result = "";
    if (Digits === -1) {
      Digits = 2}
     else if (Digits > 18) Digits = 18;
    Result = rtl.floatToStr(Value,0,Digits);
    if ((Result !== "") && (Result.charAt(0) === " ")) pas.System.Delete({get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }},1,1);
    Result = $impl.ReplaceDecimalSep(Result,DS);
    return Result;
  };
  $impl.FormatNumberFloat = function (Value, Digits, DS, TS) {
    var Result = "";
    var P = 0;
    if (Digits === -1) {
      Digits = 2}
     else if (Digits > 15) Digits = 15;
    Result = rtl.floatToStr(Value,0,Digits);
    if ((Result !== "") && (Result.charAt(0) === " ")) pas.System.Delete({get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }},1,1);
    P = pas.System.Pos(".",Result);
    Result = $impl.ReplaceDecimalSep(Result,DS);
    P -= 3;
    if ((TS !== "") && (TS !== "\x00")) while (P > 1) {
      if (Result.charAt((P - 1) - 1) !== "-") pas.System.Insert(TS,{get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }},P);
      P -= 3;
    };
    return Result;
  };
  $impl.RemoveLeadingNegativeSign = function (AValue, DS) {
    var Result = false;
    var i = 0;
    var TS = "";
    var StartPos = 0;
    Result = false;
    StartPos = 2;
    TS = $mod.ThousandSeparator;
    for (var $l1 = StartPos, $end2 = AValue.get().length; $l1 <= $end2; $l1++) {
      i = $l1;
      Result = (AValue.get().charCodeAt(i - 1) in rtl.createSet(48,DS.charCodeAt(),69,43)) || (AValue.get() === TS);
      if (!Result) break;
    };
    if (Result) pas.System.Delete(AValue,1,1);
    return Result;
  };
  $impl.FormatNumberCurrency = function (Value, Digits, DS, TS) {
    var Result = "";
    var Negative = false;
    var P = 0;
    if (Digits === -1) {
      Digits = $mod.CurrencyDecimals}
     else if (Digits > 18) Digits = 18;
    Result = rtl.spaceLeft("" + Value,0);
    Negative = Result.charAt(0) === "-";
    if (Negative) pas.System.Delete({get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }},1,1);
    P = pas.System.Pos(".",Result);
    if (P !== 0) {
      Result = $impl.ReplaceDecimalSep(Result,DS)}
     else P = Result.length + 1;
    P -= 3;
    while (P > 1) {
      if ($mod.ThousandSeparator !== "\x00") pas.System.Insert($mod.FormatSettings.GetThousandSeparator(),{get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }},P);
      P -= 3;
    };
    if ((Result.length > 1) && Negative) Negative = !$impl.RemoveLeadingNegativeSign({get: function () {
        return Result;
      }, set: function (v) {
        Result = v;
      }},DS);
    if (!Negative) {
      var $tmp1 = $mod.CurrencyFormat;
      if ($tmp1 === 0) {
        Result = $mod.CurrencyString + Result}
       else if ($tmp1 === 1) {
        Result = Result + $mod.CurrencyString}
       else if ($tmp1 === 2) {
        Result = ($mod.CurrencyString + " ") + Result}
       else if ($tmp1 === 3) Result = (Result + " ") + $mod.CurrencyString;
    } else {
      var $tmp2 = $mod.NegCurrFormat;
      if ($tmp2 === 0) {
        Result = (("(" + $mod.CurrencyString) + Result) + ")"}
       else if ($tmp2 === 1) {
        Result = ("-" + $mod.CurrencyString) + Result}
       else if ($tmp2 === 2) {
        Result = ($mod.CurrencyString + "-") + Result}
       else if ($tmp2 === 3) {
        Result = ($mod.CurrencyString + Result) + "-"}
       else if ($tmp2 === 4) {
        Result = (("(" + Result) + $mod.CurrencyString) + ")"}
       else if ($tmp2 === 5) {
        Result = ("-" + Result) + $mod.CurrencyString}
       else if ($tmp2 === 6) {
        Result = (Result + "-") + $mod.CurrencyString}
       else if ($tmp2 === 7) {
        Result = (Result + $mod.CurrencyString) + "-"}
       else if ($tmp2 === 8) {
        Result = (("-" + Result) + " ") + $mod.CurrencyString}
       else if ($tmp2 === 9) {
        Result = (("-" + $mod.CurrencyString) + " ") + Result}
       else if ($tmp2 === 10) {
        Result = ((Result + " ") + $mod.CurrencyString) + "-"}
       else if ($tmp2 === 11) {
        Result = (($mod.CurrencyString + " ") + Result) + "-"}
       else if ($tmp2 === 12) {
        Result = (($mod.CurrencyString + " ") + "-") + Result}
       else if ($tmp2 === 13) {
        Result = ((Result + "-") + " ") + $mod.CurrencyString}
       else if ($tmp2 === 14) {
        Result = ((("(" + $mod.CurrencyString) + " ") + Result) + ")"}
       else if ($tmp2 === 15) Result = ((("(" + Result) + " ") + $mod.CurrencyString) + ")";
    };
    if (TS === "") ;
    return Result;
  };
  $impl.RESpecials = "([\\[\\]\\(\\)\\\\\\.\\*])";
});
rtl.module("Classes",["System","RTLConsts","Types","SysUtils"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  $mod.$rtti.$MethodVar("TNotifyEvent",{procsig: rtl.newTIProcSig([["Sender",pas.System.$rtti["TObject"]]]), methodkind: 0});
  rtl.createClass($mod,"EListError",pas.SysUtils.Exception,function () {
  });
  rtl.createClass($mod,"EComponentError",pas.SysUtils.Exception,function () {
  });
  this.TAlignment = {"0": "taLeftJustify", taLeftJustify: 0, "1": "taRightJustify", taRightJustify: 1, "2": "taCenter", taCenter: 2};
  $mod.$rtti.$Enum("TAlignment",{minvalue: 0, maxvalue: 2, ordtype: 1, enumtype: this.TAlignment});
  rtl.createClass($mod,"TFPList",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FList = [];
      this.FCount = 0;
      this.FCapacity = 0;
    };
    this.$final = function () {
      this.FList = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.Get = function (Index) {
      var Result = undefined;
      if ((Index < 0) || (Index >= this.FCount)) this.RaiseIndexError(Index);
      Result = this.FList[Index];
      return Result;
    };
    this.Put = function (Index, Item) {
      if ((Index < 0) || (Index >= this.FCount)) this.RaiseIndexError(Index);
      this.FList[Index] = Item;
    };
    this.SetCapacity = function (NewCapacity) {
      if (NewCapacity < this.FCount) this.$class.error(pas.RTLConsts.SListCapacityError,"" + NewCapacity);
      if (NewCapacity === this.FCapacity) return;
      this.FList = rtl.arraySetLength(this.FList,undefined,NewCapacity);
      this.FCapacity = NewCapacity;
    };
    this.SetCount = function (NewCount) {
      if (NewCount < 0) this.$class.error(pas.RTLConsts.SListCountError,"" + NewCount);
      if (NewCount > this.FCount) {
        if (NewCount > this.FCapacity) this.SetCapacity(NewCount);
      };
      this.FCount = NewCount;
    };
    this.RaiseIndexError = function (Index) {
      this.$class.error(pas.RTLConsts.SListIndexError,"" + Index);
    };
    this.Destroy = function () {
      this.Clear();
      pas.System.TObject.Destroy.call(this);
    };
    this.Add = function (Item) {
      var Result = 0;
      if (this.FCount === this.FCapacity) this.Expand();
      this.FList[this.FCount] = Item;
      Result = this.FCount;
      this.FCount += 1;
      return Result;
    };
    this.Clear = function () {
      if (rtl.length(this.FList) > 0) {
        this.SetCount(0);
        this.SetCapacity(0);
      };
    };
    this.Delete = function (Index) {
      if ((Index < 0) || (Index >= this.FCount)) this.$class.error(pas.RTLConsts.SListIndexError,"" + Index);
      this.FCount = this.FCount - 1;
      this.FList.splice(Index,1);
      this.FCapacity -= 1;
    };
    this.error = function (Msg, Data) {
      throw $mod.EListError.$create("CreateFmt",[Msg,[Data]]);
    };
    this.Expand = function () {
      var Result = null;
      var IncSize = 0;
      if (this.FCount < this.FCapacity) return this;
      IncSize = 4;
      if (this.FCapacity > 3) IncSize = IncSize + 4;
      if (this.FCapacity > 8) IncSize = IncSize + 8;
      if (this.FCapacity > 127) IncSize += this.FCapacity >>> 2;
      this.SetCapacity(this.FCapacity + IncSize);
      Result = this;
      return Result;
    };
    this.IndexOf = function (Item) {
      var Result = 0;
      var C = 0;
      Result = 0;
      C = this.FCount;
      while ((Result < C) && (this.FList[Result] != Item)) Result += 1;
      if (Result >= C) Result = -1;
      return Result;
    };
    this.IndexOfItem = function (Item, Direction) {
      var Result = 0;
      if (Direction === 0) {
        Result = this.IndexOf(Item)}
       else {
        Result = this.FCount - 1;
        while ((Result >= 0) && (this.FList[Result] != Item)) Result = Result - 1;
      };
      return Result;
    };
    this.Insert = function (Index, Item) {
      if ((Index < 0) || (Index > this.FCount)) this.$class.error(pas.RTLConsts.SListIndexError,"" + Index);
      this.FList.splice(Index,0,Item);
      this.FCapacity += 1;
      this.FCount += 1;
    };
    this.Last = function () {
      var Result = undefined;
      if (this.FCount === 0) {
        Result = null}
       else Result = this.Get(this.FCount - 1);
      return Result;
    };
    this.Remove = function (Item) {
      var Result = 0;
      Result = this.IndexOf(Item);
      if (Result !== -1) this.Delete(Result);
      return Result;
    };
  });
  this.TListNotification = {"0": "lnAdded", lnAdded: 0, "1": "lnExtracted", lnExtracted: 1, "2": "lnDeleted", lnDeleted: 2};
  rtl.createClass($mod,"TList",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FList = null;
    };
    this.$final = function () {
      this.FList = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.Get = function (Index) {
      var Result = undefined;
      Result = this.FList.Get(Index);
      return Result;
    };
    this.Notify = function (aValue, Action) {
      if (pas.System.Assigned(aValue)) ;
      if (Action === 1) ;
    };
    this.GetCount = function () {
      var Result = 0;
      Result = this.FList.FCount;
      return Result;
    };
    this.Create$1 = function () {
      pas.System.TObject.Create.call(this);
      this.FList = $mod.TFPList.$create("Create");
    };
    this.Destroy = function () {
      if (this.FList != null) this.Clear();
      pas.SysUtils.FreeAndNil({p: this, get: function () {
          return this.p.FList;
        }, set: function (v) {
          this.p.FList = v;
        }});
    };
    this.Add = function (Item) {
      var Result = 0;
      Result = this.FList.Add(Item);
      if (pas.System.Assigned(Item)) this.Notify(Item,0);
      return Result;
    };
    this.Clear = function () {
      while (this.FList.FCount > 0) this.Delete(this.GetCount() - 1);
    };
    this.Delete = function (Index) {
      var V = undefined;
      V = this.FList.Get(Index);
      this.FList.Delete(Index);
      if (pas.System.Assigned(V)) this.Notify(V,2);
    };
    this.IndexOf = function (Item) {
      var Result = 0;
      Result = this.FList.IndexOf(Item);
      return Result;
    };
    this.Remove = function (Item) {
      var Result = 0;
      Result = this.IndexOf(Item);
      if (Result !== -1) this.Delete(Result);
      return Result;
    };
  });
  rtl.createClass($mod,"TPersistent",pas.System.TObject,function () {
    this.GetOwner = function () {
      var Result = null;
      Result = null;
      return Result;
    };
  });
  rtl.createClass($mod,"TCollectionItem",$mod.TPersistent,function () {
    this.$init = function () {
      $mod.TPersistent.$init.call(this);
      this.FCollection = null;
      this.FID = 0;
    };
    this.$final = function () {
      this.FCollection = undefined;
      $mod.TPersistent.$final.call(this);
    };
    this.GetIndex = function () {
      var Result = 0;
      if (this.FCollection !== null) {
        Result = this.FCollection.FItems.IndexOf(this)}
       else Result = -1;
      return Result;
    };
    this.SetCollection = function (Value) {
      if (Value !== this.FCollection) {
        if (this.FCollection !== null) this.FCollection.RemoveItem(this);
        if (Value !== null) Value.InsertItem(this);
      };
    };
    this.Changed = function (AllItems) {
      if ((this.FCollection !== null) && (this.FCollection.FUpdateCount === 0)) {
        if (AllItems) {
          this.FCollection.Update(null)}
         else this.FCollection.Update(this);
      };
    };
    this.GetOwner = function () {
      var Result = null;
      Result = this.FCollection;
      return Result;
    };
    this.SetDisplayName = function (Value) {
      this.Changed(false);
      if (Value === "") ;
    };
    this.Create$1 = function (ACollection) {
      pas.System.TObject.Create.call(this);
      this.SetCollection(ACollection);
    };
    this.Destroy = function () {
      this.SetCollection(null);
      pas.System.TObject.Destroy.call(this);
    };
  });
  this.TCollectionNotification = {"0": "cnAdded", cnAdded: 0, "1": "cnExtracting", cnExtracting: 1, "2": "cnDeleting", cnDeleting: 2};
  rtl.createClass($mod,"TCollection",$mod.TPersistent,function () {
    this.$init = function () {
      $mod.TPersistent.$init.call(this);
      this.FItemClass = null;
      this.FItems = null;
      this.FUpdateCount = 0;
      this.FNextID = 0;
    };
    this.$final = function () {
      this.FItemClass = undefined;
      this.FItems = undefined;
      $mod.TPersistent.$final.call(this);
    };
    this.GetCount = function () {
      var Result = 0;
      Result = this.FItems.FCount;
      return Result;
    };
    this.InsertItem = function (Item) {
      if (!this.FItemClass.isPrototypeOf(Item)) return;
      this.FItems.Add(Item);
      Item.FCollection = this;
      Item.FID = this.FNextID;
      this.FNextID += 1;
      this.SetItemName(Item);
      this.Notify(Item,0);
      this.Changed();
    };
    this.RemoveItem = function (Item) {
      var I = 0;
      this.Notify(Item,1);
      I = this.FItems.IndexOfItem(Item,1);
      if (I !== -1) this.FItems.Delete(I);
      Item.FCollection = null;
      this.Changed();
    };
    this.DoClear = function () {
      var Item = null;
      while (this.FItems.FCount > 0) {
        Item = rtl.getObject(this.FItems.Last());
        if (Item != null) Item.$destroy("Destroy");
      };
    };
    this.Changed = function () {
      if (this.FUpdateCount === 0) this.Update(null);
    };
    this.GetItem = function (Index) {
      var Result = null;
      Result = rtl.getObject(this.FItems.Get(Index));
      return Result;
    };
    this.SetItemName = function (Item) {
      if (Item === null) ;
    };
    this.Update = function (Item) {
      if (Item === null) ;
    };
    this.Notify = function (Item, Action) {
      if (Item === null) ;
      if (Action === 0) ;
    };
    this.Create$1 = function (AItemClass) {
      pas.System.TObject.Create.call(this);
      this.FItemClass = AItemClass;
      this.FItems = $mod.TFPList.$create("Create");
    };
    this.Destroy = function () {
      this.FUpdateCount = 1;
      try {
        this.DoClear();
      } finally {
        this.FUpdateCount = 0;
      };
      if (this.FItems != null) this.FItems.$destroy("Destroy");
      pas.System.TObject.Destroy.call(this);
    };
    this.Owner = function () {
      var Result = null;
      Result = this.GetOwner();
      return Result;
    };
    this.BeginUpdate = function () {
      this.FUpdateCount += 1;
    };
    this.Clear = function () {
      if (this.FItems.FCount === 0) return;
      this.BeginUpdate();
      try {
        this.DoClear();
      } finally {
        this.EndUpdate();
      };
    };
    this.EndUpdate = function () {
      if (this.FUpdateCount > 0) this.FUpdateCount -= 1;
      if (this.FUpdateCount === 0) this.Changed();
    };
  });
  rtl.createClass($mod,"TOwnedCollection",$mod.TCollection,function () {
    this.$init = function () {
      $mod.TCollection.$init.call(this);
      this.FOwner = null;
    };
    this.$final = function () {
      this.FOwner = undefined;
      $mod.TCollection.$final.call(this);
    };
    this.GetOwner = function () {
      var Result = null;
      Result = this.FOwner;
      return Result;
    };
    this.Create$2 = function (AOwner, AItemClass) {
      this.FOwner = AOwner;
      $mod.TCollection.Create$1.call(this,AItemClass);
    };
  });
  this.TOperation = {"0": "opInsert", opInsert: 0, "1": "opRemove", opRemove: 1};
  this.TComponentStateItem = {"0": "csLoading", csLoading: 0, "1": "csReading", csReading: 1, "2": "csWriting", csWriting: 2, "3": "csDestroying", csDestroying: 3, "4": "csDesigning", csDesigning: 4, "5": "csAncestor", csAncestor: 5, "6": "csUpdating", csUpdating: 6, "7": "csFixups", csFixups: 7, "8": "csFreeNotification", csFreeNotification: 8, "9": "csInline", csInline: 9, "10": "csDesignInstance", csDesignInstance: 10};
  this.TComponentStyleItem = {"0": "csInheritable", csInheritable: 0, "1": "csCheckPropAvail", csCheckPropAvail: 1, "2": "csSubComponent", csSubComponent: 2, "3": "csTransient", csTransient: 3};
  rtl.createClass($mod,"TComponent",$mod.TPersistent,function () {
    this.$init = function () {
      $mod.TPersistent.$init.call(this);
      this.FOwner = null;
      this.FName = "";
      this.FTag = 0;
      this.FComponents = null;
      this.FFreeNotifies = null;
      this.FComponentState = {};
      this.FComponentStyle = {};
    };
    this.$final = function () {
      this.FOwner = undefined;
      this.FComponents = undefined;
      this.FFreeNotifies = undefined;
      this.FComponentState = undefined;
      this.FComponentStyle = undefined;
      $mod.TPersistent.$final.call(this);
    };
    this.Insert = function (AComponent) {
      if (!(this.FComponents != null)) this.FComponents = $mod.TFPList.$create("Create");
      this.FComponents.Add(AComponent);
      AComponent.FOwner = this;
    };
    this.Remove = function (AComponent) {
      AComponent.FOwner = null;
      if (this.FComponents != null) {
        this.FComponents.Remove(AComponent);
        if (this.FComponents.FCount === 0) {
          this.FComponents.$destroy("Destroy");
          this.FComponents = null;
        };
      };
    };
    this.RemoveNotification = function (AComponent) {
      if (this.FFreeNotifies !== null) {
        this.FFreeNotifies.Remove(AComponent);
        if (this.FFreeNotifies.FCount === 0) {
          this.FFreeNotifies.$destroy("Destroy");
          this.FFreeNotifies = null;
          this.FComponentState = rtl.excludeSet(this.FComponentState,8);
        };
      };
    };
    this.ChangeName = function (NewName) {
      this.FName = NewName;
    };
    this.GetOwner = function () {
      var Result = null;
      Result = this.FOwner;
      return Result;
    };
    this.Notification = function (AComponent, Operation) {
      var C = 0;
      if (Operation === 1) this.RemoveFreeNotification(AComponent);
      if (!(this.FComponents != null)) return;
      C = this.FComponents.FCount - 1;
      while (C >= 0) {
        rtl.getObject(this.FComponents.Get(C)).Notification(AComponent,Operation);
        C -= 1;
        if (C >= this.FComponents.FCount) C = this.FComponents.FCount - 1;
      };
    };
    this.SetDesigning = function (Value, SetChildren) {
      var Runner = 0;
      if (Value) {
        this.FComponentState = rtl.includeSet(this.FComponentState,4)}
       else this.FComponentState = rtl.excludeSet(this.FComponentState,4);
      if ((this.FComponents != null) && SetChildren) for (var $l1 = 0, $end2 = this.FComponents.FCount - 1; $l1 <= $end2; $l1++) {
        Runner = $l1;
        rtl.getObject(this.FComponents.Get(Runner)).SetDesigning(Value,true);
      };
    };
    this.SetName = function (NewName) {
      if (this.FName === NewName) return;
      if ((NewName !== "") && !pas.SysUtils.IsValidIdent(NewName,false,false)) throw $mod.EComponentError.$create("CreateFmt",[pas.RTLConsts.SInvalidName,[NewName]]);
      if (this.FOwner != null) {
        this.FOwner.ValidateRename(this,this.FName,NewName)}
       else this.ValidateRename(null,this.FName,NewName);
      this.ChangeName(NewName);
    };
    this.ValidateRename = function (AComponent, CurName, NewName) {
      if ((((AComponent !== null) && (pas.SysUtils.CompareText(CurName,NewName) !== 0)) && (AComponent.FOwner === this)) && (this.FindComponent(NewName) !== null)) throw $mod.EComponentError.$create("CreateFmt",[pas.RTLConsts.SDuplicateName,[NewName]]);
      if ((4 in this.FComponentState) && (this.FOwner !== null)) this.FOwner.ValidateRename(AComponent,CurName,NewName);
    };
    this.ValidateContainer = function (AComponent) {
      AComponent.ValidateInsert(this);
    };
    this.ValidateInsert = function (AComponent) {
      if (AComponent === null) ;
    };
    this.Create$1 = function (AOwner) {
      this.FComponentStyle = rtl.createSet(0);
      if (AOwner != null) AOwner.InsertComponent(this);
    };
    this.Destroy = function () {
      var I = 0;
      var C = null;
      this.Destroying();
      if (this.FFreeNotifies != null) {
        I = this.FFreeNotifies.FCount - 1;
        while (I >= 0) {
          C = rtl.getObject(this.FFreeNotifies.Get(I));
          this.FFreeNotifies.Delete(I);
          C.Notification(this,1);
          if (this.FFreeNotifies === null) {
            I = 0}
           else if (I > this.FFreeNotifies.FCount) I = this.FFreeNotifies.FCount;
          I -= 1;
        };
        pas.SysUtils.FreeAndNil({p: this, get: function () {
            return this.p.FFreeNotifies;
          }, set: function (v) {
            this.p.FFreeNotifies = v;
          }});
      };
      this.DestroyComponents();
      if (this.FOwner !== null) this.FOwner.RemoveComponent(this);
      pas.System.TObject.Destroy.call(this);
    };
    this.BeforeDestruction = function () {
      if (!(3 in this.FComponentState)) this.Destroying();
    };
    this.DestroyComponents = function () {
      var acomponent = null;
      while (this.FComponents != null) {
        acomponent = rtl.getObject(this.FComponents.Last());
        this.Remove(acomponent);
        acomponent.$destroy("Destroy");
      };
    };
    this.Destroying = function () {
      var Runner = 0;
      if (3 in this.FComponentState) return;
      this.FComponentState = rtl.includeSet(this.FComponentState,3);
      if (this.FComponents != null) for (var $l1 = 0, $end2 = this.FComponents.FCount - 1; $l1 <= $end2; $l1++) {
        Runner = $l1;
        rtl.getObject(this.FComponents.Get(Runner)).Destroying();
      };
    };
    this.FindComponent = function (AName) {
      var Result = null;
      var I = 0;
      Result = null;
      if ((AName === "") || !(this.FComponents != null)) return Result;
      for (var $l1 = 0, $end2 = this.FComponents.FCount - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        if (pas.SysUtils.CompareText(rtl.getObject(this.FComponents.Get(I)).FName,AName) === 0) {
          Result = rtl.getObject(this.FComponents.Get(I));
          return Result;
        };
      };
      return Result;
    };
    this.FreeNotification = function (AComponent) {
      if ((this.FOwner !== null) && (AComponent === this.FOwner)) return;
      if (!(this.FFreeNotifies != null)) this.FFreeNotifies = $mod.TFPList.$create("Create");
      if (this.FFreeNotifies.IndexOf(AComponent) === -1) {
        this.FFreeNotifies.Add(AComponent);
        AComponent.FreeNotification(this);
      };
    };
    this.RemoveFreeNotification = function (AComponent) {
      this.RemoveNotification(AComponent);
      AComponent.RemoveNotification(this);
    };
    this.InsertComponent = function (AComponent) {
      AComponent.ValidateContainer(this);
      this.ValidateRename(AComponent,"",AComponent.FName);
      this.Insert(AComponent);
      if (4 in this.FComponentState) AComponent.SetDesigning(true,true);
      this.Notification(AComponent,0);
    };
    this.RemoveComponent = function (AComponent) {
      this.Notification(AComponent,1);
      this.Remove(AComponent);
      AComponent.SetDesigning(false,true);
      this.ValidateRename(AComponent,AComponent.FName,"");
    };
    var $r = this.$rtti;
    $r.addProperty("Name",6,rtl.string,"FName","SetName");
    $r.addProperty("Tag",0,rtl.nativeint,"FTag","FTag");
  });
  $mod.$init = function () {
    $impl.ClassList = Object.create(null);
  };
},["JS"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  $impl.ClassList = null;
});
rtl.module("strutils",["System","SysUtils"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  this.Soundex = function (AText, ALength) {
    var Result = "";
    var S = "";
    var PS = "";
    var I = 0;
    var L = 0;
    Result = "";
    PS = "\x00";
    if (AText.length > 0) {
      Result = pas.System.upcase(AText.charAt(0));
      I = 2;
      L = AText.length;
      while ((I <= L) && (Result.length < ALength)) {
        S = $impl.SScore.charAt(AText.charCodeAt(I - 1) - 1);
        if (!(S.charCodeAt() in rtl.createSet(48,105,PS.charCodeAt()))) Result = Result + S;
        if (S !== "i") PS = S;
        I += 1;
      };
    };
    L = Result.length;
    if (L < ALength) Result = Result + pas.System.StringOfChar("0",ALength - L);
    return Result;
  };
  this.SoundexSimilar = function (AText, AOther, ALength) {
    var Result = false;
    Result = $mod.Soundex(AText,ALength) === $mod.Soundex(AOther,ALength);
    return Result;
  };
  this.SoundexSimilar$1 = function (AText, AOther) {
    var Result = false;
    Result = $mod.SoundexSimilar(AText,AOther,4);
    return Result;
  };
  this.SoundexProc = function (AText, AOther) {
    var Result = false;
    Result = $mod.SoundexSimilar$1(AText,AOther);
    return Result;
  };
  this.AnsiResemblesProc = null;
  this.RPosex$1 = function (Substr, Source, offs) {
    var Result = 0;
    Result = (new String(Source)).lastIndexOf(Substr,offs - 1) + 1;
    return Result;
  };
  this.RPos = function (c, S) {
    var Result = 0;
    Result = $mod.RPosex$1(c,S,S.length);
    return Result;
  };
  $mod.$init = function () {
    $mod.AnsiResemblesProc = $mod.SoundexProc;
  };
},["JS"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  $impl.SScore = (((((((("00000000000000000000000000000000" + "00000000000000000000000000000000") + "0123012i02245501262301i2i2") + "000000") + "0123012i02245501262301i2i2") + "00000000000000000000000000000000") + "00000000000000000000000000000000") + "00000000000000000000000000000000") + "00000000000000000000000000000000") + "00000";
});
rtl.module("Web",["System","Types","JS"],function () {
  "use strict";
  var $mod = this;
});
rtl.module("DateUtils",["System","SysUtils"],function () {
  "use strict";
  var $mod = this;
  var P = [11,1,6,9,12,15,18];
  this.TryRFC3339ToDateTime = function (Avalue, ADateTime) {
    var Result = false;
    this.TPartPos = {"0": "ppTime", ppTime: 0, "1": "ppYear", ppYear: 1, "2": "ppMonth", ppMonth: 2, "3": "ppDay", ppDay: 3, "4": "ppHour", ppHour: 4, "5": "ppMinute", ppMinute: 5, "6": "ppSec", ppSec: 6};
    var lY = 0;
    var lM = 0;
    var lD = 0;
    var lH = 0;
    var lMi = 0;
    var lS = 0;
    if (pas.SysUtils.Trim(Avalue) === "") {
      Result = true;
      ADateTime.set(0);
    };
    lY = pas.SysUtils.StrToIntDef(pas.System.Copy(Avalue,P[1],4),-1);
    lM = pas.SysUtils.StrToIntDef(pas.System.Copy(Avalue,P[2],2),-1);
    lD = pas.SysUtils.StrToIntDef(pas.System.Copy(Avalue,P[3],2),-1);
    if (Avalue.length >= P[0]) {
      lH = pas.SysUtils.StrToIntDef(pas.System.Copy(Avalue,P[4],2),-1);
      lMi = pas.SysUtils.StrToIntDef(pas.System.Copy(Avalue,P[5],2),-1);
      lS = pas.SysUtils.StrToIntDef(pas.System.Copy(Avalue,P[6],2),-1);
    } else {
      lH = 0;
      lMi = 0;
      lS = 0;
    };
    Result = (((((lY >= 0) && (lM >= 0)) && (lD >= 0)) && (lH >= 0)) && (lMi >= 0)) && (lS >= 0);
    if (!Result) {
      ADateTime.set(0)}
     else if (((lY === 0) || (lM === 0)) || (lD === 0)) {
      ADateTime.set(pas.SysUtils.EncodeTime(lH,lMi,lS,0))}
     else ADateTime.set(pas.SysUtils.EncodeDate(lY,lM,lD) + pas.SysUtils.EncodeTime(lH,lMi,lS,0));
    return Result;
  };
},["JS","RTLConsts"]);
rtl.module("DBConst",["System"],function () {
  "use strict";
  var $mod = this;
  $mod.$resourcestrings = {SActiveDataset: {org: "Operation cannot be performed on an active dataset"}, SDuplicateFieldName: {org: 'Duplicate fieldname : "%s"'}, SFieldNotFound: {org: 'Field not found : "%s"'}, SInactiveDataset: {org: "Operation cannot be performed on an inactive dataset"}, SInvalidDisplayValues: {org: '"%s" are not valid boolean displayvalues'}, SInvalidFieldSize: {org: "Invalid field size : %d"}, SInvalidTypeConversion: {org: "Invalid type conversion to %s in field %s"}, SNeedField: {org: "Field %s is required, but not supplied."}, SNeedFieldName: {org: "Field needs a name"}, SNoDataset: {org: 'No dataset asssigned for field : "%s"'}, SNoSuchRecord: {org: "Could not find the requested record."}, SNotEditing: {org: 'Operation not allowed, dataset "%s" is not in an edit or insert state.'}, SRangeError: {org: "%f is not between %f and %f for %s"}, SUniDirectional: {org: "Operation cannot be performed on an unidirectional dataset"}, SUnknownFieldType: {org: "Unknown field type : %s"}, SDuplicateName: {org: "Duplicate name '%s' in %s"}, SLookupInfoError: {org: "Lookup information for field '%s' is incomplete"}, SErrInvalidDateTime: {org: 'Invalid date\/time value : "%s"'}, SatEOFInternalOnly: {org: "loAtEOF is for internal use only."}, SErrInsertingSameRecordtwice: {org: "Attempt to insert the same record twice."}};
});
rtl.module("DB",["System","Classes","SysUtils","JS","Types","DateUtils"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  this.TDataSetState = {"0": "dsInactive", dsInactive: 0, "1": "dsBrowse", dsBrowse: 1, "2": "dsEdit", dsEdit: 2, "3": "dsInsert", dsInsert: 3, "4": "dsSetKey", dsSetKey: 4, "5": "dsCalcFields", dsCalcFields: 5, "6": "dsFilter", dsFilter: 6, "7": "dsNewValue", dsNewValue: 7, "8": "dsOldValue", dsOldValue: 8, "9": "dsCurValue", dsCurValue: 9, "10": "dsBlockRead", dsBlockRead: 10, "11": "dsInternalCalc", dsInternalCalc: 11, "12": "dsOpening", dsOpening: 12, "13": "dsRefreshFields", dsRefreshFields: 13};
  this.TDataEvent = {"0": "deFieldChange", deFieldChange: 0, "1": "deRecordChange", deRecordChange: 1, "2": "deDataSetChange", deDataSetChange: 2, "3": "deDataSetScroll", deDataSetScroll: 3, "4": "deLayoutChange", deLayoutChange: 4, "5": "deUpdateRecord", deUpdateRecord: 5, "6": "deUpdateState", deUpdateState: 6, "7": "deCheckBrowseMode", deCheckBrowseMode: 7, "8": "dePropertyChange", dePropertyChange: 8, "9": "deFieldListChange", deFieldListChange: 9, "10": "deFocusControl", deFocusControl: 10, "11": "deParentScroll", deParentScroll: 11, "12": "deConnectChange", deConnectChange: 12, "13": "deReconcileError", deReconcileError: 13, "14": "deDisabledStateChange", deDisabledStateChange: 14};
  this.TUpdateStatus = {"0": "usUnmodified", usUnmodified: 0, "1": "usModified", usModified: 1, "2": "usInserted", usInserted: 2, "3": "usDeleted", usDeleted: 3, "4": "usResolved", usResolved: 4, "5": "usResolveFailed", usResolveFailed: 5};
  this.TProviderFlag = {"0": "pfInUpdate", pfInUpdate: 0, "1": "pfInWhere", pfInWhere: 1, "2": "pfInKey", pfInKey: 2, "3": "pfHidden", pfHidden: 3, "4": "pfRefreshOnInsert", pfRefreshOnInsert: 4, "5": "pfRefreshOnUpdate", pfRefreshOnUpdate: 5};
  $mod.$rtti.$Enum("TProviderFlag",{minvalue: 0, maxvalue: 5, ordtype: 1, enumtype: this.TProviderFlag});
  $mod.$rtti.$Set("TProviderFlags",{comptype: $mod.$rtti["TProviderFlag"]});
  $mod.$rtti.$Class("TFieldDefs");
  $mod.$rtti.$Class("TField");
  $mod.$rtti.$Class("TDataSet");
  rtl.createClass($mod,"EDatabaseError",pas.SysUtils.Exception,function () {
  });
  this.TFieldType = {"0": "ftUnknown", ftUnknown: 0, "1": "ftString", ftString: 1, "2": "ftInteger", ftInteger: 2, "3": "ftLargeInt", ftLargeInt: 3, "4": "ftBoolean", ftBoolean: 4, "5": "ftFloat", ftFloat: 5, "6": "ftDate", ftDate: 6, "7": "ftTime", ftTime: 7, "8": "ftDateTime", ftDateTime: 8, "9": "ftAutoInc", ftAutoInc: 9, "10": "ftBlob", ftBlob: 10, "11": "ftMemo", ftMemo: 11, "12": "ftFixedChar", ftFixedChar: 12, "13": "ftVariant", ftVariant: 13, "14": "ftDataset", ftDataset: 14};
  $mod.$rtti.$Enum("TFieldType",{minvalue: 0, maxvalue: 14, ordtype: 1, enumtype: this.TFieldType});
  this.TFieldAttribute = {"0": "faHiddenCol", faHiddenCol: 0, "1": "faReadonly", faReadonly: 1, "2": "faRequired", faRequired: 2, "3": "faLink", faLink: 3, "4": "faUnNamed", faUnNamed: 4, "5": "faFixed", faFixed: 5};
  $mod.$rtti.$Enum("TFieldAttribute",{minvalue: 0, maxvalue: 5, ordtype: 1, enumtype: this.TFieldAttribute});
  $mod.$rtti.$Set("TFieldAttributes",{comptype: $mod.$rtti["TFieldAttribute"]});
  rtl.createClass($mod,"TNamedItem",pas.Classes.TCollectionItem,function () {
    this.$init = function () {
      pas.Classes.TCollectionItem.$init.call(this);
      this.FName = "";
    };
    this.GetDisplayName = function () {
      var Result = "";
      Result = this.FName;
      return Result;
    };
    this.SetDisplayName = function (Value) {
      var TmpInd = 0;
      if (this.FName === Value) return;
      if ((Value !== "") && $mod.TFieldDefs.isPrototypeOf(this.FCollection)) {
        TmpInd = this.FCollection.IndexOf(Value);
        if ((TmpInd >= 0) && (TmpInd !== this.GetIndex())) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SDuplicateName"),[Value,this.FCollection.$classname]);
      };
      this.FName = Value;
      pas.Classes.TCollectionItem.SetDisplayName.call(this,Value);
    };
    var $r = this.$rtti;
    $r.addProperty("Name",2,rtl.string,"FName","SetDisplayName");
  });
  rtl.createClass($mod,"TDefCollection",pas.Classes.TOwnedCollection,function () {
    this.$init = function () {
      pas.Classes.TOwnedCollection.$init.call(this);
      this.FDataset = null;
    };
    this.$final = function () {
      this.FDataset = undefined;
      pas.Classes.TOwnedCollection.$final.call(this);
    };
    this.SetItemName = function (Item) {
      var N = null;
      var TN = "";
      N = rtl.as(Item,$mod.TNamedItem);
      if (N.FName === "") {
        TN = pas.System.Copy(this.$classname,2,5) + pas.SysUtils.IntToStr(N.FID + 1);
        if (this.FDataset != null) TN = this.FDataset.FName + TN;
        N.SetDisplayName(TN);
      } else pas.Classes.TCollection.SetItemName.call(this,Item);
    };
    this.create$3 = function (ADataset, AOwner, AClass) {
      pas.Classes.TOwnedCollection.Create$2.call(this,AOwner,AClass);
      this.FDataset = ADataset;
    };
    this.IndexOf = function (AName) {
      var Result = 0;
      var i = 0;
      Result = -1;
      for (var $l1 = 0, $end2 = this.GetCount() - 1; $l1 <= $end2; $l1++) {
        i = $l1;
        if (pas.SysUtils.AnsiSameText(this.GetItem(i).FName,AName)) {
          Result = i;
          break;
        };
      };
      return Result;
    };
  });
  rtl.createClass($mod,"TFieldDef",$mod.TNamedItem,function () {
    this.$init = function () {
      $mod.TNamedItem.$init.call(this);
      this.FAttributes = {};
      this.FDataType = 0;
      this.FFieldNo = 0;
      this.FInternalCalcField = false;
      this.FPrecision = 0;
      this.FRequired = false;
      this.FSize = 0;
    };
    this.$final = function () {
      this.FAttributes = undefined;
      $mod.TNamedItem.$final.call(this);
    };
    this.GetFieldClass = function () {
      var Result = null;
      if (((this.FCollection != null) && $mod.TFieldDefs.isPrototypeOf(this.FCollection)) && (this.FCollection.FDataset != null)) {
        Result = this.FCollection.FDataset.GetFieldClass(this.FDataType)}
       else Result = null;
      return Result;
    };
    this.SetAttributes = function (AValue) {
      this.FAttributes = rtl.refSet(AValue);
      this.Changed(false);
    };
    this.SetDataType = function (AValue) {
      this.FDataType = AValue;
      this.Changed(false);
    };
    this.SetPrecision = function (AValue) {
      this.FPrecision = AValue;
      this.Changed(false);
    };
    this.SetSize = function (AValue) {
      this.FSize = AValue;
      this.Changed(false);
    };
    this.Create$1 = function (ACollection) {
      pas.Classes.TCollectionItem.Create$1.call(this,ACollection);
      this.FFieldNo = this.GetIndex() + 1;
    };
    this.Create$3 = function (AOwner, AName, ADataType, ASize, ARequired, AFieldNo) {
      pas.Classes.TCollectionItem.Create$1.call(this,AOwner);
      this.SetDisplayName(AName);
      this.FDataType = ADataType;
      this.FSize = ASize;
      this.FRequired = ARequired;
      this.FPrecision = -1;
      this.FFieldNo = AFieldNo;
    };
    this.Destroy = function () {
      pas.Classes.TCollectionItem.Destroy.call(this);
    };
    this.CreateField = function (AOwner) {
      var Result = null;
      var TheField = null;
      TheField = this.GetFieldClass();
      if (TheField === null) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SUnknownFieldType"),[this.FName]);
      Result = TheField.$create("Create$1",[AOwner]);
      try {
        Result.FFieldDef = this;
        Result.SetSize(this.FSize);
        Result.FRequired = this.FRequired;
        Result.FFieldName = this.FName;
        Result.FDisplayLabel = this.GetDisplayName();
        Result.FFieldNo = this.FFieldNo;
        Result.SetFieldType(this.FDataType);
        Result.FReadOnly = 1 in this.FAttributes;
        Result.SetDataset(this.FCollection.FDataset);
        if ($mod.TFloatField.isPrototypeOf(Result)) Result.SetPrecision(this.FPrecision);
      } catch ($e) {
        Result = rtl.freeLoc(Result);
        throw $e;
      };
      return Result;
    };
    var $r = this.$rtti;
    $r.addProperty("Attributes",2,$mod.$rtti["TFieldAttributes"],"FAttributes","SetAttributes",{Default: {}});
    $r.addProperty("DataType",2,$mod.$rtti["TFieldType"],"FDataType","SetDataType");
    $r.addProperty("Precision",2,rtl.longint,"FPrecision","SetPrecision",{Default: 0});
    $r.addProperty("Size",2,rtl.longint,"FSize","SetSize",{Default: 0});
  });
  rtl.createClass($mod,"TFieldDefs",$mod.TDefCollection,function () {
    this.GetItem$1 = function (Index) {
      var Result = null;
      Result = this.GetItem(Index);
      return Result;
    };
    this.FieldDefClass = function () {
      var Result = null;
      Result = $mod.TFieldDef;
      return Result;
    };
    this.Create$4 = function (ADataSet) {
      $mod.TDefCollection.create$3.call(this,ADataSet,this.Owner(),this.$class.FieldDefClass());
    };
    this.Add$2 = function (AName, ADataType, ASize, ARequired, AFieldNo) {
      var Result = null;
      Result = this.$class.FieldDefClass().$create("Create$3",[this,AName,ADataType,ASize,ARequired,AFieldNo]);
      return Result;
    };
    this.Add$3 = function (AName, ADataType, ASize, ARequired) {
      if (AName.length === 0) $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SNeedFieldName"),this.FDataset);
      this.BeginUpdate();
      try {
        this.Add$2(AName,ADataType,ASize,ARequired,this.GetCount() + 1);
      } finally {
        this.EndUpdate();
      };
    };
    this.Add$4 = function (AName, ADataType, ASize) {
      this.Add$3(AName,ADataType,ASize,false);
    };
    this.Assign$2 = function (FieldDefs) {
      var I = 0;
      this.Clear();
      for (var $l1 = 0, $end2 = FieldDefs.GetCount() - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        var $with3 = FieldDefs.GetItem$1(I);
        this.Add$3($with3.FName,$with3.FDataType,$with3.FSize,$with3.FRequired);
      };
    };
  });
  this.TFieldKind = {"0": "fkData", fkData: 0, "1": "fkCalculated", fkCalculated: 1, "2": "fkLookup", fkLookup: 2, "3": "fkInternalCalc", fkInternalCalc: 3};
  $mod.$rtti.$Enum("TFieldKind",{minvalue: 0, maxvalue: 3, ordtype: 1, enumtype: this.TFieldKind});
  $mod.$rtti.$MethodVar("TFieldNotifyEvent",{procsig: rtl.newTIProcSig([["Sender",$mod.$rtti["TField"]]]), methodkind: 0});
  $mod.$rtti.$MethodVar("TFieldGetTextEvent",{procsig: rtl.newTIProcSig([["Sender",$mod.$rtti["TField"]],["aText",rtl.string,1],["DisplayText",rtl.boolean]]), methodkind: 0});
  $mod.$rtti.$MethodVar("TFieldSetTextEvent",{procsig: rtl.newTIProcSig([["Sender",$mod.$rtti["TField"]],["aText",rtl.string,2]]), methodkind: 0});
  rtl.createClass($mod,"TLookupList",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FList = null;
    };
    this.$final = function () {
      this.FList = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.Create$1 = function () {
      this.FList = pas.Classes.TFPList.$create("Create");
    };
    this.Destroy = function () {
      this.Clear();
      this.FList.$destroy("Destroy");
      pas.System.TObject.Destroy.call(this);
    };
    this.Clear = function () {
      this.FList.Clear();
    };
  });
  rtl.createClass($mod,"TField",pas.Classes.TComponent,function () {
    this.$init = function () {
      pas.Classes.TComponent.$init.call(this);
      this.FAlignment = 0;
      this.FConstraintErrorMessage = "";
      this.FCustomConstraint = "";
      this.FDataSet = null;
      this.FDataType = 0;
      this.FDefaultExpression = "";
      this.FDisplayLabel = "";
      this.FDisplayWidth = 0;
      this.FFieldDef = null;
      this.FFieldKind = 0;
      this.FFieldName = "";
      this.FFieldNo = 0;
      this.FFields = null;
      this.FHasConstraints = false;
      this.FImportedConstraint = "";
      this.FKeyFields = "";
      this.FLookupCache = false;
      this.FLookupDataSet = null;
      this.FLookupKeyfields = "";
      this.FLookupresultField = "";
      this.FLookupList = null;
      this.FOffset = 0;
      this.FOnChange = null;
      this.FOnGetText = null;
      this.FOnSetText = null;
      this.FOnValidate = null;
      this.FOrigin = "";
      this.FReadOnly = false;
      this.FRequired = false;
      this.FSize = 0;
      this.FValidChars = [];
      this.FValueBuffer = undefined;
      this.FValidating = false;
      this.FVisible = false;
      this.FProviderFlags = {};
    };
    this.$final = function () {
      this.FDataSet = undefined;
      this.FFieldDef = undefined;
      this.FFields = undefined;
      this.FLookupDataSet = undefined;
      this.FLookupList = undefined;
      this.FOnChange = undefined;
      this.FOnGetText = undefined;
      this.FOnSetText = undefined;
      this.FOnValidate = undefined;
      this.FValidChars = undefined;
      this.FProviderFlags = undefined;
      pas.Classes.TComponent.$final.call(this);
    };
    this.GetIndex = function () {
      var Result = 0;
      if (this.FDataSet != null) {
        Result = this.FDataSet.FFieldList.IndexOf(this)}
       else Result = -1;
      return Result;
    };
    this.SetAlignment = function (AValue) {
      if (this.FAlignment !== AValue) {
        this.FAlignment = AValue;
        this.PropertyChanged(false);
      };
    };
    this.SetIndex = function (AValue) {
      if (this.FFields !== null) this.FFields.SetFieldIndex(this,AValue);
    };
    this.SetDisplayLabel = function (AValue) {
      if (this.FDisplayLabel !== AValue) {
        this.FDisplayLabel = AValue;
        this.PropertyChanged(true);
      };
    };
    this.SetDisplayWidth = function (AValue) {
      if (this.FDisplayWidth !== AValue) {
        this.FDisplayWidth = AValue;
        this.PropertyChanged(true);
      };
    };
    this.GetDisplayWidth = function () {
      var Result = 0;
      if (this.FDisplayWidth === 0) {
        Result = this.GetDefaultWidth()}
       else Result = this.FDisplayWidth;
      return Result;
    };
    this.SetReadOnly = function (AValue) {
      if (this.FReadOnly !== AValue) {
        this.FReadOnly = AValue;
        this.PropertyChanged(true);
      };
    };
    this.SetVisible = function (AValue) {
      if (this.FVisible !== AValue) {
        this.FVisible = AValue;
        this.PropertyChanged(true);
      };
    };
    this.IsDisplayLabelStored = function () {
      var Result = false;
      Result = this.GetDisplayName() !== this.FFieldName;
      return Result;
    };
    this.IsDisplayWidthStored = function () {
      var Result = false;
      Result = this.FDisplayWidth !== 0;
      return Result;
    };
    this.GetLookupList = function () {
      var Result = null;
      if (!(this.FLookupList != null)) this.FLookupList = $mod.TLookupList.$create("Create$1");
      Result = this.FLookupList;
      return Result;
    };
    this.CalcLookupValue = function () {
    };
    this.RaiseAccessError = function (TypeName) {
      var E = null;
      E = this.AccessError(TypeName);
      throw E;
    };
    this.AccessError = function (TypeName) {
      var Result = null;
      Result = $mod.EDatabaseError.$create("CreateFmt",[rtl.getResStr(pas.DBConst,"SInvalidTypeConversion"),[TypeName,this.FFieldName]]);
      return Result;
    };
    this.CheckInactive = function () {
      if (this.FDataSet != null) this.FDataSet.CheckInactive();
    };
    this.CheckTypeSize = function (AValue) {
      if ((AValue !== 0) && !this.IsBlob()) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SInvalidFieldSize"),[AValue]);
    };
    this.Change = function () {
      if (this.FOnChange != null) this.FOnChange(this);
    };
    this.Bind = function (Binding) {
      if (Binding && (this.FFieldKind === 2)) {
        if ((((this.FLookupDataSet === null) || (this.FLookupKeyfields === "")) || (this.FLookupresultField === "")) || (this.FKeyFields === "")) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SLookupInfoError"),[this.GetDisplayName()]);
        this.FFields.CheckFieldNames(this.FKeyFields);
        this.FLookupDataSet.Open();
        this.FLookupDataSet.FFieldList.CheckFieldNames(this.FLookupKeyfields);
        this.FLookupDataSet.FieldByName(this.FLookupresultField);
        if (this.FLookupCache) this.RefreshLookupList();
      };
    };
    this.GetAsBytes = function () {
      var Result = [];
      this.RaiseAccessError($impl.SBytes);
      Result = [];
      return Result;
    };
    this.GetAsInteger = function () {
      var Result = 0;
      this.RaiseAccessError($impl.SInteger);
      Result = 0;
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      Result = this.GetClassDesc();
      return Result;
    };
    this.GetClassDesc = function () {
      var Result = "";
      var ClassN = "";
      ClassN = pas.System.Copy(this.$classname,2,pas.System.Pos("Field",this.$classname) - 2);
      if (this.GetIsNull()) {
        Result = ("(" + pas.SysUtils.LowerCase(ClassN)) + ")"}
       else Result = ("(" + pas.SysUtils.UpperCase(ClassN)) + ")";
      return Result;
    };
    this.GetDataSize = function () {
      var Result = 0;
      Result = 0;
      return Result;
    };
    this.GetDefaultWidth = function () {
      var Result = 0;
      Result = 10;
      return Result;
    };
    this.GetDisplayName = function () {
      var Result = "";
      if (this.FDisplayLabel !== "") {
        Result = this.FDisplayLabel}
       else Result = this.FFieldName;
      return Result;
    };
    this.GetIsNull = function () {
      var Result = false;
      Result = pas.JS.isNull(this.GetData());
      return Result;
    };
    this.Notification = function (AComponent, Operation) {
      pas.Classes.TComponent.Notification.call(this,AComponent,Operation);
      if ((Operation === 1) && (AComponent === this.FLookupDataSet)) this.FLookupDataSet = null;
    };
    this.PropertyChanged = function (LayoutAffected) {
      if ((this.FDataSet !== null) && this.FDataSet.GetActive()) if (LayoutAffected) {
        this.FDataSet.DataEvent(4,0)}
       else this.FDataSet.DataEvent(2,0);
    };
    this.SetDataset = function (AValue) {
      if (AValue === this.FDataSet) return;
      if (this.FDataSet != null) {
        this.FDataSet.CheckInactive();
        this.FDataSet.FFieldList.Remove(this);
      };
      if (AValue != null) {
        AValue.CheckInactive();
        AValue.FFieldList.Add(this);
      };
      this.FDataSet = AValue;
    };
    this.SetDataType = function (AValue) {
      this.FDataType = AValue;
    };
    this.SetSize = function (AValue) {
      this.CheckInactive();
      this.$class.CheckTypeSize(AValue);
      this.FSize = AValue;
    };
    this.Create$1 = function (AOwner) {
      pas.Classes.TComponent.Create$1.call(this,AOwner);
      this.FVisible = true;
      this.FValidChars = rtl.arraySetLength(this.FValidChars,"",255);
      this.FProviderFlags = rtl.createSet(0,1);
    };
    this.Destroy = function () {
      if (this.FDataSet != null) {
        this.FDataSet.SetActive(false);
        if (this.FFields != null) this.FFields.Remove(this);
      };
      rtl.free(this,"FLookupList");
      pas.Classes.TComponent.Destroy.call(this);
    };
    this.GetData = function () {
      var Result = undefined;
      if (this.FDataSet === null) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SNoDataset"),[this.FFieldName]);
      if (this.FValidating) {
        Result = this.FValueBuffer}
       else Result = this.FDataSet.GetFieldData(this);
      return Result;
    };
    this.IsBlob = function () {
      var Result = false;
      Result = false;
      return Result;
    };
    this.RefreshLookupList = function () {
      var tmpActive = false;
      if (((!(this.FLookupDataSet != null) || (this.FLookupKeyfields.length === 0)) || (this.FLookupresultField.length === 0)) || (this.FKeyFields.length === 0)) return;
      tmpActive = this.FLookupDataSet.GetActive();
      try {
        this.FLookupDataSet.SetActive(true);
        this.FFields.CheckFieldNames(this.FKeyFields);
        this.FLookupDataSet.FFieldList.CheckFieldNames(this.FLookupKeyfields);
        this.FLookupDataSet.FieldByName(this.FLookupresultField);
        this.GetLookupList().Clear();
        this.FLookupDataSet.DisableControls();
        try {
          this.FLookupDataSet.First();
          while (!this.FLookupDataSet.FEOF) {
            this.FLookupDataSet.Next();
          };
        } finally {
          this.FLookupDataSet.EnableControls();
        };
      } finally {
        this.FLookupDataSet.SetActive(tmpActive);
      };
    };
    this.SetFieldType = function (AValue) {
    };
    var $r = this.$rtti;
    $r.addProperty("Alignment",2,pas.Classes.$rtti["TAlignment"],"FAlignment","SetAlignment",{Default: pas.Classes.TAlignment.taLeftJustify});
    $r.addProperty("CustomConstraint",0,rtl.string,"FCustomConstraint","FCustomConstraint");
    $r.addProperty("ConstraintErrorMessage",0,rtl.string,"FConstraintErrorMessage","FConstraintErrorMessage");
    $r.addProperty("DefaultExpression",0,rtl.string,"FDefaultExpression","FDefaultExpression");
    $r.addProperty("DisplayLabel",15,rtl.string,"GetDisplayName","SetDisplayLabel",{stored: "IsDisplayLabelStored"});
    $r.addProperty("DisplayWidth",15,rtl.longint,"GetDisplayWidth","SetDisplayWidth",{stored: "IsDisplayWidthStored"});
    $r.addProperty("FieldKind",0,$mod.$rtti["TFieldKind"],"FFieldKind","FFieldKind");
    $r.addProperty("FieldName",0,rtl.string,"FFieldName","FFieldName");
    $r.addProperty("HasConstraints",0,rtl.boolean,"FHasConstraints","");
    $r.addProperty("Index",3,rtl.longint,"GetIndex","SetIndex");
    $r.addProperty("ImportedConstraint",0,rtl.string,"FImportedConstraint","FImportedConstraint");
    $r.addProperty("KeyFields",0,rtl.string,"FKeyFields","FKeyFields");
    $r.addProperty("LookupCache",0,rtl.boolean,"FLookupCache","FLookupCache");
    $r.addProperty("LookupDataSet",0,$mod.$rtti["TDataSet"],"FLookupDataSet","FLookupDataSet");
    $r.addProperty("LookupKeyFields",0,rtl.string,"FLookupKeyfields","FLookupKeyfields");
    $r.addProperty("LookupResultField",0,rtl.string,"FLookupresultField","FLookupresultField");
    $r.addProperty("Origin",0,rtl.string,"FOrigin","FOrigin");
    $r.addProperty("ProviderFlags",0,$mod.$rtti["TProviderFlags"],"FProviderFlags","FProviderFlags");
    $r.addProperty("ReadOnly",2,rtl.boolean,"FReadOnly","SetReadOnly");
    $r.addProperty("Required",0,rtl.boolean,"FRequired","FRequired");
    $r.addProperty("Visible",2,rtl.boolean,"FVisible","SetVisible",{Default: true});
    $r.addProperty("OnChange",0,$mod.$rtti["TFieldNotifyEvent"],"FOnChange","FOnChange");
    $r.addProperty("OnGetText",0,$mod.$rtti["TFieldGetTextEvent"],"FOnGetText","FOnGetText");
    $r.addProperty("OnSetText",0,$mod.$rtti["TFieldSetTextEvent"],"FOnSetText","FOnSetText");
    $r.addProperty("OnValidate",0,$mod.$rtti["TFieldNotifyEvent"],"FOnValidate","FOnValidate");
  });
  rtl.createClass($mod,"TStringField",$mod.TField,function () {
    this.$init = function () {
      $mod.TField.$init.call(this);
      this.FFixedChar = false;
      this.FTransliterate = false;
    };
    this.CheckTypeSize = function (AValue) {
      if (AValue < 0) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SInvalidFieldSize"),[AValue]);
    };
    this.GetAsInteger = function () {
      var Result = 0;
      Result = pas.SysUtils.StrToInt(this.GetAsString());
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var V = undefined;
      V = this.GetData();
      if (rtl.isString(V)) {
        Result = "" + V}
       else Result = "";
      return Result;
    };
    this.GetDefaultWidth = function () {
      var Result = 0;
      Result = this.FSize;
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TField.Create$1.call(this,AOwner);
      this.SetDataType(1);
      this.FFixedChar = false;
      this.FTransliterate = false;
      this.FSize = 20;
    };
    this.SetFieldType = function (AValue) {
      if (AValue in rtl.createSet(1,12)) this.SetDataType(AValue);
    };
    var $r = this.$rtti;
    $r.addProperty("Size",2,rtl.longint,"FSize","SetSize",{Default: 20});
  });
  rtl.createClass($mod,"TNumericField",$mod.TField,function () {
    this.$init = function () {
      $mod.TField.$init.call(this);
      this.FDisplayFormat = "";
      this.FEditFormat = "";
    };
    this.CheckTypeSize = function (AValue) {
      if (AValue > 16) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SInvalidFieldSize"),[AValue]);
    };
    this.rangeError = function (AValue, Min, Max) {
      $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SRangeError"),[AValue,Min,Max,this.FFieldName]);
    };
    this.SetDisplayFormat = function (AValue) {
      if (this.FDisplayFormat !== AValue) {
        this.FDisplayFormat = AValue;
        this.PropertyChanged(true);
      };
    };
    this.SetEditFormat = function (AValue) {
      if (this.FEditFormat !== AValue) {
        this.FEditFormat = AValue;
        this.PropertyChanged(true);
      };
    };
    this.Create$1 = function (AOwner) {
      $mod.TField.Create$1.call(this,AOwner);
      this.SetAlignment(1);
    };
    var $r = this.$rtti;
    $r.addProperty("Alignment",2,pas.Classes.$rtti["TAlignment"],"FAlignment","SetAlignment",{Default: pas.Classes.TAlignment.taRightJustify});
    $r.addProperty("DisplayFormat",2,rtl.string,"FDisplayFormat","SetDisplayFormat");
    $r.addProperty("EditFormat",2,rtl.string,"FEditFormat","SetEditFormat");
  });
  rtl.createClass($mod,"TIntegerField",$mod.TNumericField,function () {
    this.$init = function () {
      $mod.TNumericField.$init.call(this);
      this.FMinValue = 0;
      this.FMaxValue = 0;
      this.FMinRange = 0;
      this.FMaxRange = 0;
    };
    this.SetMinValue = function (AValue) {
      if ((AValue >= this.FMinRange) && (AValue <= this.FMaxRange)) {
        this.FMinValue = AValue}
       else this.rangeError(AValue,this.FMinRange,this.FMaxRange);
    };
    this.SetMaxValue = function (AValue) {
      if ((AValue >= this.FMinRange) && (AValue <= this.FMaxRange)) {
        this.FMaxValue = AValue}
       else this.rangeError(AValue,this.FMinRange,this.FMaxRange);
    };
    this.GetAsInteger = function () {
      var Result = 0;
      if (!this.GetValue({get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }})) Result = 0;
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var L = 0;
      if (this.GetValue({get: function () {
          return L;
        }, set: function (v) {
          L = v;
        }})) {
        Result = pas.SysUtils.IntToStr(L)}
       else Result = "";
      return Result;
    };
    this.GetValue = function (AValue) {
      var Result = false;
      var V = undefined;
      V = this.GetData();
      Result = pas.JS.isInteger(V);
      if (Result) AValue.set(Math.floor(V));
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TNumericField.Create$1.call(this,AOwner);
      this.SetDataType(2);
      this.FMinRange = -2147483648;
      this.FMaxRange = 2147483647;
    };
    var $r = this.$rtti;
    $r.addProperty("MaxValue",2,rtl.longint,"FMaxValue","SetMaxValue",{Default: 0});
    $r.addProperty("MinValue",2,rtl.longint,"FMinValue","SetMinValue",{Default: 0});
  });
  rtl.createClass($mod,"TLargeintField",$mod.TNumericField,function () {
    this.$init = function () {
      $mod.TNumericField.$init.call(this);
      this.FMinValue = 0;
      this.FMaxValue = 0;
      this.FMinRange = 0;
      this.FMaxRange = 0;
    };
    this.SetMinValue = function (AValue) {
      if ((AValue >= this.FMinRange) && (AValue <= this.FMaxRange)) {
        this.FMinValue = AValue}
       else this.rangeError(AValue,this.FMinRange,this.FMaxRange);
    };
    this.SetMaxValue = function (AValue) {
      if ((AValue >= this.FMinRange) && (AValue <= this.FMaxRange)) {
        this.FMaxValue = AValue}
       else this.rangeError(AValue,this.FMinRange,this.FMaxRange);
    };
    this.GetAsInteger = function () {
      var Result = 0;
      Result = this.GetAsLargeInt();
      return Result;
    };
    this.GetAsLargeInt = function () {
      var Result = 0;
      if (!this.GetValue({get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }})) Result = 0;
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var L = 0;
      if (this.GetValue({get: function () {
          return L;
        }, set: function (v) {
          L = v;
        }})) {
        Result = pas.SysUtils.IntToStr(L)}
       else Result = "";
      return Result;
    };
    this.GetValue = function (AValue) {
      var Result = false;
      var P = undefined;
      P = this.GetData();
      Result = pas.JS.isInteger(P);
      if (Result) AValue.set(Math.floor(P));
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TNumericField.Create$1.call(this,AOwner);
      this.SetDataType(3);
      this.FMinRange = -4503599627370496;
      this.FMaxRange = 4503599627370495;
    };
    var $r = this.$rtti;
    $r.addProperty("MaxValue",2,rtl.nativeint,"FMaxValue","SetMaxValue",{Default: 0});
    $r.addProperty("MinValue",2,rtl.nativeint,"FMinValue","SetMinValue",{Default: 0});
  });
  rtl.createClass($mod,"TAutoIncField",$mod.TIntegerField,function () {
    this.Create$1 = function (AOwner) {
      $mod.TIntegerField.Create$1.call(this,AOwner);
      this.SetDataType(9);
    };
  });
  rtl.createClass($mod,"TFloatField",$mod.TNumericField,function () {
    this.$init = function () {
      $mod.TNumericField.$init.call(this);
      this.FCurrency = false;
      this.FMaxValue = 0.0;
      this.FMinValue = 0.0;
      this.FPrecision = 0;
    };
    this.SetCurrency = function (AValue) {
      if (this.FCurrency === AValue) return;
      this.FCurrency = AValue;
    };
    this.SetPrecision = function (AValue) {
      if ((AValue === -1) || (AValue > 1)) {
        this.FPrecision = AValue}
       else this.FPrecision = 2;
    };
    this.GetAsFloat = function () {
      var Result = 0.0;
      var P = undefined;
      P = this.GetData();
      if (rtl.isNumber(P)) {
        Result = rtl.getNumber(P)}
       else Result = 0.0;
      return Result;
    };
    this.GetAsInteger = function () {
      var Result = 0;
      Result = Math.round(this.GetAsFloat());
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var P = undefined;
      P = this.GetData();
      if (rtl.isNumber(P)) {
        Result = pas.SysUtils.FloatToStr(rtl.getNumber(P))}
       else Result = "";
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TNumericField.Create$1.call(this,AOwner);
      this.SetDataType(5);
      this.FPrecision = 15;
    };
    var $r = this.$rtti;
    $r.addProperty("Currency",2,rtl.boolean,"FCurrency","SetCurrency",{Default: false});
    $r.addProperty("MaxValue",0,rtl.double,"FMaxValue","FMaxValue");
    $r.addProperty("MinValue",0,rtl.double,"FMinValue","FMinValue");
    $r.addProperty("Precision",2,rtl.longint,"FPrecision","SetPrecision",{Default: 15});
  });
  rtl.createClass($mod,"TBooleanField",$mod.TField,function () {
    this.$init = function () {
      $mod.TField.$init.call(this);
      this.FDisplayValues = "";
      this.FDisplays = rtl.arraySetLength(null,"",2,2);
    };
    this.$final = function () {
      this.FDisplays = undefined;
      $mod.TField.$final.call(this);
    };
    this.SetDisplayValues = function (AValue) {
      var I = 0;
      if (this.FDisplayValues !== AValue) {
        I = pas.System.Pos(";",AValue);
        if ((I < 2) || (I === AValue.length)) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SInvalidDisplayValues"),[AValue]);
        this.FDisplayValues = AValue;
        this.FDisplays[0][1] = pas.System.Copy(AValue,1,I - 1);
        this.FDisplays[1][1] = pas.SysUtils.UpperCase(this.FDisplays[0][1]);
        this.FDisplays[0][0] = pas.System.Copy(AValue,I + 1,AValue.length - I);
        this.FDisplays[1][0] = pas.SysUtils.UpperCase(this.FDisplays[0][0]);
        this.PropertyChanged(true);
      };
    };
    this.GetAsBoolean = function () {
      var Result = false;
      var P = undefined;
      P = this.GetData();
      if (pas.JS.isBoolean(P)) {
        Result = !(P == false)}
       else Result = false;
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var P = undefined;
      P = this.GetData();
      if (pas.JS.isBoolean(P)) {
        Result = this.FDisplays[0][+!(P == false)]}
       else Result = "";
      return Result;
    };
    this.GetAsInteger = function () {
      var Result = 0;
      Result = this.GetAsBoolean() + 0;
      return Result;
    };
    this.GetDefaultWidth = function () {
      var Result = 0;
      Result = this.FDisplays[0][0].length;
      if (Result < this.FDisplays[0][1].length) Result = this.FDisplays[0][1].length;
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TField.Create$1.call(this,AOwner);
      this.SetDataType(4);
      this.SetDisplayValues("True;False");
    };
    var $r = this.$rtti;
    $r.addProperty("DisplayValues",2,rtl.string,"FDisplayValues","SetDisplayValues");
  });
  rtl.createClass($mod,"TDateTimeField",$mod.TField,function () {
    this.$init = function () {
      $mod.TField.$init.call(this);
      this.FDisplayFormat = "";
    };
    this.SetDisplayFormat = function (AValue) {
      if (this.FDisplayFormat !== AValue) {
        this.FDisplayFormat = AValue;
        this.PropertyChanged(true);
      };
    };
    this.ConvertToDateTime = function (aValue, aRaiseError) {
      var Result = 0.0;
      if (this.FDataSet != null) {
        Result = this.FDataSet.ConvertToDateTime(aValue,aRaiseError)}
       else Result = $mod.TDataSet.DefaultConvertToDateTime(aValue,aRaiseError);
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      this.GetText({get: function () {
          return Result;
        }, set: function (v) {
          Result = v;
        }},false);
      return Result;
    };
    this.GetDataSize = function () {
      var Result = 0;
      Result = $mod.TField.GetDataSize.call(this);
      return Result;
    };
    this.GetText = function (AText, ADisplayText) {
      var R = 0.0;
      var F = "";
      R = this.ConvertToDateTime(this.GetData(),false);
      if (R === 0) {
        AText.set("")}
       else {
        if (ADisplayText && (this.FDisplayFormat.length !== 0)) {
          F = this.FDisplayFormat}
         else {
          var $tmp1 = this.FDataType;
          if ($tmp1 === 7) {
            F = pas.SysUtils.LongTimeFormat}
           else if ($tmp1 === 6) {
            F = pas.SysUtils.ShortDateFormat}
           else {
            F = "c";
          };
        };
        AText.set(pas.SysUtils.FormatDateTime(F,R));
      };
    };
    this.Create$1 = function (AOwner) {
      $mod.TField.Create$1.call(this,AOwner);
      this.SetDataType(8);
    };
    var $r = this.$rtti;
    $r.addProperty("DisplayFormat",2,rtl.string,"FDisplayFormat","SetDisplayFormat");
  });
  rtl.createClass($mod,"TDateField",$mod.TDateTimeField,function () {
    this.Create$1 = function (AOwner) {
      $mod.TDateTimeField.Create$1.call(this,AOwner);
      this.SetDataType(6);
    };
  });
  rtl.createClass($mod,"TTimeField",$mod.TDateTimeField,function () {
    this.Create$1 = function (AOwner) {
      $mod.TDateTimeField.Create$1.call(this,AOwner);
      this.SetDataType(7);
    };
  });
  rtl.createClass($mod,"TBinaryField",$mod.TField,function () {
    this.CheckTypeSize = function (AValue) {
      if (AValue < 1) $mod.DatabaseErrorFmt(rtl.getResStr(pas.DBConst,"SInvalidFieldSize"),[AValue]);
    };
    this.BlobToBytes = function (aValue) {
      var Result = [];
      if (this.FDataSet != null) {
        Result = this.FDataSet.BlobDataToBytes(aValue)}
       else Result = $mod.TDataSet.DefaultBlobDataToBytes(aValue);
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var V = undefined;
      var S = [];
      var I = 0;
      Result = "";
      V = this.GetData();
      if (V != null) {
        S = this.BlobToBytes(V);
        for (var $l1 = 0, $end2 = rtl.length(S); $l1 <= $end2; $l1++) {
          I = $l1;
          Result.concat(String.fromCharCode(S[I]));
        };
      };
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TField.Create$1.call(this,AOwner);
    };
    var $r = this.$rtti;
    $r.addProperty("Size",2,rtl.longint,"FSize","SetSize",{Default: 16});
  });
  rtl.createClass($mod,"TBlobField",$mod.TBinaryField,function () {
    this.$init = function () {
      $mod.TBinaryField.$init.call(this);
      this.FModified = false;
    };
    this.GetBlobSize = function () {
      var Result = 0;
      var B = [];
      B = this.GetAsBytes();
      Result = rtl.length(B);
      return Result;
    };
    this.GetIsNull = function () {
      var Result = false;
      if (!this.FModified) {
        Result = $mod.TField.GetIsNull.call(this)}
       else Result = this.GetBlobSize() === 0;
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TBinaryField.Create$1.call(this,AOwner);
      this.SetDataType(10);
    };
    this.IsBlob = function () {
      var Result = false;
      Result = true;
      return Result;
    };
    this.SetFieldType = function (AValue) {
      if (AValue in $mod.ftBlobTypes) this.SetDataType(AValue);
    };
    var $r = this.$rtti;
    $r.addProperty("Size",2,rtl.longint,"FSize","SetSize",{Default: 0});
  });
  rtl.createClass($mod,"TMemoField",$mod.TBlobField,function () {
    this.Create$1 = function (AOwner) {
      $mod.TBlobField.Create$1.call(this,AOwner);
      this.SetDataType(11);
    };
  });
  rtl.createClass($mod,"TVariantField",$mod.TField,function () {
    this.CheckTypeSize = function (aValue) {
    };
    this.GetAsInteger = function () {
      var Result = 0;
      var V = undefined;
      V = this.GetData();
      if (pas.JS.isInteger(V)) {
        Result = Math.floor(V)}
       else if (rtl.isString(V)) {
        Result = parseInt("" + V)}
       else this.RaiseAccessError("Variant");
      return Result;
    };
    this.GetAsString = function () {
      var Result = "";
      var V = undefined;
      V = this.GetData();
      if (pas.JS.isInteger(V)) {
        Result = pas.SysUtils.IntToStr(Math.floor(V))}
       else if (rtl.isNumber(V)) {
        Result = pas.SysUtils.FloatToStr(rtl.getNumber(V))}
       else if (rtl.isString(V)) {
        Result = "" + V}
       else this.RaiseAccessError("Variant");
      return Result;
    };
    this.Create$1 = function (AOwner) {
      $mod.TField.Create$1.call(this,AOwner);
      this.SetDataType(13);
    };
  });
  rtl.createClass($mod,"TCheckConstraint",pas.Classes.TCollectionItem,function () {
    this.$init = function () {
      pas.Classes.TCollectionItem.$init.call(this);
      this.FCustomConstraint = "";
      this.FErrorMessage = "";
      this.FFromDictionary = false;
      this.FImportedConstraint = "";
    };
    var $r = this.$rtti;
    $r.addProperty("CustomConstraint",0,rtl.string,"FCustomConstraint","FCustomConstraint");
    $r.addProperty("ErrorMessage",0,rtl.string,"FErrorMessage","FErrorMessage");
    $r.addProperty("FromDictionary",0,rtl.boolean,"FFromDictionary","FFromDictionary");
    $r.addProperty("ImportedConstraint",0,rtl.string,"FImportedConstraint","FImportedConstraint");
  });
  rtl.createClass($mod,"TCheckConstraints",pas.Classes.TCollection,function () {
    this.GetOwner = function () {
      var Result = null;
      Result = null;
      return Result;
    };
    this.Create$2 = function (AOwner) {
      pas.Classes.TCollection.Create$1.call(this,$mod.TCheckConstraint);
    };
  });
  rtl.createClass($mod,"TFields",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FDataset = null;
      this.FFieldList = null;
      this.FOnChange = null;
      this.FValidFieldKinds = {};
    };
    this.$final = function () {
      this.FDataset = undefined;
      this.FFieldList = undefined;
      this.FOnChange = undefined;
      this.FValidFieldKinds = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.ClearFieldDefs = function () {
      var i = 0;
      for (var $l1 = 0, $end2 = this.GetCount() - 1; $l1 <= $end2; $l1++) {
        i = $l1;
        this.GetField(i).FFieldDef = null;
      };
    };
    this.Changed = function () {
      if ((this.FDataset !== null) && !(3 in this.FDataset.FComponentState)) this.FDataset.DataEvent(9,0);
      if (this.FOnChange != null) this.FOnChange(this);
    };
    this.GetCount = function () {
      var Result = 0;
      Result = this.FFieldList.FCount;
      return Result;
    };
    this.GetField = function (Index) {
      var Result = null;
      Result = rtl.getObject(this.FFieldList.Get(Index));
      return Result;
    };
    this.SetFieldIndex = function (Field, Value) {
      var Old = 0;
      Old = this.FFieldList.IndexOf(Field);
      if (Old === -1) return;
      if (Value < 0) Value = 0;
      if (Value >= this.GetCount()) Value = this.GetCount() - 1;
      if (Value !== Old) {
        this.FFieldList.Delete(Old);
        this.FFieldList.Insert(Value,Field);
        Field.PropertyChanged(true);
        this.Changed();
      };
    };
    this.Create$1 = function (ADataset) {
      this.FDataset = ADataset;
      this.FFieldList = pas.Classes.TFPList.$create("Create");
      this.FValidFieldKinds = rtl.createSet(null,0,3);
    };
    this.Destroy = function () {
      if (this.FFieldList != null) this.Clear();
      pas.SysUtils.FreeAndNil({p: this, get: function () {
          return this.p.FFieldList;
        }, set: function (v) {
          this.p.FFieldList = v;
        }});
      pas.System.TObject.Destroy.call(this);
    };
    this.Add = function (Field) {
      this.CheckFieldName(Field.FFieldName);
      this.FFieldList.Add(Field);
      Field.FFields = this;
      this.Changed();
    };
    this.CheckFieldName = function (Value) {
      if (this.FindField(Value) !== null) $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SDuplicateFieldName"),[Value],this.FDataset);
    };
    this.CheckFieldNames = function (Value) {
      var N = "";
      var StrPos = 0;
      if (Value === "") return;
      StrPos = 1;
      do {
        N = $mod.ExtractFieldName(Value,{get: function () {
            return StrPos;
          }, set: function (v) {
            StrPos = v;
          }});
        this.FieldByName(N);
      } while (!(StrPos > Value.length));
    };
    this.Clear = function () {
      var AField = null;
      while (this.FFieldList.FCount > 0) {
        AField = rtl.getObject(this.FFieldList.Last());
        AField.FDataSet = null;
        AField = rtl.freeLoc(AField);
        this.FFieldList.Delete(this.FFieldList.FCount - 1);
      };
      this.Changed();
    };
    this.FindField = function (Value) {
      var Result = null;
      var S = "";
      var I = 0;
      S = pas.SysUtils.UpperCase(Value);
      for (var $l1 = 0, $end2 = this.FFieldList.FCount - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        Result = rtl.getObject(this.FFieldList.Get(I));
        if (S === pas.SysUtils.UpperCase(Result.FFieldName)) {
          return Result;
        };
      };
      Result = null;
      return Result;
    };
    this.FieldByName = function (Value) {
      var Result = null;
      Result = this.FindField(Value);
      if (Result === null) $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SFieldNotFound"),[Value],this.FDataset);
      return Result;
    };
    this.IndexOf = function (Field) {
      var Result = 0;
      Result = this.FFieldList.IndexOf(Field);
      return Result;
    };
    this.Remove = function (Value) {
      this.FFieldList.Remove(Value);
      Value.FFields = null;
      this.Changed();
    };
  });
  this.TBookmarkFlag = {"0": "bfCurrent", bfCurrent: 0, "1": "bfBOF", bfBOF: 1, "2": "bfEOF", bfEOF: 2, "3": "bfInserted", bfInserted: 3};
  this.TBookmark = function (s) {
    if (s) {
      this.Data = s.Data;
    } else {
      this.Data = undefined;
    };
    this.$equal = function (b) {
      return this.Data === b.Data;
    };
  };
  this.TGetMode = {"0": "gmCurrent", gmCurrent: 0, "1": "gmNext", gmNext: 1, "2": "gmPrior", gmPrior: 2};
  this.TGetResult = {"0": "grOK", grOK: 0, "1": "grBOF", grBOF: 1, "2": "grEOF", grEOF: 2, "3": "grError", grError: 3};
  this.TResyncMode$a = {"0": "rmExact", rmExact: 0, "1": "rmCenter", rmCenter: 1};
  this.TDataAction = {"0": "daFail", daFail: 0, "1": "daAbort", daAbort: 1, "2": "daRetry", daRetry: 2};
  $mod.$rtti.$Enum("TDataAction",{minvalue: 0, maxvalue: 2, ordtype: 1, enumtype: this.TDataAction});
  $mod.$rtti.$MethodVar("TDataSetNotifyEvent",{procsig: rtl.newTIProcSig([["DataSet",$mod.$rtti["TDataSet"]]]), methodkind: 0});
  $mod.$rtti.$MethodVar("TDataSetErrorEvent",{procsig: rtl.newTIProcSig([["DataSet",$mod.$rtti["TDataSet"]],["E",$mod.$rtti["EDatabaseError"]],["DataAction",$mod.$rtti["TDataAction"],1]]), methodkind: 0});
  this.TLoadOption = {"0": "loNoOpen", loNoOpen: 0, "1": "loNoEvents", loNoEvents: 1, "2": "loAtEOF", loAtEOF: 2};
  $mod.$rtti.$MethodVar("TFilterRecordEvent",{procsig: rtl.newTIProcSig([["DataSet",$mod.$rtti["TDataSet"]],["Accept",rtl.boolean,1]]), methodkind: 0});
  this.TRecordState = {"0": "rsNew", rsNew: 0, "1": "rsClean", rsClean: 1, "2": "rsUpdate", rsUpdate: 2, "3": "rsDelete", rsDelete: 3};
  this.TDataRecord = function (s) {
    if (s) {
      this.data = s.data;
      this.state = s.state;
      this.bookmark = s.bookmark;
      this.bookmarkFlag = s.bookmarkFlag;
    } else {
      this.data = undefined;
      this.state = 0;
      this.bookmark = undefined;
      this.bookmarkFlag = 0;
    };
    this.$equal = function (b) {
      return (this.data === b.data) && ((this.state === b.state) && ((this.bookmark === b.bookmark) && (this.bookmarkFlag === b.bookmarkFlag)));
    };
  };
  rtl.createClass($mod,"TDataSet",pas.Classes.TComponent,function () {
    this.$init = function () {
      pas.Classes.TComponent.$init.call(this);
      this.FAfterLoad = null;
      this.FBeforeLoad = null;
      this.FBlockReadSize = 0;
      this.FCalcBuffer = new $mod.TDataRecord();
      this.FCalcFieldsSize = 0;
      this.FOnLoadFail = null;
      this.FOpenAfterRead = false;
      this.FActiveRecord = 0;
      this.FAfterCancel = null;
      this.FAfterClose = null;
      this.FAfterDelete = null;
      this.FAfterEdit = null;
      this.FAfterInsert = null;
      this.FAfterOpen = null;
      this.FAfterPost = null;
      this.FAfterScroll = null;
      this.FAutoCalcFields = false;
      this.FBOF = false;
      this.FBeforeCancel = null;
      this.FBeforeClose = null;
      this.FBeforeDelete = null;
      this.FBeforeEdit = null;
      this.FBeforeInsert = null;
      this.FBeforeOpen = null;
      this.FBeforePost = null;
      this.FBeforeScroll = null;
      this.FBlobFieldCount = 0;
      this.FBuffers = [];
      this.FBufferCount = 0;
      this.FConstraints = null;
      this.FDisableControlsCount = 0;
      this.FDisableControlsState = 0;
      this.FCurrentRecord = 0;
      this.FDataSources = null;
      this.FDefaultFields = false;
      this.FEOF = false;
      this.FEnableControlsEvent = 0;
      this.FFieldList = null;
      this.FFieldDefs = null;
      this.FInternalCalcFields = false;
      this.FModified = false;
      this.FOnCalcFields = null;
      this.FOnDeleteError = null;
      this.FOnEditError = null;
      this.FOnFilterRecord = null;
      this.FOnNewRecord = null;
      this.FOnPostError = null;
      this.FRecordCount = 0;
      this.FIsUniDirectional = false;
      this.FState = 0;
      this.FInternalOpenComplete = false;
      this.FDataProxy = null;
      this.FDataRequestID = 0;
      this.FChangeList = null;
    };
    this.$final = function () {
      this.FAfterLoad = undefined;
      this.FBeforeLoad = undefined;
      this.FCalcBuffer = undefined;
      this.FOnLoadFail = undefined;
      this.FAfterCancel = undefined;
      this.FAfterClose = undefined;
      this.FAfterDelete = undefined;
      this.FAfterEdit = undefined;
      this.FAfterInsert = undefined;
      this.FAfterOpen = undefined;
      this.FAfterPost = undefined;
      this.FAfterScroll = undefined;
      this.FBeforeCancel = undefined;
      this.FBeforeClose = undefined;
      this.FBeforeDelete = undefined;
      this.FBeforeEdit = undefined;
      this.FBeforeInsert = undefined;
      this.FBeforeOpen = undefined;
      this.FBeforePost = undefined;
      this.FBeforeScroll = undefined;
      this.FBuffers = undefined;
      this.FConstraints = undefined;
      this.FDataSources = undefined;
      this.FFieldList = undefined;
      this.FFieldDefs = undefined;
      this.FOnCalcFields = undefined;
      this.FOnDeleteError = undefined;
      this.FOnEditError = undefined;
      this.FOnFilterRecord = undefined;
      this.FOnNewRecord = undefined;
      this.FOnPostError = undefined;
      this.FDataProxy = undefined;
      this.FChangeList = undefined;
      pas.Classes.TComponent.$final.call(this);
    };
    this.DoInternalOpen = function () {
      this.InternalOpen();
      this.FInternalOpenComplete = true;
      this.FRecordCount = 0;
      this.RecalcBufListSize();
      this.FBOF = true;
      this.FEOF = this.FRecordCount === 0;
      if (this.GetDataProxy() != null) this.InitChangeList();
    };
    this.GetBufferCount = function () {
      var Result = 0;
      Result = rtl.length(this.FBuffers);
      return Result;
    };
    this.GetDataProxy = function () {
      var Result = null;
      if (this.FDataProxy === null) this.SetDataProxy(this.DoGetDataProxy());
      Result = this.FDataProxy;
      return Result;
    };
    this.RegisterDataSource = function (ADataSource) {
      this.FDataSources.Add(ADataSource);
      this.RecalcBufListSize();
    };
    this.SetDataProxy = function (AValue) {
      if (AValue === this.FDataProxy) return;
      if (this.FDataProxy != null) this.FDataProxy.RemoveFreeNotification(this);
      this.FDataProxy = AValue;
      if (this.FDataProxy != null) this.FDataProxy.FreeNotification(this);
    };
    this.ShiftBuffersForward = function () {
      var TempBuf = new $mod.TDataRecord();
      var I = 0;
      TempBuf = new $mod.TDataRecord(this.FBuffers[this.FBufferCount]);
      for (var $l1 = this.FBufferCount; $l1 >= 1; $l1--) {
        I = $l1;
        this.FBuffers[I] = new $mod.TDataRecord(this.FBuffers[I - 1]);
      };
      this.FBuffers[0] = new $mod.TDataRecord(TempBuf);
    };
    this.ShiftBuffersBackward = function () {
      var TempBuf = new $mod.TDataRecord();
      var I = 0;
      TempBuf = new $mod.TDataRecord(this.FBuffers[0]);
      for (var $l1 = 1, $end2 = this.FBufferCount; $l1 <= $end2; $l1++) {
        I = $l1;
        this.FBuffers[I - 1] = new $mod.TDataRecord(this.FBuffers[I]);
      };
      this.FBuffers[this.GetBufferCount()] = new $mod.TDataRecord(TempBuf);
    };
    this.TryDoing = function (P, Ev) {
      var Result = false;
      var Retry = 0;
      Result = true;
      Retry = 2;
      while (Retry === 2) try {
        this.UpdateCursorPos();
        P();
        return Result;
      } catch ($e) {
        if ($mod.EDatabaseError.isPrototypeOf($e)) {
          var E = $e;
          Retry = 0;
          if (Ev != null) Ev(this,E,{get: function () {
              return Retry;
            }, set: function (v) {
              Retry = v;
            }});
          var $tmp1 = Retry;
          if ($tmp1 === 0) {
            throw $e}
           else if ($tmp1 === 1) pas.SysUtils.Abort();
        } else {
          throw $e;
        }
      };
      return Result;
    };
    this.GetActive = function () {
      var Result = false;
      Result = (this.FState !== 0) && (this.FState !== 12);
      return Result;
    };
    this.UnRegisterDataSource = function (ADataSource) {
      this.FDataSources.Remove(ADataSource);
    };
    this.SetFieldDefs = function (AFieldDefs) {
      this.FFieldList.ClearFieldDefs();
      this.FFieldDefs.Assign$2(AFieldDefs);
    };
    this.HandleRequestresponse = function (ARequest) {
      var DataAdded = false;
      if (!(ARequest != null)) return;
      var $tmp1 = ARequest.FSuccess;
      if ($tmp1 === 0) {
        if (this.FOnLoadFail != null) this.FOnLoadFail(this,ARequest.FRequestID,ARequest.FErrorMsg);
      } else if (($tmp1 === 1) || ($tmp1 === 2)) {
        DataAdded = false;
        if (ARequest.FEvent != null) ARequest.FEvent(this,ARequest.FData);
        if (ARequest.FSuccess !== 1) DataAdded = this.DataPacketReceived(ARequest);
        if (!(this.GetActive() || (0 in ARequest.FLoadOptions))) {
          if (!(1 in ARequest.FLoadOptions)) this.DoAfterLoad();
          this.Open();
        } else {
          if ((2 in ARequest.FLoadOptions) && DataAdded) this.FEOF = false;
          if (!(1 in ARequest.FLoadOptions)) this.DoAfterLoad();
        };
      };
      ARequest.$destroy("Destroy");
    };
    this.DataPacketReceived = function (ARequest) {
      var Result = false;
      Result = false;
      return Result;
    };
    this.DoLoad = function (aOptions, aAfterLoad) {
      var Result = false;
      var Request = null;
      if (!(1 in aOptions)) this.DoBeforeLoad();
      Result = this.GetDataProxy() !== null;
      if (!Result) return Result;
      Request = this.GetDataProxy().GetDataRequest(rtl.refSet(aOptions),rtl.createCallback(this,"HandleRequestresponse"),aAfterLoad);
      Request.FDataset = this;
      if (this.GetActive()) Request.FBookmark = new $mod.TBookmark(this.GetBookmark());
      this.FDataRequestID += 1;
      Request.FRequestID = this.FDataRequestID;
      this.GetDataProxy().DoGetData(Request);
      return Result;
    };
    this.DoGetDataProxy = function () {
      var Result = null;
      Result = null;
      return Result;
    };
    this.InitChangeList = function () {
      this.DoneChangeList();
      this.FChangeList = pas.Classes.TFPList.$create("Create");
    };
    this.DoneChangeList = function () {
      this.ClearChangeList();
      pas.SysUtils.FreeAndNil({p: this, get: function () {
          return this.p.FChangeList;
        }, set: function (v) {
          this.p.FChangeList = v;
        }});
    };
    this.ClearChangeList = function () {
      var I = 0;
      if (!(this.FChangeList != null)) return;
      for (var $l1 = 0, $end2 = this.FChangeList.FCount - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        rtl.getObject(this.FChangeList.Get(I)).$destroy("Destroy");
        this.FChangeList.Put(I,null);
      };
    };
    this.IndexInChangeList = function (aBookmark) {
      var Result = 0;
      Result = -1;
      if (!(this.FChangeList != null)) return Result;
      Result = this.FChangeList.FCount - 1;
      while ((Result >= 0) && (this.CompareBookmarks(new $mod.TBookmark(aBookmark),new $mod.TBookmark(rtl.getObject(this.FChangeList.Get(Result)).FBookmark)) !== 0)) Result -= 1;
      return Result;
    };
    this.AddToChangeList = function (aChange) {
      var Result = null;
      var B = new $mod.TBookmark();
      var I = 0;
      Result = null;
      if (!(this.FChangeList != null)) return Result;
      B = new $mod.TBookmark(this.GetBookmark());
      I = this.IndexInChangeList(new $mod.TBookmark(B));
      if (I === -1) {
        if (this.GetDataProxy() != null) {
          Result = this.GetDataProxy().GetUpdateDescriptor(this,new $mod.TBookmark(B),this.ActiveBuffer().data,aChange)}
         else Result = $mod.TRecordUpdateDescriptor.$create("Create$1",[null,this,new $mod.TBookmark(B),this.ActiveBuffer().data,aChange]);
        this.FChangeList.Add(Result);
      } else {
        Result = rtl.getObject(this.FChangeList.Get(I));
        var $tmp1 = aChange;
        if ($tmp1 === 3) {
          Result.FStatus = 3}
         else if ($tmp1 === 2) {
          $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SErrInsertingSameRecordtwice"),this)}
         else if ($tmp1 === 1) Result.FData = this.ActiveBuffer().data;
      };
      return Result;
    };
    this.RecalcBufListSize = function () {
      var i = 0;
      var j = 0;
      var ABufferCount = 0;
      var DataLink = null;
      if (!this.IsCursorOpen()) return;
      if (this.FIsUniDirectional) {
        ABufferCount = 1}
       else ABufferCount = 10;
      for (var $l1 = 0, $end2 = this.FDataSources.FCount - 1; $l1 <= $end2; $l1++) {
        i = $l1;
        for (var $l3 = 0, $end4 = rtl.getObject(this.FDataSources.Get(i)).FDataLinks.GetCount() - 1; $l3 <= $end4; $l3++) {
          j = $l3;
          DataLink = rtl.getObject(rtl.getObject(this.FDataSources.Get(i)).FDataLinks.Get(j));
          if (ABufferCount < DataLink.GetBufferCount()) ABufferCount = DataLink.GetBufferCount();
        };
      };
      if (this.FBufferCount === ABufferCount) return;
      this.SetBufListSize(ABufferCount);
      this.GetNextRecords();
      if ((this.FRecordCount < this.FBufferCount) && !this.FIsUniDirectional) {
        this.FActiveRecord = this.FActiveRecord + this.GetPriorRecords();
        this.CursorPosChanged();
      };
    };
    this.ActivateBuffers = function () {
      this.FBOF = false;
      this.FEOF = false;
      this.FActiveRecord = 0;
    };
    this.BindFields = function (Binding) {
      var i = 0;
      var FieldIndex = 0;
      var FieldDef = null;
      var Field = null;
      this.FCalcFieldsSize = 0;
      this.FBlobFieldCount = 0;
      for (var $l1 = 0, $end2 = this.FFieldList.GetCount() - 1; $l1 <= $end2; $l1++) {
        i = $l1;
        Field = this.FFieldList.GetField(i);
        Field.FFieldDef = null;
        if (!Binding) {
          Field.FFieldNo = 0}
         else if (Field.FFieldKind in rtl.createSet(1,2)) {
          Field.FFieldNo = -1;
          Field.FOffset = this.FCalcFieldsSize;
          this.FCalcFieldsSize += Field.GetDataSize() + 1;
        } else {
          FieldIndex = this.FFieldDefs.IndexOf(Field.FFieldName);
          if (FieldIndex === -1) {
            $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SFieldNotFound"),[Field.FFieldName],this)}
           else {
            FieldDef = this.FFieldDefs.GetItem$1(FieldIndex);
            Field.FFieldDef = FieldDef;
            Field.FFieldNo = FieldDef.FFieldNo;
            if (FieldDef.FInternalCalcField) this.FInternalCalcFields = true;
            if (Field.$class.IsBlob()) {
              Field.FSize = FieldDef.FSize;
              Field.FOffset = this.FBlobFieldCount;
              this.FBlobFieldCount += 1;
            };
          };
        };
        Field.Bind(Binding);
      };
    };
    this.BlockReadNext = function () {
      this.MoveBy(1);
    };
    var BookmarkStates = rtl.createSet(1,2,3);
    this.BookmarkAvailable = function () {
      var Result = false;
      Result = ((!this.IsEmpty() && !this.FIsUniDirectional) && (this.FState in BookmarkStates)) && (this.GetBookmarkFlag(new $mod.TDataRecord(this.ActiveBuffer())) === 0);
      return Result;
    };
    this.CalculateFields = function (Buffer) {
      var i = 0;
      var OldState = 0;
      this.FCalcBuffer = new $mod.TDataRecord(Buffer.get());
      if (this.FState !== 11) {
        OldState = this.FState;
        this.FState = 5;
        try {
          this.ClearCalcFields({p: this, get: function () {
              return this.p.FCalcBuffer;
            }, set: function (v) {
              this.p.FCalcBuffer = v;
            }});
          if (!this.FIsUniDirectional) for (var $l1 = 0, $end2 = this.FFieldList.GetCount() - 1; $l1 <= $end2; $l1++) {
            i = $l1;
            if (this.FFieldList.GetField(i).FFieldKind === 2) this.FFieldList.GetField(i).CalcLookupValue();
          };
        } finally {
          this.DoOnCalcFields();
          this.FState = OldState;
        };
      };
    };
    this.CheckActive = function () {
      if (!this.GetActive()) $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SInactiveDataset"),this);
    };
    this.CheckInactive = function () {
      if (this.GetActive()) $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SActiveDataset"),this);
    };
    this.CheckBiDirectional = function () {
      if (this.FIsUniDirectional) $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SUniDirectional"),this);
    };
    this.ClearBuffers = function () {
      this.FRecordCount = 0;
      this.FActiveRecord = 0;
      this.FCurrentRecord = -1;
      this.FBOF = true;
      this.FEOF = true;
    };
    this.ClearCalcFields = function (Buffer) {
    };
    this.CloseCursor = function () {
      this.ClearBuffers();
      this.SetBufListSize(0);
      this.FFieldList.ClearFieldDefs();
      this.InternalClose();
      this.FInternalOpenComplete = false;
    };
    this.CreateFields = function () {
      var I = 0;
      for (var $l1 = 0, $end2 = this.FFieldDefs.GetCount() - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        var $with3 = this.FFieldDefs.GetItem$1(I);
        if ($with3.FDataType !== 0) {
          $with3.CreateField(this);
        };
      };
    };
    this.DataEvent = function (Event, Info) {
      var Self = this;
      function HandleFieldChange(aField) {
        if (aField.FFieldKind in rtl.createSet(0,3)) Self.SetModified(true);
        if (Self.FState !== 4) {
          if (aField.FFieldKind === 0) {
            if (Self.FInternalCalcFields) {
              Self.RefreshInternalCalcFields({a: Self.FActiveRecord, p: Self.FBuffers, get: function () {
                  return this.p[this.a];
                }, set: function (v) {
                  this.p[this.a] = v;
                }})}
             else if (Self.FAutoCalcFields && (Self.FCalcFieldsSize !== 0)) Self.CalculateFields({a: Self.FActiveRecord, p: Self.FBuffers, get: function () {
                return this.p[this.a];
              }, set: function (v) {
                this.p[this.a] = v;
              }});
          };
          aField.Change();
        };
      };
      function HandleScrollOrChange() {
        if (Self.FState !== 3) Self.UpdateCursorPos();
      };
      var i = 0;
      var $tmp1 = Event;
      if ($tmp1 === 0) {
        HandleFieldChange(rtl.getObject(Info))}
       else if (($tmp1 === 2) || ($tmp1 === 3)) {
        HandleScrollOrChange()}
       else if ($tmp1 === 4) Self.FEnableControlsEvent = 4;
      if (!Self.ControlsDisabled() && (Self.FState !== 10)) {
        for (var $l2 = 0, $end3 = Self.FDataSources.FCount - 1; $l2 <= $end3; $l2++) {
          i = $l2;
          rtl.getObject(Self.FDataSources.Get(i)).ProcessEvent(Event,Info);
        };
      };
    };
    this.DestroyFields = function () {
      this.FFieldList.Clear();
    };
    this.DoAfterCancel = function () {
      if (this.FAfterCancel != null) this.FAfterCancel(this);
    };
    this.DoAfterClose = function () {
      if ((this.FAfterClose != null) && !(3 in this.FComponentState)) this.FAfterClose(this);
    };
    this.DoAfterOpen = function () {
      if (this.FAfterOpen != null) this.FAfterOpen(this);
    };
    this.DoAfterPost = function () {
      if (this.FAfterPost != null) this.FAfterPost(this);
    };
    this.DoAfterScroll = function () {
      if (this.FAfterScroll != null) this.FAfterScroll(this);
    };
    this.DoBeforeCancel = function () {
      if (this.FBeforeCancel != null) this.FBeforeCancel(this);
    };
    this.DoBeforeClose = function () {
      if ((this.FBeforeClose != null) && !(3 in this.FComponentState)) this.FBeforeClose(this);
    };
    this.DoBeforeOpen = function () {
      if (this.FBeforeOpen != null) this.FBeforeOpen(this);
    };
    this.DoBeforePost = function () {
      if (this.FBeforePost != null) this.FBeforePost(this);
    };
    this.DoBeforeScroll = function () {
      if (this.FBeforeScroll != null) this.FBeforeScroll(this);
    };
    this.DoOnCalcFields = function () {
      if (this.FOnCalcFields != null) this.FOnCalcFields(this);
    };
    this.DoBeforeLoad = function () {
      if (this.FBeforeLoad != null) this.FBeforeLoad(this);
    };
    this.DoAfterLoad = function () {
      if (this.FAfterLoad != null) this.FAfterLoad(this);
    };
    this.GetFieldClass = function (FieldType) {
      var Result = null;
      Result = $mod.DefaultFieldClasses[FieldType];
      return Result;
    };
    this.GetfieldCount = function () {
      var Result = 0;
      Result = this.FFieldList.GetCount();
      return Result;
    };
    this.GetNextRecords = function () {
      var Result = 0;
      Result = 0;
      while ((this.FRecordCount < this.FBufferCount) && this.GetNextRecord()) Result += 1;
      return Result;
    };
    this.GetNextRecord = function () {
      var Result = false;
      var T = new $mod.TDataRecord();
      if (this.FRecordCount > 0) this.SetCurrentRecord(this.FRecordCount - 1);
      Result = this.GetRecord({a: this.FBufferCount, p: this.FBuffers, get: function () {
          return this.p[this.a];
        }, set: function (v) {
          this.p[this.a] = v;
        }},1,true) === 0;
      if (Result) {
        if (this.FRecordCount === 0) this.ActivateBuffers();
        if (this.FRecordCount === this.FBufferCount) {
          this.ShiftBuffersBackward()}
         else {
          this.FRecordCount += 1;
          this.FCurrentRecord = this.FRecordCount - 1;
          T = new $mod.TDataRecord(this.FBuffers[this.FCurrentRecord]);
          this.FBuffers[this.FCurrentRecord] = new $mod.TDataRecord(this.FBuffers[this.FBufferCount]);
          this.FBuffers[this.FBufferCount] = new $mod.TDataRecord(T);
        };
      } else this.CursorPosChanged();
      return Result;
    };
    this.GetPriorRecords = function () {
      var Result = 0;
      Result = 0;
      while ((this.FRecordCount < this.FBufferCount) && this.GetPriorRecord()) Result += 1;
      return Result;
    };
    this.GetPriorRecord = function () {
      var Result = false;
      this.CheckBiDirectional();
      if (this.FRecordCount > 0) this.SetCurrentRecord(0);
      Result = this.GetRecord({a: this.FBufferCount, p: this.FBuffers, get: function () {
          return this.p[this.a];
        }, set: function (v) {
          this.p[this.a] = v;
        }},2,true) === 0;
      if (Result) {
        if (this.FRecordCount === 0) this.ActivateBuffers();
        this.ShiftBuffersForward();
        if (this.FRecordCount < this.FBufferCount) this.FRecordCount += 1;
      } else this.CursorPosChanged();
      return Result;
    };
    this.InitRecord = function (Buffer) {
      this.InternalInitRecord(Buffer);
      this.ClearCalcFields(Buffer);
    };
    this.InternalCancel = function () {
    };
    this.OpenCursor = function (InfoQuery) {
      if (InfoQuery) {
        this.InternalInitFieldDefs()}
       else if (this.FState !== 12) this.DoInternalOpen();
    };
    this.OpenCursorcomplete = function () {
      try {
        if (this.FState === 12) this.DoInternalOpen();
      } finally {
        if (this.FInternalOpenComplete) {
          this.SetState(1);
          this.DoAfterOpen();
          if (!this.IsEmpty()) this.DoAfterScroll();
        } else {
          this.SetState(0);
          this.CloseCursor();
        };
      };
    };
    this.RefreshInternalCalcFields = function (Buffer) {
    };
    this.SetActive = function (Value) {
      if (Value && (this.FState === 0)) {
        if (0 in this.FComponentState) {
          this.FOpenAfterRead = true;
          return;
        } else {
          this.DoBeforeOpen();
          this.FEnableControlsEvent = 4;
          this.FInternalCalcFields = false;
          try {
            this.FDefaultFields = this.GetfieldCount() === 0;
            this.OpenCursor(false);
          } finally {
            if (this.FState !== 12) this.OpenCursorcomplete();
          };
        };
        this.FModified = false;
      } else if (!Value && (this.FState !== 0)) {
        this.DoBeforeClose();
        this.SetState(0);
        this.FDataRequestID = 0;
        this.DoneChangeList();
        this.CloseCursor();
        this.DoAfterClose();
        this.FModified = false;
      };
    };
    this.SetBufListSize = function (Value) {
      var I = 0;
      if (Value < 0) Value = 0;
      if (Value === this.FBufferCount) return;
      if (Value > this.GetBufferCount()) {
        for (var $l1 = this.FBufferCount, $end2 = Value; $l1 <= $end2; $l1++) {
          I = $l1;
          this.FBuffers[I] = new $mod.TDataRecord(this.AllocRecordBuffer());
        };
      } else if (Value < this.GetBufferCount()) if ((Value >= 0) && (this.FActiveRecord > (Value - 1))) {
        for (var $l3 = 0, $end4 = this.FActiveRecord - Value; $l3 <= $end4; $l3++) {
          I = $l3;
          this.ShiftBuffersBackward();
        };
        this.FActiveRecord = Value - 1;
      };
      this.FBuffers = rtl.arraySetLength(this.FBuffers,$mod.TDataRecord,Value + 1);
      this.FBufferCount = Value;
      if (this.FRecordCount > this.FBufferCount) this.FRecordCount = this.FBufferCount;
    };
    this.SetCurrentRecord = function (Index) {
      if (this.FCurrentRecord !== Index) {
        if (!this.FIsUniDirectional) {
          var $tmp1 = this.GetBookmarkFlag(new $mod.TDataRecord(this.FBuffers[Index]));
          if ($tmp1 === 0) {
            this.InternalSetToRecord(new $mod.TDataRecord(this.FBuffers[Index]))}
           else if ($tmp1 === 1) {
            this.InternalFirst()}
           else if ($tmp1 === 2) this.InternalLast();
        };
        this.FCurrentRecord = Index;
      };
    };
    this.SetModified = function (Value) {
      this.FModified = Value;
    };
    this.SetName = function (NewName) {
      var Self = this;
      function CheckName(FieldName) {
        var Result = "";
        var i = 0;
        var j = 0;
        Result = FieldName;
        i = 0;
        j = 0;
        while (i < Self.FFieldList.GetCount()) {
          if (Result === Self.FFieldList.GetField(i).FFieldName) {
            j += 1;
            Result = FieldName + pas.SysUtils.IntToStr(j);
          } else i += 1;
        };
        return Result;
      };
      var i = 0;
      var nm = "";
      var old = "";
      if (Self.FName === NewName) return;
      old = Self.FName;
      pas.Classes.TComponent.SetName.call(Self,NewName);
      if (4 in Self.FComponentState) for (var $l1 = 0, $end2 = Self.FFieldList.GetCount() - 1; $l1 <= $end2; $l1++) {
        i = $l1;
        nm = old + Self.FFieldList.GetField(i).FFieldName;
        if (pas.System.Copy(Self.FFieldList.GetField(i).FName,1,nm.length) === nm) Self.FFieldList.GetField(i).SetName(CheckName(NewName + Self.FFieldList.GetField(i).FFieldName));
      };
    };
    this.SetOnFilterRecord = function (Value) {
      this.CheckBiDirectional();
      this.FOnFilterRecord = Value;
    };
    this.SetState = function (Value) {
      if (Value !== this.FState) {
        this.FState = Value;
        if (Value === 1) this.FModified = false;
        this.DataEvent(6,0);
      };
    };
    this.AllocRecordBuffer = function () {
      var Result = new $mod.TDataRecord();
      Result.data = null;
      Result.state = 0;
      return Result;
    };
    this.FreeRecordBuffer = function (Buffer) {
    };
    this.GetBookmarkData = function (Buffer, Data) {
    };
    this.GetBookmarkFlag = function (Buffer) {
      var Result = 0;
      Result = 0;
      return Result;
    };
    this.InternalFirst = function () {
    };
    this.InternalInitRecord = function (Buffer) {
    };
    this.InternalLast = function () {
    };
    this.InternalPost = function () {
      var Self = this;
      function CheckRequiredFields() {
        var I = 0;
        for (var $l1 = 0, $end2 = Self.FFieldList.GetCount() - 1; $l1 <= $end2; $l1++) {
          I = $l1;
          var $with3 = Self.FFieldList.GetField(I);
          if (((($with3.FRequired && !$with3.FReadOnly) && ($with3.FFieldKind === 0)) && !($with3.FDataType === 9)) && $with3.GetIsNull()) $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SNeedField"),[$with3.GetDisplayName()],Self);
        };
      };
      CheckRequiredFields();
    };
    this.InternalSetToRecord = function (Buffer) {
    };
    this.Notification = function (AComponent, Operation) {
      pas.Classes.TComponent.Notification.call(this,AComponent,Operation);
      if ((Operation === 1) && (AComponent === this.FDataProxy)) this.FDataProxy = null;
    };
    this.GetFieldData = function (Field) {
      var Result = undefined;
      Result = this.GetFieldData$1(Field,new $mod.TDataRecord(this.ActiveBuffer()));
      return Result;
    };
    this.GetFieldData$1 = function (Field, Buffer) {
      var Result = undefined;
      Result = rtl.getObject(Buffer.data)[Field.FFieldName];
      return Result;
    };
    this.FieldDefsClass = function () {
      var Result = null;
      Result = $mod.TFieldDefs;
      return Result;
    };
    this.FieldsClass = function () {
      var Result = null;
      Result = $mod.TFields;
      return Result;
    };
    this.Create$1 = function (AOwner) {
      pas.Classes.TComponent.Create$1.call(this,AOwner);
      this.FFieldDefs = this.$class.FieldDefsClass().$create("Create$4",[this]);
      this.FFieldList = this.$class.FieldsClass().$create("Create$1",[this]);
      this.FDataSources = pas.Classes.TFPList.$create("Create");
      this.FConstraints = $mod.TCheckConstraints.$create("Create$2",[this]);
      this.FBuffers = rtl.arraySetLength(this.FBuffers,$mod.TDataRecord,1);
      this.FActiveRecord = 0;
      this.FEOF = true;
      this.FBOF = true;
      this.FIsUniDirectional = false;
      this.FAutoCalcFields = true;
      this.FDataRequestID = 0;
    };
    this.Destroy = function () {
      var i = 0;
      this.SetActive(false);
      rtl.free(this,"FFieldDefs");
      rtl.free(this,"FFieldList");
      var $with1 = this.FDataSources;
      while ($with1.FCount > 0) rtl.getObject($with1.Get($with1.FCount - 1)).SetDataSet(null);
      $with1.$destroy("Destroy");
      for (var $l2 = 0, $end3 = this.FBufferCount; $l2 <= $end3; $l2++) {
        i = $l2;
        this.FreeRecordBuffer({a: i, p: this.FBuffers, get: function () {
            return this.p[this.a];
          }, set: function (v) {
            this.p[this.a] = v;
          }});
      };
      rtl.free(this,"FConstraints");
      this.FBuffers = rtl.arraySetLength(this.FBuffers,$mod.TDataRecord,1);
      pas.Classes.TComponent.Destroy.call(this);
    };
    this.ActiveBuffer = function () {
      var Result = new $mod.TDataRecord();
      Result = new $mod.TDataRecord(this.FBuffers[this.FActiveRecord]);
      return Result;
    };
    this.ConvertToDateTime = function (aValue, ARaiseException) {
      var Result = 0.0;
      Result = this.$class.DefaultConvertToDateTime(aValue,ARaiseException);
      return Result;
    };
    this.DefaultConvertToDateTime = function (aValue, ARaiseException) {
      var Result = 0.0;
      Result = 0;
      if (rtl.isString(aValue)) {
        if (!pas.DateUtils.TryRFC3339ToDateTime("" + aValue,{get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }})) throw pas.SysUtils.EConvertError.$create("CreateFmt",[rtl.getResStr(pas.DBConst,"SErrInvalidDateTime"),["" + aValue]]);
      } else if (rtl.isNumber(aValue)) Result = rtl.getNumber(aValue);
      return Result;
    };
    this.BlobDataToBytes = function (aValue) {
      var Result = [];
      Result = this.$class.DefaultBlobDataToBytes(aValue);
      return Result;
    };
    this.DefaultBlobDataToBytes = function (aValue) {
      var Result = [];
      var S = "";
      var I = 0;
      var J = 0;
      var L = 0;
      Result = rtl.arraySetLength(Result,0,0);
      if (rtl.isString(aValue)) {
        S = "" + aValue;
        L = S.length;
        Result = rtl.arraySetLength(Result,0,Math.floor((L + 1) / 2));
        I = 1;
        J = 0;
        while (I < L) {
          Result[J] = pas.SysUtils.StrToInt("$" + pas.System.Copy(S,I,2));
          I += 2;
          J += 1;
        };
      };
      return Result;
    };
    this.Cancel = function () {
      if (this.FState in rtl.createSet(2,3)) {
        this.DataEvent(7,0);
        this.DoBeforeCancel();
        this.UpdateCursorPos();
        this.InternalCancel();
        if ((this.FState === 3) && (this.FRecordCount === 1)) {
          this.FEOF = true;
          this.FBOF = true;
          this.FRecordCount = 0;
          this.InitRecord({a: this.FActiveRecord, p: this.FBuffers, get: function () {
              return this.p[this.a];
            }, set: function (v) {
              this.p[this.a] = v;
            }});
          this.SetState(1);
          this.DataEvent(2,0);
        } else {
          this.SetState(1);
          this.SetCurrentRecord(this.FActiveRecord);
          this.Resync({});
        };
        this.DoAfterCancel();
      };
    };
    this.CheckBrowseMode = function () {
      this.CheckActive();
      this.DataEvent(7,0);
      var $tmp1 = this.FState;
      if (($tmp1 === 2) || ($tmp1 === 3)) {
        this.UpdateRecord();
        if (this.FModified) {
          this.Post()}
         else this.Cancel();
      } else if ($tmp1 === 4) this.Post();
    };
    this.Close = function () {
      this.SetActive(false);
    };
    this.ControlsDisabled = function () {
      var Result = false;
      Result = this.FDisableControlsCount > 0;
      return Result;
    };
    this.CompareBookmarks = function (Bookmark1, Bookmark2) {
      var Result = 0;
      Result = 0;
      return Result;
    };
    this.CursorPosChanged = function () {
      this.FCurrentRecord = -1;
    };
    this.DisableControls = function () {
      if (this.FDisableControlsCount === 0) {
        this.FDisableControlsState = this.FState;
        this.FEnableControlsEvent = 2;
      };
      this.FDisableControlsCount += 1;
    };
    this.EnableControls = function () {
      if (this.FDisableControlsCount > 0) this.FDisableControlsCount -= 1;
      if (this.FDisableControlsCount === 0) {
        if (this.FState !== this.FDisableControlsState) this.DataEvent(6,0);
        if ((this.FState !== 0) && (this.FDisableControlsState !== 0)) this.DataEvent(this.FEnableControlsEvent,0);
      };
    };
    this.FieldByName = function (FieldName) {
      var Result = null;
      Result = this.FindField(FieldName);
      if (Result === null) $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SFieldNotFound"),[FieldName],this);
      return Result;
    };
    this.FindField = function (FieldName) {
      var Result = null;
      Result = this.FFieldList.FindField(FieldName);
      return Result;
    };
    this.First = function () {
      this.CheckBrowseMode();
      this.DoBeforeScroll();
      if (!this.FIsUniDirectional) {
        this.ClearBuffers()}
       else if (!this.FBOF) {
        this.SetActive(false);
        this.SetActive(true);
      };
      try {
        this.InternalFirst();
        if (!this.FIsUniDirectional) this.GetNextRecords();
      } finally {
        this.FBOF = true;
        this.DataEvent(2,0);
        this.DoAfterScroll();
      };
    };
    this.GetBookmark = function () {
      var Result = new $mod.TBookmark();
      if (this.BookmarkAvailable()) {
        this.GetBookmarkData(new $mod.TDataRecord(this.ActiveBuffer()),{get: function () {
            return Result;
          }, set: function (v) {
            Result = v;
          }})}
       else Result.Data = null;
      return Result;
    };
    this.IsEmpty = function () {
      var Result = false;
      Result = (this.FBOF && this.FEOF) && !(this.FState === 3);
      return Result;
    };
    this.Load = function (aOptions, aAfterLoad) {
      var Result = false;
      if (2 in aOptions) $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SatEOFInternalOnly"),this);
      Result = this.DoLoad(rtl.refSet(aOptions),aAfterLoad);
      return Result;
    };
    this.MoveBy = function (Distance) {
      var Self = this;
      var Result = 0;
      var TheResult = 0;
      function ScrollForward() {
        var Result = 0;
        Result = 0;
        Self.FBOF = false;
        while ((Distance > 0) && !Self.FEOF) {
          if (Self.FActiveRecord < (Self.FRecordCount - 1)) {
            Self.FActiveRecord += 1;
            Distance -= 1;
            TheResult += 1;
          } else {
            if (Self.GetNextRecord()) {
              Distance -= 1;
              Result -= 1;
              TheResult += 1;
            } else {
              Self.FEOF = true;
              Self.DoLoad(rtl.createSet(0,2),null);
            };
          };
        };
        return Result;
      };
      function ScrollBackward() {
        var Result = 0;
        Self.CheckBiDirectional();
        Result = 0;
        Self.FEOF = false;
        while ((Distance < 0) && !Self.FBOF) {
          if (Self.FActiveRecord > 0) {
            Self.FActiveRecord -= 1;
            Distance += 1;
            TheResult -= 1;
          } else {
            if (Self.GetPriorRecord()) {
              Distance += 1;
              Result += 1;
              TheResult -= 1;
            } else Self.FBOF = true;
          };
        };
        return Result;
      };
      var Scrolled = 0;
      Self.CheckBrowseMode();
      Result = 0;
      TheResult = 0;
      Self.DoBeforeScroll();
      if (((Distance === 0) || ((Distance > 0) && Self.FEOF)) || ((Distance < 0) && Self.FBOF)) return Result;
      try {
        Scrolled = 0;
        if (Distance > 0) {
          Scrolled = ScrollForward()}
         else Scrolled = ScrollBackward();
      } finally {
        Self.DataEvent(3,Scrolled);
        Self.DoAfterScroll();
        Result = TheResult;
      };
      return Result;
    };
    this.Next = function () {
      if (this.FBlockReadSize > 0) {
        this.BlockReadNext()}
       else this.MoveBy(1);
    };
    this.Open = function () {
      this.SetActive(true);
    };
    var UpdateStates = [1,2];
    this.Post = function () {
      var R = null;
      var WasInsert = false;
      this.UpdateRecord();
      if (this.FState in rtl.createSet(2,3)) {
        this.DataEvent(7,0);
        this.DoBeforePost();
        WasInsert = this.FState === 3;
        if (!this.TryDoing(rtl.createCallback(this,"InternalPost"),this.FOnPostError)) return;
        this.CursorPosChanged();
        this.SetState(1);
        this.Resync({});
        R = this.AddToChangeList(UpdateStates[+WasInsert]);
        if (R != null) R.FBookmark = new $mod.TBookmark(this.GetBookmark());
        this.DoAfterPost();
      } else if (this.FState !== 4) $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SNotEditing"),[this.FName],this);
    };
    this.Resync = function (Mode) {
      var i = 0;
      var count = 0;
      if (this.FIsUniDirectional) return;
      if (this.GetRecord({a: 0, p: this.FBuffers, get: function () {
          return this.p[this.a];
        }, set: function (v) {
          this.p[this.a] = v;
        }},0,false) !== 0) if (0 in Mode) {
        $mod.DatabaseError$1(rtl.getResStr(pas.DBConst,"SNoSuchRecord"),this)}
       else if ((this.GetRecord({a: 0, p: this.FBuffers, get: function () {
          return this.p[this.a];
        }, set: function (v) {
          this.p[this.a] = v;
        }},1,true) !== 0) && (this.GetRecord({a: 0, p: this.FBuffers, get: function () {
          return this.p[this.a];
        }, set: function (v) {
          this.p[this.a] = v;
        }},2,true) !== 0)) {
        this.ClearBuffers();
        this.InternalInitRecord({a: this.FActiveRecord, p: this.FBuffers, get: function () {
            return this.p[this.a];
          }, set: function (v) {
            this.p[this.a] = v;
          }});
        this.DataEvent(2,0);
        return;
      };
      this.FCurrentRecord = 0;
      this.FEOF = false;
      this.FBOF = false;
      if (1 in Mode) {
        count = Math.floor(this.FRecordCount / 2)}
       else count = this.FActiveRecord;
      i = 0;
      this.FRecordCount = 1;
      this.FActiveRecord = 0;
      while ((i < count) && this.GetPriorRecord()) i += 1;
      this.FActiveRecord = i;
      this.GetNextRecords();
      if (this.FRecordCount < this.FBufferCount) this.FActiveRecord = this.FActiveRecord + this.GetPriorRecords();
      this.DataEvent(2,0);
    };
    this.UpdateCursorPos = function () {
      if (this.FRecordCount > 0) this.SetCurrentRecord(this.FActiveRecord);
    };
    this.UpdateRecord = function () {
      if (!(this.FState in $mod.dsEditModes)) $mod.DatabaseErrorFmt$1(rtl.getResStr(pas.DBConst,"SNotEditing"),[this.FName],this);
      this.DataEvent(5,0);
    };
  });
  rtl.createClass($mod,"TDataLink",pas.Classes.TPersistent,function () {
    this.$init = function () {
      pas.Classes.TPersistent.$init.call(this);
      this.FFirstRecord = 0;
      this.FBufferCount = 0;
      this.FActive = false;
      this.FDataSourceFixed = false;
      this.FEditing = false;
      this.FReadOnly = false;
      this.FUpdatingRecord = false;
      this.FVisualControl = false;
      this.FDataSource = null;
    };
    this.$final = function () {
      this.FDataSource = undefined;
      pas.Classes.TPersistent.$final.call(this);
    };
    this.CalcFirstRecord = function (Index) {
      var Result = 0;
      if (this.FDataSource.FDataSet.FActiveRecord > (((this.FFirstRecord + Index) + this.FBufferCount) - 1)) {
        Result = this.FDataSource.FDataSet.FActiveRecord - (((this.FFirstRecord + Index) + this.FBufferCount) - 1)}
       else if (this.FDataSource.FDataSet.FActiveRecord < (this.FFirstRecord + Index)) {
        Result = this.FDataSource.FDataSet.FActiveRecord - (this.FFirstRecord + Index)}
       else Result = 0;
      this.FFirstRecord += Index + Result;
      return Result;
    };
    this.CalcRange = function () {
      var aMax = 0;
      var aMin = 0;
      aMin = (this.GetDataset().FActiveRecord - this.FBufferCount) + 1;
      if (aMin < 0) aMin = 0;
      aMax = this.GetDataset().FBufferCount - this.FBufferCount;
      if (aMax < 0) aMax = 0;
      if (aMax > this.GetDataset().FActiveRecord) aMax = this.GetDataset().FActiveRecord;
      if (this.FFirstRecord < aMin) this.FFirstRecord = aMin;
      if (this.FFirstRecord > aMax) this.FFirstRecord = aMax;
      if ((this.FFirstRecord !== 0) && ((this.GetDataset().FActiveRecord - this.FFirstRecord) < (this.FBufferCount - 1))) this.FFirstRecord -= 1;
    };
    this.CheckActiveAndEditing = function () {
      var B = false;
      B = (this.FDataSource != null) && !(this.FDataSource.FState in rtl.createSet(0,12));
      if (B !== this.FActive) {
        this.FActive = B;
        this.ActiveChanged();
      };
      B = ((this.FDataSource != null) && (this.FDataSource.FState in $mod.dsEditModes)) && !this.FReadOnly;
      if (B !== this.FEditing) {
        this.FEditing = B;
        this.EditingChanged();
      };
    };
    this.GetDataset = function () {
      var Result = null;
      if (this.FDataSource != null) {
        Result = this.FDataSource.FDataSet}
       else Result = null;
      return Result;
    };
    this.SetActive = function (AActive) {
      if (this.FActive !== AActive) {
        this.FActive = AActive;
        this.ActiveChanged();
      };
    };
    this.SetDataSource = function (Value) {
      if (this.FDataSource === Value) return;
      if (!this.FDataSourceFixed) {
        if (this.FDataSource != null) {
          this.FDataSource.UnregisterDataLink(this);
          this.FDataSource = null;
          this.CheckActiveAndEditing();
        };
        this.FDataSource = Value;
        if (this.FDataSource != null) {
          this.FDataSource.RegisterDataLink(this);
          this.CheckActiveAndEditing();
        };
      };
    };
    this.ActiveChanged = function () {
      this.FFirstRecord = 0;
    };
    this.CheckBrowseMode = function () {
    };
    this.DataEvent = function (Event, Info) {
      var $tmp1 = Event;
      if (($tmp1 === 0) || ($tmp1 === 1)) {
        if (!this.FUpdatingRecord) this.RecordChanged(rtl.getObject(Info))}
       else if ($tmp1 === 2) {
        this.SetActive(this.FDataSource.FDataSet.GetActive());
        this.CalcRange();
        this.CalcFirstRecord(Math.floor(Info));
        this.DataSetChanged();
      } else if ($tmp1 === 3) {
        this.DataSetScrolled(this.CalcFirstRecord(Math.floor(Info)))}
       else if ($tmp1 === 4) {
        this.CalcFirstRecord(Math.floor(Info));
        this.LayoutChanged();
      } else if ($tmp1 === 5) {
        this.UpdateRecord()}
       else if ($tmp1 === 6) {
        this.CheckActiveAndEditing()}
       else if ($tmp1 === 7) {
        this.CheckBrowseMode()}
       else if ($tmp1 === 10) this.FocusControl(Info);
    };
    this.DataSetChanged = function () {
      this.RecordChanged(null);
    };
    this.DataSetScrolled = function (Distance) {
      this.DataSetChanged();
    };
    this.EditingChanged = function () {
    };
    this.FocusControl = function (Field) {
    };
    this.GetBufferCount = function () {
      var Result = 0;
      Result = this.FBufferCount;
      return Result;
    };
    this.LayoutChanged = function () {
      this.DataSetChanged();
    };
    this.RecordChanged = function (Field) {
    };
    this.UpdateData = function () {
    };
    this.Destroy = function () {
      this.FActive = false;
      this.FEditing = false;
      this.FDataSourceFixed = false;
      this.SetDataSource(null);
      pas.System.TObject.Destroy.call(this);
    };
    this.UpdateRecord = function () {
      this.FUpdatingRecord = true;
      try {
        this.UpdateData();
      } finally {
        this.FUpdatingRecord = false;
      };
    };
  });
  $mod.$rtti.$MethodVar("TDataChangeEvent",{procsig: rtl.newTIProcSig([["Sender",pas.System.$rtti["TObject"]],["Field",$mod.$rtti["TField"]]]), methodkind: 0});
  rtl.createClass($mod,"TDataSource",pas.Classes.TComponent,function () {
    this.$init = function () {
      pas.Classes.TComponent.$init.call(this);
      this.FDataSet = null;
      this.FDataLinks = null;
      this.FEnabled = false;
      this.FAutoEdit = false;
      this.FState = 0;
      this.FOnStateChange = null;
      this.FOnDataChange = null;
      this.FOnUpdateData = null;
    };
    this.$final = function () {
      this.FDataSet = undefined;
      this.FDataLinks = undefined;
      this.FOnStateChange = undefined;
      this.FOnDataChange = undefined;
      this.FOnUpdateData = undefined;
      pas.Classes.TComponent.$final.call(this);
    };
    this.DistributeEvent = function (Event, Info) {
      var i = 0;
      var $with1 = this.FDataLinks;
      for (var $l2 = 0, $end3 = $with1.GetCount() - 1; $l2 <= $end3; $l2++) {
        i = $l2;
        var $with4 = rtl.getObject($with1.Get(i));
        if (!$with4.FVisualControl) $with4.DataEvent(Event,Info);
      };
      for (var $l5 = 0, $end6 = $with1.GetCount() - 1; $l5 <= $end6; $l5++) {
        i = $l5;
        var $with7 = rtl.getObject($with1.Get(i));
        if ($with7.FVisualControl) $with7.DataEvent(Event,Info);
      };
    };
    this.RegisterDataLink = function (DataLink) {
      this.FDataLinks.Add(DataLink);
      if (this.FDataSet != null) this.FDataSet.RecalcBufListSize();
    };
    var OnDataChangeEvents = rtl.createSet(1,2,3,4,6);
    this.ProcessEvent = function (Event, Info) {
      var NeedDataChange = false;
      var FLastState = 0;
      if (Event === 6) {
        NeedDataChange = this.FState === 0;
        FLastState = this.FState;
        if (this.FDataSet != null) {
          this.FState = this.FDataSet.FState}
         else this.FState = 0;
        if (this.FState === FLastState) return;
      } else NeedDataChange = true;
      this.DistributeEvent(Event,Info);
      if (!(3 in this.FComponentState)) {
        if (Event === 6) this.DoStateChange();
        if ((Event in OnDataChangeEvents) && NeedDataChange) this.DoDataChange(null);
        if (Event === 0) this.DoDataChange(Info);
        if (Event === 5) this.DoUpdateData();
      };
    };
    this.SetDataSet = function (ADataSet) {
      if (this.FDataSet !== null) {
        this.FDataSet.UnRegisterDataSource(this);
        this.FDataSet = null;
        this.ProcessEvent(6,0);
      };
      if (ADataSet !== null) {
        ADataSet.RegisterDataSource(this);
        this.FDataSet = ADataSet;
        this.ProcessEvent(6,0);
      };
    };
    this.SetEnabled = function (Value) {
      this.FEnabled = Value;
    };
    this.UnregisterDataLink = function (DataLink) {
      this.FDataLinks.Remove(DataLink);
      if (this.FDataSet !== null) this.FDataSet.RecalcBufListSize();
    };
    this.DoDataChange = function (Info) {
      if (this.FOnDataChange != null) this.FOnDataChange(this,Info);
    };
    this.DoStateChange = function () {
      if (this.FOnStateChange != null) this.FOnStateChange(this);
    };
    this.DoUpdateData = function () {
      if (this.FOnUpdateData != null) this.FOnUpdateData(this);
    };
    this.Create$1 = function (AOwner) {
      pas.Classes.TComponent.Create$1.call(this,AOwner);
      this.FDataLinks = pas.Classes.TList.$create("Create$1");
      this.FEnabled = true;
      this.FAutoEdit = true;
    };
    this.Destroy = function () {
      this.FOnStateChange = null;
      this.SetDataSet(null);
      var $with1 = this.FDataLinks;
      while ($with1.GetCount() > 0) rtl.getObject($with1.Get($with1.GetCount() - 1)).SetDataSource(null);
      rtl.free(this,"FDataLinks");
      pas.Classes.TComponent.Destroy.call(this);
    };
    var $r = this.$rtti;
    $r.addProperty("AutoEdit",0,rtl.boolean,"FAutoEdit","FAutoEdit",{Default: true});
    $r.addProperty("DataSet",2,$mod.$rtti["TDataSet"],"FDataSet","SetDataSet");
    $r.addProperty("Enabled",2,rtl.boolean,"FEnabled","SetEnabled",{Default: true});
    $r.addProperty("OnStateChange",0,pas.Classes.$rtti["TNotifyEvent"],"FOnStateChange","FOnStateChange");
    $r.addProperty("OnDataChange",0,$mod.$rtti["TDataChangeEvent"],"FOnDataChange","FOnDataChange");
    $r.addProperty("OnUpdateData",0,pas.Classes.$rtti["TNotifyEvent"],"FOnUpdateData","FOnUpdateData");
  });
  this.TDataRequestResult = {"0": "rrFail", rrFail: 0, "1": "rrEOF", rrEOF: 1, "2": "rrOK", rrOK: 2};
  rtl.createClass($mod,"TDataRequest",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FBookmark = new $mod.TBookmark();
      this.FDataset = null;
      this.FErrorMsg = "";
      this.FEvent = null;
      this.FLoadOptions = {};
      this.FRequestID = 0;
      this.FSuccess = 0;
      this.FData = undefined;
      this.FAfterRequest = null;
      this.FDataProxy = null;
    };
    this.$final = function () {
      this.FBookmark = undefined;
      this.FDataset = undefined;
      this.FEvent = undefined;
      this.FLoadOptions = undefined;
      this.FAfterRequest = undefined;
      this.FDataProxy = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.DoAfterRequest = function () {
      if (this.FAfterRequest != null) this.FAfterRequest(this);
    };
    this.Create$1 = function (aDataProxy, aOptions, aAfterRequest, aAfterLoad) {
      this.FDataProxy = aDataProxy;
      this.FLoadOptions = rtl.refSet(aOptions);
      this.FEvent = aAfterLoad;
      this.FAfterRequest = aAfterRequest;
    };
  });
  rtl.createClass($mod,"TRecordUpdateDescriptor",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FBookmark = new $mod.TBookmark();
      this.FData = undefined;
      this.FDataset = null;
      this.FProxy = null;
      this.FStatus = 0;
      this.FOriginalStatus = 0;
    };
    this.$final = function () {
      this.FBookmark = undefined;
      this.FDataset = undefined;
      this.FProxy = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.Create$1 = function (aProxy, aDataset, aBookmark, AData, AStatus) {
      this.FDataset = aDataset;
      this.FBookmark = new $mod.TBookmark(aBookmark);
      this.FData = AData;
      this.FStatus = AStatus;
      this.FOriginalStatus = AStatus;
      this.FProxy = aProxy;
    };
  });
  rtl.createClass($mod,"TDataProxy",pas.Classes.TComponent,function () {
    this.GetDataRequestClass = function () {
      var Result = null;
      Result = $mod.TDataRequest;
      return Result;
    };
    this.GetUpdateDescriptorClass = function () {
      var Result = null;
      Result = $mod.TRecordUpdateDescriptor;
      return Result;
    };
    this.GetDataRequest = function (aOptions, aAfterRequest, aAfterLoad) {
      var Result = null;
      Result = this.GetDataRequestClass().$create("Create$1",[this,rtl.refSet(aOptions),aAfterRequest,aAfterLoad]);
      return Result;
    };
    this.GetUpdateDescriptor = function (aDataset, aBookmark, AData, AStatus) {
      var Result = null;
      Result = this.GetUpdateDescriptorClass().$create("Create$1",[this,aDataset,new $mod.TBookmark(aBookmark),AData,AStatus]);
      return Result;
    };
  });
  this.DefaultFieldClasses = [$mod.TField,$mod.TStringField,$mod.TIntegerField,$mod.TLargeintField,$mod.TBooleanField,$mod.TFloatField,$mod.TDateField,$mod.TTimeField,$mod.TDateTimeField,$mod.TAutoIncField,$mod.TBlobField,$mod.TMemoField,$mod.TStringField,$mod.TVariantField,null];
  this.dsEditModes = rtl.createSet(2,3,4);
  this.ftBlobTypes = rtl.createSet(10,11);
  this.DatabaseError = function (Msg) {
    throw $mod.EDatabaseError.$create("Create$1",[Msg]);
  };
  this.DatabaseError$1 = function (Msg, Comp) {
    if ((Comp != null) && (Comp.FName !== "")) throw $mod.EDatabaseError.$create("CreateFmt",["%s : %s",[Comp.FName,Msg]]);
  };
  this.DatabaseErrorFmt = function (Fmt, Args) {
    throw $mod.EDatabaseError.$create("CreateFmt",[Fmt,Args]);
  };
  this.DatabaseErrorFmt$1 = function (Fmt, Args, Comp) {
    if (Comp != null) throw $mod.EDatabaseError.$create("CreateFmt",[pas.SysUtils.Format("%s : %s",[Comp.FName,Fmt]),Args]);
  };
  this.ExtractFieldName = function (Fields, Pos) {
    var Result = "";
    var i = 0;
    var FieldsLength = 0;
    i = Pos.get();
    FieldsLength = Fields.length;
    while ((i <= FieldsLength) && (Fields.charAt(i - 1) !== ";")) i += 1;
    Result = pas.SysUtils.Trim(pas.System.Copy(Fields,Pos.get(),i - Pos.get()));
    if ((i <= FieldsLength) && (Fields.charAt(i - 1) === ";")) i += 1;
    Pos.set(i);
    return Result;
  };
  $mod.$init = function () {
  };
},["DBConst"],function () {
  "use strict";
  var $mod = this;
  var $impl = $mod.$impl;
  $impl.DefaultBufferCount = 10;
  $impl.SInteger = "Integer";
  $impl.SBytes = "Bytes";
});
rtl.module("RestConnection",["System","Classes","SysUtils","Web","DB"],function () {
  "use strict";
  var $mod = this;
  rtl.createClass($mod,"TRESTConnection",pas.Classes.TComponent,function () {
    this.$init = function () {
      pas.Classes.TComponent.$init.call(this);
      this.FBaseURL = "";
      this.FDataProxy = null;
      this.FOnGetURL = null;
      this.FPageParam = "";
    };
    this.$final = function () {
      this.FDataProxy = undefined;
      this.FOnGetURL = undefined;
      pas.Classes.TComponent.$final.call(this);
    };
    this.GetDataProxy = function () {
      var Result = null;
      if (this.FDataProxy === null) this.FDataProxy = this.DoGetDataProxy();
      Result = this.FDataProxy;
      return Result;
    };
    this.GetReadBaseURL = function () {
      var Result = "";
      Result = this.FBaseURL;
      return Result;
    };
    this.GetPageURL = function (aRequest) {
      var Result = "";
      var URL = "";
      URL = this.GetReadBaseURL();
      if (this.FPageParam !== "") {
        if (pas.System.Pos("?",URL) !== 0) {
          URL = URL + "&"}
         else URL = URL + "?";
        URL = ((URL + this.FPageParam) + "=") + pas.SysUtils.IntToStr(aRequest.FRequestID - 1);
      };
      if (this.FOnGetURL != null) this.FOnGetURL(this,aRequest,{get: function () {
          return URL;
        }, set: function (v) {
          URL = v;
        }});
      Result = URL;
      return Result;
    };
    this.DoGetDataProxy = function () {
      var Result = null;
      Result = $mod.TRESTDataProxy.$create("Create$1",[this]);
      return Result;
    };
  });
  rtl.createClass($mod,"TRESTDataProxy",pas.DB.TDataProxy,function () {
    this.$init = function () {
      pas.DB.TDataProxy.$init.call(this);
      this.FConnection = null;
    };
    this.$final = function () {
      this.FConnection = undefined;
      pas.DB.TDataProxy.$final.call(this);
    };
    this.GetUpdateDescriptorClass = function () {
      var Result = null;
      Result = $mod.TRESTUpdateRequest;
      return Result;
    };
    this.DoGetData = function (aRequest) {
      var Result = false;
      var R = null;
      var URL = "";
      Result = false;
      R = rtl.as(aRequest,$mod.TRESTDataRequest);
      R.FXHR = new XMLHttpRequest();
      R.FXHR.addEventListener("load",rtl.createCallback(R,"onLoad"));
      URL = this.FConnection.GetPageURL(aRequest);
      if (URL === "") {
        if (2 in R.FLoadOptions) {
          R.FSuccess = 1}
         else {
          R.FSuccess = 0;
          R.FErrorMsg = "No URL to get data";
          R.DoAfterRequest();
        };
      } else {
        if ((2 in R.FLoadOptions) && (this.FConnection.FPageParam === "")) {
          R.FSuccess = 1}
         else {
          R.FXHR.open("GET",URL,true);
          R.FXHR.send();
          Result = true;
        };
      };
      return Result;
    };
    this.GetDataRequest = function (aOptions, aAfterRequest, aAfterLoad) {
      var Result = null;
      Result = $mod.TRESTDataRequest.$create("Create$1",[this,rtl.refSet(aOptions),aAfterRequest,aAfterLoad]);
      return Result;
    };
    this.Create$1 = function (AOwner) {
      pas.Classes.TComponent.Create$1.apply(this,arguments);
      if ($mod.TRESTConnection.isPrototypeOf(AOwner)) this.FConnection = AOwner;
    };
  });
  rtl.createClass($mod,"TRESTDataRequest",pas.DB.TDataRequest,function () {
    this.$init = function () {
      pas.DB.TDataRequest.$init.call(this);
      this.FXHR = null;
    };
    this.$final = function () {
      this.FXHR = undefined;
      pas.DB.TDataRequest.$final.call(this);
    };
    this.onLoad = function (Event) {
      var Result = false;
      if (this.FXHR.status === 200) {
        this.FData = this.TransformResult();
        this.FSuccess = 2;
      } else {
        this.FData = null;
        if ((2 in this.FLoadOptions) && (this.FXHR.status === 404)) {
          this.FSuccess = 1}
         else {
          this.FSuccess = 0;
          this.FErrorMsg = this.FXHR.statusText;
        };
      };
      this.DoAfterRequest();
      Result = true;
      return Result;
    };
    this.TransformResult = function () {
      var Result = undefined;
      Result = this.FXHR.responseText;
      return Result;
    };
  });
  rtl.createClass($mod,"TRESTUpdateRequest",pas.DB.TRecordUpdateDescriptor,function () {
  });
},["JS"]);
rtl.module("JSONDataset",["System","Types","JS","DB","Classes","SysUtils"],function () {
  "use strict";
  var $mod = this;
  rtl.createClass($mod,"TJSONFieldMapper",pas.System.TObject,function () {
    this.GetJSONDataForField$1 = function (F, Row) {
      var Result = undefined;
      Result = this.GetJSONDataForField(F.FFieldName,F.GetIndex(),Row);
      return Result;
    };
  });
  rtl.createClass($mod,"TJSONDateField",pas.DB.TDateField,function () {
    this.$init = function () {
      pas.DB.TDateField.$init.call(this);
      this.FDateFormat = "";
    };
    var $r = this.$rtti;
    $r.addProperty("DateFormat",0,rtl.string,"FDateFormat","FDateFormat");
  });
  rtl.createClass($mod,"TJSONTimeField",pas.DB.TTimeField,function () {
    this.$init = function () {
      pas.DB.TTimeField.$init.call(this);
      this.FTimeFormat = "";
    };
    var $r = this.$rtti;
    $r.addProperty("TimeFormat",0,rtl.string,"FTimeFormat","FTimeFormat");
  });
  rtl.createClass($mod,"TJSONDateTimeField",pas.DB.TDateTimeField,function () {
    this.$init = function () {
      pas.DB.TDateTimeField.$init.call(this);
      this.FDateTimeFormat = "";
    };
    var $r = this.$rtti;
    $r.addProperty("DateTimeFormat",0,rtl.string,"FDateTimeFormat","FDateTimeFormat");
  });
  rtl.createClass($mod,"TJSONIndex",pas.System.TObject,function () {
    this.$init = function () {
      pas.System.TObject.$init.call(this);
      this.FList = null;
      this.FRows = null;
      this.FDataset = null;
    };
    this.$final = function () {
      this.FList = undefined;
      this.FRows = undefined;
      this.FDataset = undefined;
      pas.System.TObject.$final.call(this);
    };
    this.GetRecordIndex = function (aListIndex) {
      var Result = 0;
      if (pas.JS.isUndefined(this.FList[aListIndex])) {
        Result = -1}
       else Result = Math.floor(this.FList[aListIndex]);
      return Result;
    };
    this.GetCount = function () {
      var Result = 0;
      Result = this.FList.length;
      return Result;
    };
    this.Create$1 = function (aDataset, aRows) {
      this.FRows = aRows;
      this.FList = new Array(this.FRows.length);
      this.FDataset = aDataset;
      this.CreateIndex();
    };
    this.Insert = function (aCurrentIndex, aRecordIndex) {
      var Result = 0;
      Result = this.Append(aRecordIndex);
      return Result;
    };
  });
  rtl.createClass($mod,"TDefaultJSONIndex",$mod.TJSONIndex,function () {
    this.CreateIndex = function () {
      var I = 0;
      for (var $l1 = 0, $end2 = this.FRows.length - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        this.FList[I] = I;
      };
    };
    this.AppendToIndex = function () {
      var I = 0;
      var L = 0;
      L = this.FList.length;
      this.FList.length = this.FRows.length;
      for (var $l1 = L, $end2 = this.FRows.length - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        this.FList[I] = I;
      };
    };
    this.Append = function (aRecordIndex) {
      var Result = 0;
      Result = this.FList.push(aRecordIndex) - 1;
      return Result;
    };
    this.Insert = function (aCurrentIndex, aRecordIndex) {
      var Result = 0;
      this.FList.splice(aCurrentIndex,0,aRecordIndex);
      Result = aCurrentIndex;
      return Result;
    };
    this.FindRecord = function (aRecordIndex) {
      var Result = 0;
      Result = this.FList.indexOf(aRecordIndex);
      return Result;
    };
    this.Update = function (aCurrentIndex, aRecordIndex) {
      var Result = 0;
      Result = 0;
      if (this.GetRecordIndex(aCurrentIndex) !== aRecordIndex) pas.DB.DatabaseErrorFmt$1("Inconsistent record index in default index, expected %d, got %d.",[aCurrentIndex,this.GetRecordIndex(aCurrentIndex)],this.FDataset);
      return Result;
    };
  });
  rtl.createClass($mod,"TBaseJSONDataSet",pas.DB.TDataSet,function () {
    this.$init = function () {
      pas.DB.TDataSet.$init.call(this);
      this.FMUS = false;
      this.FOwnsData = false;
      this.FDefaultIndex = null;
      this.FCurrentIndex = null;
      this.FCurrent = 0;
      this.FMetaData = null;
      this.FRows = null;
      this.FDeletedRows = null;
      this.FFieldMapper = null;
      this.FEditIdx = 0;
      this.FEditRow = undefined;
      this.FUseDateTimeFormatFields = false;
    };
    this.$final = function () {
      this.FDefaultIndex = undefined;
      this.FCurrentIndex = undefined;
      this.FMetaData = undefined;
      this.FRows = undefined;
      this.FDeletedRows = undefined;
      this.FFieldMapper = undefined;
      pas.DB.TDataSet.$final.call(this);
    };
    this.SetMetaData = function (AValue) {
      this.CheckInactive();
      this.FMetaData = AValue;
    };
    this.AllocRecordBuffer = function () {
      var Result = new pas.DB.TDataRecord();
      Result.data = new Object();
      Result.bookmark = null;
      Result.state = 0;
      return Result;
    };
    this.FreeRecordBuffer = function (Buffer) {
      Buffer.get().data = null;
      Buffer.get().bookmark = null;
      Buffer.get().state = 0;
    };
    this.InternalInitRecord = function (Buffer) {
      Buffer.get().data = this.FFieldMapper.CreateRow();
      Buffer.get().bookmark = null;
      Buffer.get().state = 0;
    };
    this.GetRecord = function (Buffer, GetMode, DoCheck) {
      var Result = 0;
      var BkmIdx = 0;
      Result = 0;
      var $tmp1 = GetMode;
      if ($tmp1 === 1) {
        if (this.FCurrent < (this.FCurrentIndex.GetCount() - 1)) {
          this.FCurrent += 1}
         else Result = 2}
       else if ($tmp1 === 2) {
        if (this.FCurrent > 0) {
          this.FCurrent -= 1}
         else Result = 1}
       else if ($tmp1 === 0) if (this.FCurrent >= this.FCurrentIndex.GetCount()) Result = 2;
      if (Result === 0) {
        BkmIdx = this.FCurrentIndex.GetRecordIndex(this.FCurrent);
        Buffer.get().data = this.FRows[BkmIdx];
        Buffer.get().bookmarkFlag = 0;
        Buffer.get().bookmark = BkmIdx;
      };
      return Result;
    };
    this.AddToRows = function (AValue) {
      if (this.FRows === null) {
        this.FRows = AValue}
       else {
        this.FRows = this.FRows.concat(AValue);
        this.AppendToIndexes();
      };
    };
    this.InternalClose = function () {
      this.BindFields(false);
      if (this.FDefaultFields) this.DestroyFields();
      this.FreeData();
    };
    this.InternalFirst = function () {
      this.FCurrent = -1;
    };
    this.InternalLast = function () {
      this.FCurrent = this.FCurrentIndex.GetCount();
    };
    this.InternalOpen = function () {
      pas.SysUtils.FreeAndNil({p: this, get: function () {
          return this.p.FFieldMapper;
        }, set: function (v) {
          this.p.FFieldMapper = v;
        }});
      this.FFieldMapper = this.CreateFieldMapper();
      if (this.FRows === null) {
        this.FRows = new Array();
        this.FOwnsData = true;
      };
      this.CreateIndexes();
      this.InternalInitFieldDefs();
      if (this.FDefaultFields) this.CreateFields();
      this.BindFields(true);
      this.InitDateTimeFields();
      this.FCurrent = -1;
    };
    this.InternalPost = function () {
      var Idx = 0;
      var B = new pas.DB.TBookmark();
      this.GetBookmarkData(new pas.DB.TDataRecord(this.ActiveBuffer()),{get: function () {
          return B;
        }, set: function (v) {
          B = v;
        }});
      if (this.FState === 3) {
        Idx = this.FRows.push(this.FEditRow) - 1;
        if (this.GetBookmarkFlag(new pas.DB.TDataRecord(this.ActiveBuffer())) === 2) {
          this.FDefaultIndex.Append(Idx);
          if (this.FCurrentIndex !== this.FDefaultIndex) this.FCurrentIndex.Append(Idx);
        } else {
          this.FCurrent = this.FDefaultIndex.Insert(this.FCurrent,Idx);
          if (this.FCurrentIndex !== this.FDefaultIndex) this.FCurrent = this.FCurrentIndex.Insert(this.FCurrent,Idx);
        };
      } else {
        if (this.FEditIdx === -1) pas.DB.DatabaseErrorFmt("Failed to retrieve record index for record %d",[this.FCurrent]);
        Idx = this.FEditIdx;
        this.FRows[Idx] = this.FEditRow;
        this.FDefaultIndex.Update(this.FCurrent,Idx);
        if (this.FCurrentIndex !== this.FDefaultIndex) this.FCurrentIndex.Update(this.FCurrent,Idx);
      };
      this.FEditIdx = -1;
      this.FEditRow = null;
    };
    this.InternalCancel = function () {
      this.FEditIdx = -1;
      this.FEditRow = null;
    };
    this.InternalInitFieldDefs = function () {
      if (this.FMetaData != null) this.MetaDataToFieldDefs();
      if (this.FFieldDefs.GetCount() === 0) throw $mod.EJSONDataset.$create("Create$1",["No fields found"]);
    };
    this.InternalSetToRecord = function (Buffer) {
      this.FCurrent = this.FCurrentIndex.FindRecord(Math.floor(Buffer.bookmark));
    };
    this.GetFieldClass = function (FieldType) {
      var Result = null;
      if (this.FUseDateTimeFormatFields && (FieldType in rtl.createSet(6,8,7))) {
        var $tmp1 = FieldType;
        if ($tmp1 === 6) {
          Result = $mod.TJSONDateField}
         else if ($tmp1 === 8) {
          Result = $mod.TJSONDateTimeField}
         else if ($tmp1 === 7) Result = $mod.TJSONTimeField;
      } else Result = pas.DB.TDataSet.GetFieldClass.call(this,FieldType);
      return Result;
    };
    this.IsCursorOpen = function () {
      var Result = false;
      Result = this.FDefaultIndex != null;
      return Result;
    };
    this.GetBookmarkData = function (Buffer, Data) {
      Data.get().Data = Buffer.bookmark;
    };
    this.GetBookmarkFlag = function (Buffer) {
      var Result = 0;
      Result = Buffer.bookmarkFlag;
      return Result;
    };
    this.FreeData = function () {
      if (this.FOwnsData) {
        this.FRows = null;
        this.FMetaData = null;
      };
      if (this.FCurrentIndex !== this.FDefaultIndex) {
        pas.SysUtils.FreeAndNil({p: this, get: function () {
            return this.p.FCurrentIndex;
          }, set: function (v) {
            this.p.FCurrentIndex = v;
          }})}
       else this.FCurrentIndex = null;
      pas.SysUtils.FreeAndNil({p: this, get: function () {
          return this.p.FDefaultIndex;
        }, set: function (v) {
          this.p.FDefaultIndex = v;
        }});
      pas.SysUtils.FreeAndNil({p: this, get: function () {
          return this.p.FFieldMapper;
        }, set: function (v) {
          this.p.FFieldMapper = v;
        }});
      this.FCurrentIndex = null;
      this.FDeletedRows = null;
    };
    this.AppendToIndexes = function () {
      this.FDefaultIndex.AppendToIndex();
    };
    this.CreateIndexes = function () {
      this.FDefaultIndex = $mod.TDefaultJSONIndex.$create("Create$1",[this,this.FRows]);
      this.AppendToIndexes();
      this.FCurrentIndex = this.FDefaultIndex;
    };
    this.InitDateTimeFields = function () {
    };
    this.Create$1 = function (AOwner) {
      pas.DB.TDataSet.Create$1.apply(this,arguments);
      this.FOwnsData = true;
      this.FUseDateTimeFormatFields = false;
      this.FEditIdx = -1;
    };
    this.Destroy = function () {
      this.FEditIdx = -1;
      this.FreeData();
      pas.DB.TDataSet.Destroy.apply(this,arguments);
    };
    this.GetFieldData$1 = function (Field, Buffer) {
      var Result = undefined;
      var R = undefined;
      if (this.FEditIdx == Buffer.bookmark) {
        if (this.FState === 8) {
          R = Buffer.data}
         else R = this.FEditRow;
      } else {
        if (this.FState === 8) {
          return null}
         else R = Buffer.data;
      };
      Result = this.FFieldMapper.GetJSONDataForField$1(Field,R);
      return Result;
    };
    this.CompareBookmarks = function (Bookmark1, Bookmark2) {
      var Result = 0;
      if (rtl.isNumber(Bookmark1.Data) && rtl.isNumber(Bookmark2.Data)) {
        Result = Math.floor(Bookmark2.Data) - Math.floor(Bookmark1.Data)}
       else {
        if (rtl.isNumber(Bookmark1.Data)) {
          Result = -1}
         else if (rtl.isNumber(Bookmark2.Data)) {
          Result = 1}
         else Result = 0;
      };
      return Result;
    };
  });
  rtl.createClass($mod,"TJSONObjectFieldMapper",$mod.TJSONFieldMapper,function () {
    this.GetJSONDataForField = function (FieldName, FieldIndex, Row) {
      var Result = undefined;
      Result = rtl.getObject(Row)[FieldName];
      return Result;
    };
    this.CreateRow = function () {
      var Result = undefined;
      Result = new Object();
      return Result;
    };
  });
  rtl.createClass($mod,"EJSONDataset",pas.DB.EDatabaseError,function () {
  });
},["DateUtils"]);
rtl.module("ExtJSDataset",["System","Classes","SysUtils","DB","JS","JSONDataset"],function () {
  "use strict";
  var $mod = this;
  rtl.createClass($mod,"TExtJSJSONDataSet",pas.JSONDataset.TBaseJSONDataSet,function () {
    this.$init = function () {
      pas.JSONDataset.TBaseJSONDataSet.$init.call(this);
      this.FFields = null;
      this.FIDField = "";
      this.FRoot = "";
    };
    this.$final = function () {
      this.FFields = undefined;
      pas.JSONDataset.TBaseJSONDataSet.$final.call(this);
    };
    this.InternalOpen = function () {
      var I = 0;
      pas.JSONDataset.TBaseJSONDataSet.InternalOpen.call(this);
      pas.System.Writeln("Checking ID field ",this.FIDField," as key field");
      for (var $l1 = 0, $end2 = this.FFieldList.GetCount() - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        if (pas.SysUtils.SameText(this.FFieldList.GetField(I).FFieldName,this.FIDField)) {
          this.FFieldList.GetField(I).FProviderFlags = rtl.unionSet(this.FFieldList.GetField(I).FProviderFlags,rtl.createSet(2));
          pas.System.Writeln("Setting ID field ",this.FIDField," as key field");
        };
      };
    };
    this.DataPacketReceived = function (ARequest) {
      var Result = false;
      var O = null;
      var A = null;
      Result = false;
      if (pas.JS.isNull(ARequest.FData)) return Result;
      if (rtl.isString(ARequest.FData)) {
        O = rtl.getObject(JSON.parse("" + ARequest.FData))}
       else if (rtl.isObject(ARequest.FData)) {
        O = rtl.getObject(ARequest.FData)}
       else pas.DB.DatabaseError("Cannot handle data packet");
      if (this.FRoot === "") this.FRoot = "rows";
      if (this.FIDField === "") this.FIDField = "id";
      if (O.hasOwnProperty("metaData") && rtl.isObject(O["metaData"])) {
        if (!this.GetActive()) this.SetMetaData(rtl.getObject(O["metaData"]));
        if (this.FMetaData.hasOwnProperty("root") && rtl.isString(this.FMetaData["root"])) this.FRoot = "" + this.FMetaData["root"];
        if (this.FMetaData.hasOwnProperty("idField") && rtl.isString(this.FMetaData["idField"])) this.FIDField = "" + this.FMetaData["idField"];
      };
      if (O.hasOwnProperty(this.FRoot) && rtl.isArray(O[this.FRoot])) {
        A = rtl.getObject(O[this.FRoot]);
        Result = A.length > 0;
        this.AddToRows(A);
      };
      return Result;
    };
    this.ConvertDateFormat = function (S) {
      var Result = "";
      Result = pas.SysUtils.StringReplace(S,"y","yy",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"Y","yyyy",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"g","h",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"G","hh",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"F","mmmm",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"M","mmm",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"n","m",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"D","ddd",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"j","d",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"l","dddd",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"i","nn",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"u","zzz",rtl.createSet(0));
      Result = pas.SysUtils.StringReplace(Result,"a","am\/pm",rtl.createSet(0,1));
      Result = pas.SysUtils.LowerCase(Result);
      return Result;
    };
    this.MetaDataToFieldDefs = function () {
      var A = null;
      var F = null;
      var I = 0;
      var FS = 0;
      var N = "";
      var ft = 0;
      var D = undefined;
      this.FFieldDefs.Clear();
      D = this.FMetaData["fields"];
      if (!rtl.isArray(D)) throw pas.JSONDataset.EJSONDataset.$create("Create$1",["Invalid metadata object"]);
      A = rtl.getObject(D);
      for (var $l1 = 0, $end2 = A.length - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        if (!rtl.isObject(A[I])) throw pas.JSONDataset.EJSONDataset.$create("CreateFmt",["Field definition %d in metadata is not an object",[I]]);
        F = rtl.getObject(A[I]);
        D = F["name"];
        if (!rtl.isString(D)) throw pas.JSONDataset.EJSONDataset.$create("CreateFmt",["Field definition %d in has no or invalid name property",[I]]);
        N = "" + D;
        D = F["type"];
        if (pas.JS.isNull(D) || pas.JS.isUndefined(D)) {
          ft = 1}
         else if (!rtl.isString(D)) {
          throw pas.JSONDataset.EJSONDataset.$create("CreateFmt",["Field definition %d in has invalid type property",[I]]);
        } else {
          ft = this.StringToFieldType("" + D);
        };
        if (ft === 1) {
          FS = this.GetStringFieldLength(F,N,I)}
         else FS = 0;
        this.FFieldDefs.Add$4(N,ft,FS);
      };
      this.FFields = A;
    };
    this.InitDateTimeFields = function () {
      var F = null;
      var FF = null;
      var I = 0;
      var Fmt = "";
      var D = undefined;
      if (this.FFields === null) return;
      for (var $l1 = 0, $end2 = this.FFields.length - 1; $l1 <= $end2; $l1++) {
        I = $l1;
        F = rtl.getObject(this.FFields[I]);
        D = F["type"];
        if (rtl.isString(D) && (("" + D) === "date")) {
          D = F["dateFormat"];
          if (rtl.isString(D)) {
            Fmt = this.ConvertDateFormat("" + D);
            FF = this.FindField("" + F["name"]);
            if (((FF !== null) && (FF.FDataType in rtl.createSet(6,7,8))) && (FF.FFieldKind === 0)) {
              if (pas.JSONDataset.TJSONDateField.isPrototypeOf(FF)) {
                FF.FDateFormat = Fmt}
               else if (pas.JSONDataset.TJSONTimeField.isPrototypeOf(FF)) {
                FF.FTimeFormat = Fmt}
               else if (pas.JSONDataset.TJSONDateTimeField.isPrototypeOf(FF)) FF.FDateTimeFormat = Fmt;
            };
          };
        };
      };
    };
    this.StringToFieldType = function (S) {
      var Result = 0;
      if (S === "int") {
        Result = 3}
       else if (S === "float") {
        Result = 5}
       else if (S === "boolean") {
        Result = 4}
       else if (S === "date") {
        Result = 8}
       else if (((S === "string") || (S === "auto")) || (S === "")) {
        Result = 1}
       else if (this.FMUS) {
        Result = 1}
       else throw pas.JSONDataset.EJSONDataset.$create("CreateFmt",["Unknown JSON data type : %s",[S]]);
      return Result;
    };
    this.GetStringFieldLength = function (F, AName, AIndex) {
      var Result = 0;
      var I = 0;
      var L = 0;
      var D = undefined;
      Result = 0;
      D = F["maxlen"];
      if (!isNaN(pas.JS.toNumber(D))) {
        Result = pas.System.Trunc(pas.JS.toNumber(D));
        if (Result <= 0) throw pas.JSONDataset.EJSONDataset.$create("CreateFmt",["Invalid maximum length specifier for field %s",[AName]]);
      } else {
        for (var $l1 = 0, $end2 = this.FRows.length - 1; $l1 <= $end2; $l1++) {
          I = $l1;
          D = this.FFieldMapper.GetJSONDataForField(AName,AIndex,this.FRows[I]);
          if (rtl.isString(D)) {
            L = ("" + D).length;
            if (L > Result) Result = L;
          };
        };
      };
      if (Result === 0) Result = 20;
      return Result;
    };
    this.Create$1 = function (AOwner) {
      pas.JSONDataset.TBaseJSONDataSet.Create$1.call(this,AOwner);
      this.FUseDateTimeFormatFields = true;
    };
    var $r = this.$rtti;
    $r.addProperty("FieldDefs",2,pas.DB.$rtti["TFieldDefs"],"FFieldDefs","SetFieldDefs");
    $r.addProperty("Active",3,rtl.boolean,"GetActive","SetActive",{Default: false});
    $r.addProperty("BeforeOpen",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeOpen","FBeforeOpen");
    $r.addProperty("AfterOpen",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterOpen","FAfterOpen");
    $r.addProperty("BeforeClose",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeClose","FBeforeClose");
    $r.addProperty("AfterClose",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterClose","FAfterClose");
    $r.addProperty("BeforeInsert",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeInsert","FBeforeInsert");
    $r.addProperty("AfterInsert",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterInsert","FAfterInsert");
    $r.addProperty("BeforeEdit",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeEdit","FBeforeEdit");
    $r.addProperty("AfterEdit",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterEdit","FAfterEdit");
    $r.addProperty("BeforePost",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforePost","FBeforePost");
    $r.addProperty("AfterPost",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterPost","FAfterPost");
    $r.addProperty("BeforeCancel",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeCancel","FBeforeCancel");
    $r.addProperty("AfterCancel",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterCancel","FAfterCancel");
    $r.addProperty("BeforeDelete",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeDelete","FBeforeDelete");
    $r.addProperty("AfterDelete",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterDelete","FAfterDelete");
    $r.addProperty("BeforeScroll",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FBeforeScroll","FBeforeScroll");
    $r.addProperty("AfterScroll",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FAfterScroll","FAfterScroll");
    $r.addProperty("OnCalcFields",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FOnCalcFields","FOnCalcFields");
    $r.addProperty("OnDeleteError",0,pas.DB.$rtti["TDataSetErrorEvent"],"FOnDeleteError","FOnDeleteError");
    $r.addProperty("OnEditError",0,pas.DB.$rtti["TDataSetErrorEvent"],"FOnEditError","FOnEditError");
    $r.addProperty("OnFilterRecord",2,pas.DB.$rtti["TFilterRecordEvent"],"FOnFilterRecord","SetOnFilterRecord");
    $r.addProperty("OnNewRecord",0,pas.DB.$rtti["TDataSetNotifyEvent"],"FOnNewRecord","FOnNewRecord");
    $r.addProperty("OnPostError",0,pas.DB.$rtti["TDataSetErrorEvent"],"FOnPostError","FOnPostError");
  });
  rtl.createClass($mod,"TExtJSJSONObjectDataSet",$mod.TExtJSJSONDataSet,function () {
    this.CreateFieldMapper = function () {
      var Result = null;
      Result = pas.JSONDataset.TJSONObjectFieldMapper.$create("Create");
      return Result;
    };
  });
});
rtl.module("program",["System","JS","Classes","SysUtils","strutils","Web","DB","RestConnection","ExtJSDataset"],function () {
  "use strict";
  var $mod = this;
  this.DefaultBaseLinkURL = "..\/docs-html\/";
  rtl.createClass($mod,"TRestDataset",pas.ExtJSDataset.TExtJSJSONObjectDataSet,function () {
    this.$init = function () {
      pas.ExtJSDataset.TExtJSJSONObjectDataSet.$init.call(this);
      this.FConnection = null;
    };
    this.$final = function () {
      this.FConnection = undefined;
      pas.ExtJSDataset.TExtJSJSONObjectDataSet.$final.call(this);
    };
    this.DoGetDataProxy = function () {
      var Result = null;
      Result = this.FConnection.GetDataProxy();
      return Result;
    };
  });
  rtl.createClass($mod,"TSearchClient",pas.Classes.TComponent,function () {
    this.$init = function () {
      pas.Classes.TComponent.$init.call(this);
      this.FBtn = null;
      this.FEdit = null;
      this.FConn = null;
      this.FResult = null;
      this.FWords = null;
      this.FFeedback = null;
      this.FContent = null;
      this.FTable = null;
      this.FTBody = null;
      this.FSearchTerm = "";
      this.FBaseLinkURL = "";
    };
    this.$final = function () {
      this.FBtn = undefined;
      this.FEdit = undefined;
      this.FConn = undefined;
      this.FResult = undefined;
      this.FWords = undefined;
      this.FFeedback = undefined;
      this.FContent = undefined;
      this.FTable = undefined;
      this.FTBody = undefined;
      pas.Classes.TComponent.$final.call(this);
    };
    this.AddRecords = function () {
      var E = null;
      var FId = null;
      var FRank = null;
      var FURL = null;
      var FContext = null;
      var $with1 = this.FResult;
      FId = $with1.FieldByName("id");
      FRank = $with1.FieldByName("Rank");
      FURL = $with1.FieldByName("URL");
      FContext = $with1.FieldByName("Context");
      while (!$with1.FEOF) {
        E = this.CreateRow1(FId.GetAsInteger(),FRank.GetAsInteger(),FURL.GetAsString(),FContext.GetAsString());
        this.FTBody.append(E);
        E = this.CreateRow2(FId.GetAsInteger(),FRank.GetAsInteger(),FURL.GetAsString(),FContext.GetAsString());
        if (E != null) this.FTBody.append(E);
        $with1.Next();
      };
    };
    this.CreateRow1 = function (AID, ARank, aPage, aContent) {
      var Result = null;
      var A = null;
      var C = null;
      var S = "";
      var I = 0;
      Result = document.createElement("TR");
      S = "id_" + pas.SysUtils.IntToStr(AID);
      Result.id = S;
      C = document.createElement("TD");
      C.appendChild(document.createTextNode(pas.SysUtils.IntToStr(ARank)));
      Result.appendChild(C);
      S = this.GetSection(aPage);
      C = document.createElement("TD");
      C.appendChild(document.createTextNode(S));
      Result.appendChild(C);
      C = document.createElement("TD");
      A = document.createElement("a");
      A.setAttribute("href",this.FBaseLinkURL + aPage);
      S = aPage;
      I = pas.strutils.RPos("\/",S);
      S = pas.System.Copy(S,I + 1,S.length - I);
      A.appendChild(document.createTextNode(S));
      C.appendChild(A);
      Result.appendChild(C);
      return Result;
    };
    this.CreateRow2 = function (AID, ARank, aPage, aContent) {
      var Result = null;
      var C = null;
      Result = document.createElement("TR");
      C = document.createElement("TD");
      C.appendChild(document.createTextNode(aContent));
      C.setAttribute("colspan","3");
      Result.appendChild(C);
      return Result;
    };
    this.CreateTable = function () {
      var Result = null;
      var TH = null;
      var R = null;
      var H = null;
      Result = document.createElement("TABLE");
      Result.className = "table table-striped table-bordered table-hover table-condensed";
      TH = document.createElement("THEAD");
      Result.append(TH);
      R = document.createElement("TR");
      TH.append(R);
      H = document.createElement("TH");
      R.append(H);
      H.appendChild(document.createTextNode("Rank"));
      H = document.createElement("TH");
      R.append(H);
      H.appendChild(document.createTextNode("section"));
      H = document.createElement("TH");
      R.append(H);
      H.appendChild(document.createTextNode("Url"));
      R = document.createElement("TR");
      TH.append(R);
      H = document.createElement("TH");
      H.setAttribute("colspan","3");
      R.append(H);
      H.appendChild(document.createTextNode("Context"));
      return Result;
    };
    this.DogetURL = function (Sender, aRequest, aURL) {
      if (aRequest.FDataset === this.FResult) {
        aURL.set((this.FConn.FBaseURL + "search?m=1&q=") + this.FEdit.value)}
       else aURL.set((this.FConn.FBaseURL + "list?t=contains&m=1&q=") + this.FSearchTerm);
    };
    this.DoInput = function (Event) {
      var Result = false;
      if (this.FEdit.value.length > 1) {
        this.FSearchTerm = this.FEdit.value;
        this.FWords.Close();
        this.FWords.Load({},null);
      };
      return Result;
    };
    this.DoOpen = function (DataSet) {
      if (!(this.FTable != null)) {
        this.FTable = this.CreateTable();
        this.FContent.appendChild(this.FTable);
        this.FTBody = document.createElement("TBODY");
        this.FTable.append(this.FTBody);
      };
      this.FResult.First();
      this.AddRecords();
    };
    this.DoSelectWord = function (aEvent) {
      var Result = false;
      this.FEdit.value = aEvent.target.getAttribute("value");
      this.FFeedback.setAttribute("style","display: none;");
      return Result;
    };
    this.DoWordsOpen = function (DataSet) {
      var Button = null;
      this.FFeedback.innerHTML = "";
      while (!DataSet.FEOF) {
        Button = document.createElement("button");
        Button.className = "dropdown-item";
        Button.setAttribute("role","option");
        Button.setAttribute("value",DataSet.FieldByName("word").GetAsString());
        Button.innerText = DataSet.FieldByName("word").GetAsString();
        Button.onclick = rtl.createCallback(this,"DoSelectWord");
        this.FFeedback.appendChild(Button);
        DataSet.Next();
      };
      this.FFeedback.setAttribute("style","display: block;");
    };
    this.GetSection = function (S) {
      var Result = "";
      if (pas.System.Pos("fpdoc\/",S) > 0) {
        Result = "FPDoc reference"}
       else if (pas.System.Pos("rtl\/",S) > 0) {
        Result = "RTL units reference"}
       else if (pas.System.Pos("fcl\/",S) > 0) {
        Result = "FCL units reference"}
       else if (pas.System.Pos("user\/",S) > 0) {
        Result = "User's manual"}
       else if (pas.System.Pos("ref\/",S) > 0) {
        Result = "Language reference"}
       else if (pas.System.Pos("prog\/",S) > 0) {
        Result = "Programmer's reference"}
       else Result = "";
      return Result;
    };
    this.DoClick = function (aEvent) {
      var Result = false;
      if (this.FContent != null) {
        this.FContent.innerHTML = "";
        this.FTable = null;
        this.FTBody = null;
      };
      this.FResult.Close();
      this.FResult.Load({},null);
      return Result;
    };
    this.Create$1 = function (AOwner) {
      this.FBaseLinkURL = $mod.DefaultBaseLinkURL;
      this.FConn = pas.RestConnection.TRESTConnection.$create("Create$1",[this]);
      this.FConn.FBaseURL = ".\/docsearch.cgi\/";
      this.FConn.FOnGetURL = rtl.createCallback(this,"DogetURL");
      this.FResult = $mod.TRestDataset.$create("Create$1",[this]);
      this.FResult.FConnection = this.FConn;
      this.FResult.FAfterOpen = rtl.createCallback(this,"DoOpen");
      this.FWords = $mod.TRestDataset.$create("Create$1",[this]);
      this.FWords.FConnection = this.FConn;
      this.FWords.FAfterOpen = rtl.createCallback(this,"DoWordsOpen");
      this.FBtn = document.getElementById("quick-search");
      this.FEdit = document.getElementById("search-term");
      this.FEdit.oninput = rtl.createCallback(this,"DoInput");
      this.FContent = document.getElementById("search-result");
      this.FFeedback = document.getElementById("search-term-feedback");
      this.FBtn.onclick = rtl.createCallback(this,"DoClick");
    };
  });
  $mod.$main = function () {
    $mod.TSearchClient.$create("Create$1",[null]);
  };
});
//# sourceMappingURL=docsearch.js.map
