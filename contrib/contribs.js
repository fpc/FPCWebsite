Ext.QuickTips.init()
Ext.ToolTip.prototype.onTargetOver =
    	Ext.ToolTip.prototype.onTargetOver.createInterceptor(function(e) {
    		this.baseTarget = e.getTarget();
    	});
Ext.ToolTip.prototype.onMouseMove =
  	Ext.ToolTip.prototype.onMouseMove.createInterceptor(function(e) {
    		if (!e.within(this.baseTarget)) {
    			this.onTargetOver(e);
    			return false;
    		}
    	});
;

Ext.namespace('Ext.ux');
/**
 * @class Ext.ux.FitToParent
 * @extends Object
 * <p>Plugin for {@link Ext.BoxComponent BoxComponent} and descendants that adjusts the size of the component to fit inside a parent element</p>
 * <p>The following example will adjust the size of the panel to fit inside the element with id="some-el":<pre><code>
var panel = new Ext.Panel({
    title: 'Test',
    renderTo: 'some-el',
    plugins: ['fittoparent']
});</code></pre></p>
 * <p>It is also possible to specify additional parameters:<pre><code>
var panel = new Ext.Panel({
    title: 'Test',
    renderTo: 'other-el',
    autoHeight: true,
    plugins: [
        new Ext.ux.FitToParent({
            parent: 'parent-el',
            fitHeight: false,
            offsets: [10, 0]
        })
    ]
});</code></pre></p>
 * <p>The element the component is rendered to needs to have <tt>style="overflow:hidden"</tt>, otherwise the component will only grow to fit the parent element, but it will never shrink.</p>
 * <p>Note: This plugin should not be used when the parent element is the document body. In this case you should use a {@link Ext.Viewport Viewport} container.</p>
 */
Ext.ux.FitToParent = Ext.extend(Object, {
    /**
     * @cfg {HTMLElement/Ext.Element/String} parent The element to fit the component size to (defaults to the element the component is rendered to).
     */
    /**
     * @cfg {Boolean} fitWidth If the plugin should fit the width of the component to the parent element (default <tt>true</tt>).
     */
    fitWidth: true,
    /**
     * @cfg {Boolean} fitHeight If the plugin should fit the height of the component to the parent element (default <tt>true</tt>).
     */
    fitHeight: true,
    /**
     * @cfg {Boolean} offsets Decreases the final size with [width, height] (default <tt>[0, 0]</tt>).
     */
    offsets: [0, 0],
    /**
     * @constructor
     * @param {HTMLElement/Ext.Element/String/Object} config The parent element or configuration options.
     * @ptype fittoparent
     */
    constructor: function(config) {
        config = config || {};
        if(config.tagName || config.dom || Ext.isString(config)){
            config = {parent: config};
        }
        Ext.apply(this, config);
    },
    init: function(c) {
        this.component = c;
        c.on('render', function(c) {
            this.parent = Ext.get(this.parent || c.getPositionEl().dom.parentNode);
            if(c.doLayout){
                c.monitorResize = true;
                c.doLayout = c.doLayout.createInterceptor(this.fitSize, this);
            } else {
                this.fitSize();
                Ext.EventManager.onWindowResize(this.fitSize, this);
            }
        }, this, {single: true});
    },
    fitSize: function() {
        var pos = this.component.getPosition(true),
            size = this.parent.getViewSize();
        this.component.setSize(
            this.fitWidth ? size.width - pos[0] - this.offsets[0] : undefined,
            this.fitHeight ? size.height - pos[1] - this.offsets[1] : undefined);
    }
});
Ext.preg('fittoparent', Ext.ux.FitToParent);

Ext.ns('fpWeb');
// /* Error Handling */
fpWeb.showError = function(title, message) {
    Ext.Msg.show({
        title : title,
        msg : message,
        icon : Ext.Msg.ERROR,
        buttons : Ext.Msg.OK
    });
};
fpWeb.showAjaxError = function(message) {
    fpWeb.showError('Ajax Error', message);
};
fpWeb.getResponseError = function(provider, response, message) {
    var result = (!Ext.isEmpty(response)) && (Ext.isEmpty(response.error)) && (Ext.isDefined(response.result));
    if (!result) {
        if ((!Ext.isEmpty(response)) && (!Ext.isEmpty(response.error))) {
            message = message + response.error.message;
        } else {
            message = message + 'Internal server error.';
        }
        fpWeb.showAjaxError(message);
    }
    return result;
};
fpWeb.EntryForm=Ext.extend(Ext.Window,{
  fentry : {},
  bok : {},
  bcancel : {},
  checkReply : function (provider,response) {
    var aMsg = '';
    var aTitle = '';
    if (fpWeb.getResponseError(provider,response,'Error adding your contribution')) {
      if (this.isNew) {
        aMsg = 'Your contribution has been successfully submitted as entry '+response.result+'.';
        aTitle = 'Contribution submitted';
      } else {
        aMsg = 'Your contribution was successfully updated.';
        aTitle = 'Contribution updated';
      }
      Ext.Msg.show({
          title : aTitle,
          msg : aMsg,
          icon : Ext.Msg.INFO,
          buttons : Ext.Msg.OK,
          fn: function() {
            if (!Ext.isEmpty(this.store)) {
              this.store.reload();
            }
            this.close();
          }.createDelegate(this)
      });
    }
  },
  submitform : function () {
    var d = this.fentry.getForm().getValues(false);
    if (this.isNew) {
      ContribsRPC.AddContrib(d,this.checkReply.createDelegate(this));
    } else {
      ContribsRPC.UpdateContrib(d,this.checkReply.createDelegate(this));
    }
  },
  constructor : function(options) {
    this.bok = new Ext.Button({
       iconCls : 'icon-ok',
       text : 'Save',
       handler : this.submitform,
       scope : this
    });
    this.bcancel = new Ext.Button({
       iconCls : 'icon-cancel',
       text : 'Cancel',
       handler : this.close,
       scope : this
    });
    this.fentry = new Ext.FormPanel({
      defaultType : 'textfield',
      defaults : { width : 300 },
      labelWidth: 200,
      labelAlign: 'right',
      items : [
        { name : 'C_NAME', fieldLabel: 'Name' },
        { name : 'C_VERSION', fieldLabel: 'Version', width : 50 },
        { id: 'cgcategory', name : 'C_CATEGORIES', fieldLabel: 'Category', xtype: 'radiogroup',
          columns: 2,
          items : [ {id : 'cbGraphics', name : 'C_CATEGORY', boxLabel: 'Graphics', inputValue: 'Graphics'},
                    {id : 'cbInternet', name : 'C_CATEGORY', boxLabel: 'Internet', inputValue: 'Internet'},
                    {id : 'cbDatabase', name : 'C_CATEGORY', boxLabel: 'Database', inputValue: 'Database'},
                    {id : 'cbFile handling', name : 'C_CATEGORY', boxLabel: 'File handling', inputValue: 'File handling'},
                    {id : 'cbMiscellaneous', name : 'C_CATEGORY', boxLabel: 'Miscellaneous', inputValue: 'Miscellaneous'}]},
        { name : 'C_AUTHOR', fieldLabel: 'Author' },
        { name : 'C_EMAIL', fieldLabel: 'Email' },
        { name : 'C_DESCR', fieldLabel: 'Description', xtype: 'textarea', heigt: 150},
        { name : 'C_FTPFILE', fieldLabel: 'FTP download'},
        { name : 'C_HOMEPAGE', fieldLabel: 'Home page'},
        { name : 'C_ID',  xtype: 'hidden'},
        { name : 'C_OS',fieldLabel: 'Operating system(s)'},
        { name : 'C_USER', fieldLabel: 'Username'},
        { name : 'C_PASSWORD', fieldLabel: 'Password', inputType: 'password'}
      ],
      buttons: [ this.bok, this.bcancel ]
    });
    Ext.apply(options,{
      width: 600,
      height: 500,
      title: options.isNew ? 'New contributed unit' : 'Update contributed unit',
      closable: true,
      modal: true,
      layout: 'fit',
      items : [ this.fentry ]
    });
    if (! options.isNew ) {
      this.fentry.getForm().loadRecord(options.record);
      var cbg = Ext.getCmp('cgcategory');
      if (cbg) {
        var val = 'cb'+options.record.data.C_CATEGORY;
        cbg.setValue(val,true);
      }
    }
    fpWeb.EntryForm.superclass.constructor.call(this,options);
  }
});
fpWeb.AddEntry = function(data) {
  var f = new fpWeb.EntryForm({isNew:true, store : data});
  f.show();
};
fpWeb.EditEntry = function(data, rec) {
  var f = new fpWeb.EntryForm({isNew:false, store : data, record : rec});
  f.show();
};
fpWeb.ShowContributedUnits = function() {
  var myproxy = new Ext.data.HttpProxy ( {
    api : {
      read: "contribs.cgi/Provider/Contrib/Read/",
      update: "contribs.cgi/Provider/Contrib/Update/",
      create: "contribs.cgi/Provider/Contrib/Insert/",
      destroy: "contribs.cgi/Provider/Contrib/Delete/"
    }
  });
  var myreader = new Ext.data.JsonReader ({
      root: "rows",
      successProperty : 'success',
      idProperty: "C_ID",
      messageProperty: 'message', // Must be specified here
      fields: [
       { name : 'C_AUTH_METHOD'},
       { name : 'C_AUTHOR'},
       { name : 'C_CATEGORY'},
       { name : 'C_DATE'},
       { name : 'C_DESCR'},
       { name : 'C_EMAIL'},
       { name : 'C_FTPFILE'},
       { name : 'C_HOMEPAGE'},
       { name : 'C_ID'},
       { name : 'C_NAME'},
       { name : 'C_OS'},
       { name : 'C_VERSION' }
     ]
  });
  var data = new Ext.data.Store({
    proxy: myproxy,
    reader: myreader,
    idProperty: "C_ID"
  });
  // Listen to errors.
  data.addListener('exception', function(proxy, type, action, options, res) {
    if (type === 'remote') {
        Ext.Msg.show({
            title: 'REMOTE EXCEPTION',
            msg: res.message,
            icon: Ext.MessageBox.ERROR,
            buttons: Ext.Msg.OK
        });
    }
  });
  data.load();
  var filters = new Ext.ux.grid.GridFilters({
    autoReload: false,
    local: true,
    filters: [
    { dataIndex: 'C_ID', type: 'numeric' },
    { dataIndex: 'C_NAME', type: 'string' },
    { dataIndex: 'C_AUTHOR', type: 'string' },
    { dataIndex: 'C_VERSION', type: 'string' },
    { dataIndex: 'C_OS', type: 'string' },
    { dataIndex: 'C_DESCRIPTION', type: 'string' },
    { dataIndex: 'C_CATEGORY', type: 'list', options: ['Graphics', 'Miscellaneous', 'Internet', 'Database', 'File Handling']}
    ]
  });
  var expander = new Ext.ux.grid.RowExpander({
              tpl:
                '<div class="description"><B>Description:</B></div> {C_DESCR}<P>'+
                '<div class="description"><B>Website:</B></div> <A HREF="{C_HOMEPAGE}">{C_HOMEPAGE}</A><BR>'+
                '<div class="description"><B>FTP download:</B></div> <A HREF="{C_FTPFILE}">{C_FTPFILE}</A>'
  });
  var togglePreview = function(show){
    var v = grid.getView();
    var b = Ext.getCmp('toggledetails');
    for (var i = 0; i<grid.getStore().getCount(); i++) {
      if (show) {
       expander.expandRow(i);
      } else {
       expander.collapseRow(i);
      }
    }
    if (b) {
      b.setIconClass(show ?  'icon-nodetails' : 'icon-details' );
      b.setText(show ? 'Hide details' : 'Show details' );
    }
  };
  var grid = new Ext.grid.GridPanel({
    frame: true,
    plugins: [filters,expander],
    renderTo: 'contribs',
    autoHeight:true,
    store: data,
    onRender: function() {
      Ext.grid.GridPanel.prototype.onRender.apply(this, arguments);
      this.addEvents("beforetooltipshow");
      this.tooltip = new Ext.ToolTip({
       	renderTo: Ext.getBody(),
      	target: this.view.mainBody,
       	listeners: {
       		beforeshow: function(qt) {
    	            var v = this.getView();
	            var row = v.findRowIndex(qt.baseTarget);
	            var cell = v.findCellIndex(qt.baseTarget);
	            this.fireEvent("beforetooltipshow", this, row, cell);
       		},
       		scope: this
        	}
        });
    },
    listeners: {
      render: function(g) {
        g.on("beforetooltipshow", function(grid, row, col) {
          grid.tooltip.body.update(grid.getStore().getAt(row).get('C_NAME'));
        });
      }
    },
    columns: [
       expander,
       { dataIndex : 'C_NAME', header : 'Name', sortable: true, width : 80 },
       { dataIndex : 'C_AUTHOR', header: 'Author', sortable: true, width : 180},
       { dataIndex : 'C_VERSION', header : 'Version',sortable: true},
       { dataIndex : 'C_CATEGORY', header: 'Category',sortable: true},
       { dataIndex : 'C_OS', header: 'OS', width: 80,sortable: true },
       { dataIndex : 'C_DATE', header: 'Date', sortable: true, hidden : true},
       { dataIndex : 'C_FTPFILE', header: 'FTP File', sortable: true, hidden: true},
       { dataIndex : 'C_HOMEPAGE', header: 'Home page', sortable: true, hidden: true},
       { dataIndex : 'C_ID', header: 'ID', sortable: true, hidden: true},
       { dataIndex : 'C_USER', header: 'User', sortable: true, hidden: true}
    ],
    viewConfig: {
        forceFit: true,
        showPreview: false, // custom property
        enableRowBody: true, // required to create a second, full-width row to show expanded Record data
/*
        getRowClass: function(record, rowIndex, rp, ds){ // rp = rowParams
            var s = '<div class="description"><B>Description:</B></div> '+record.data.C_DESCR+'<P>';
            if (record.data.C_HOMEPAGE) {
              s += '<div class="description"><B>Website:</B></div> <A HREF="'+record.data.C_HOMEPAGE+'">'+record.data.C_HOMEPAGE+'</A><BR>';
            }
            if (record.data.C_FTPFILE) {
              s += '<div class="description"><B>FTP download:</B></div> <A HREF="'+record.data.C_FTPFILE+'"/>'+record.data.C_FTPFILE+'</A>';
            }
            if(grid.getView().showPreview){
                rp.body = s.replace(/<img(.|\n|\r)*>/i,'');
                return 'x-grid3-row-expanded';
            }
            return 'x-grid3-row-collapsed';
        }
*/    },
    sm: new Ext.grid.RowSelectionModel({singleSelect:true}),
    tbar : [ {
          id: 'toggledetails',
          text:'Show details',
          iconCls: 'icon-details',
          enableToggle: true,
          pressed: false,
          tooltip: {title:'Description',text:'Show extended descriptions'},
          scope:this,
          toggleHandler: function(btn, pressed){
            togglePreview(pressed);
          }.createDelegate(this)
        }, '-' ,
         {
            text: 'Add',
            iconCls: 'icon-add',
            handler: function(btn, ev) {
              fpWeb.AddEntry(data);
            },
            scope: grid
        }, '-' , {
            text: 'Edit',
            iconCls: 'icon-edit',
            handler: function(btn, ev) {
              var rec = grid.getSelectionModel().getSelected();
              if (rec) {
                fpWeb.EditEntry(data,rec);
              }
            },
            scope: grid
        }, '-', {
            text: 'Delete',
            iconCls: 'icon-delete',
            handler: function(btn, ev) {
              var index = grid.getSelectionModel().getSelectedCell();
              if (!index) {
                  return false;
              }
              var rec = grid.store.getAt(index[0]);
              grid.store.remove(rec);
              },
            scope: grid
        }
    ]

  });
   //pass along browser window resize events to the panel
   Ext.EventManager.onWindowResize(grid.doLayout, grid);
};
