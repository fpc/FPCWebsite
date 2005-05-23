program makemirror;
type
  pmirror = ^tmirror;
  tmirror = record
    linkurl : string[128];
    linkname,
    linksuffix  : string[40];
    next : pmirror;
  end;

var
  mirrors : pmirror;
  mirrorscnt : longint;

  procedure Replace(var s:string;const s1,s2:string);
  var
    hs : string;
    i  : longint;
  begin
    hs:=s;
    s:='';
    repeat
      i:=pos(s1,hs);
      if i=0 then
       begin
         s:=s+hs;
         break;
       end
      else
       begin
         s:=s+Copy(hs,1,i-1)+s2;
         Delete(hs,1,i+length(s1)-1);
       end;
    until false;
  end;


Function SplitName(Const HStr:String):String;
var
  i,j : byte;
begin
  i:=Length(Hstr);
  j:=i;
  while (i>0) and (Hstr[i]<>'/') do
   dec(i);
  while (j>0) and (Hstr[j]<>'.') do
   dec(j);
  if j<=i then
   j:=255;
  SplitName:=Copy(Hstr,i+1,j-(i+1));
end;



procedure readmirrors(const fn:string);
var
  i : longint;
  last : pmirror;
  t : text;
  s : string;
begin
  mirrorscnt:=0;
  mirrors:=nil;
  assign(t,fn);
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     writeln('File not found: ',fn);
     halt(1);
   end;
  last:=nil;
  while not eof(t) do
   begin
     readln(t,s);
     if (s<>'') and not(s[1] in ['#',';']) then
      begin
        if mirrors=nil then
         begin
           new(mirrors);
           last:=mirrors;
         end
        else
         begin
           new(last^.next);
           last:=last^.next;
         end;
        last^.next:=nil;
	replace(s,#9,' ');
        i:=pos(' ',s);
	{ Linkname & linksuffix }
        last^.linkname:=copy(s,1,i-1);
	replace(last^.linkname,' ','_');
        last^.linksuffix:=lowercase(copy(s,1,i-1));
	{ Strip spaces }
	while (i<length(s)) and (s[i]=' ') do
	  inc(i);
	Delete(s,1,i-1);
	{ Link prefix }
        last^.linkurl:=s;
        if last^.linkurl[length(last^.linkurl)]='/' then
         Delete(last^.linkurl,length(last^.linkurl),1);
        inc(mirrorscnt);
      end;
   end;
  close(t);
  writeln('Read ',mirrorscnt,' mirrors');
end;


procedure processfp_single(const fn,fn2:string);
var
  skip : boolean;
  t,f : text;
  hs,orgs,s : string;
  hp : pmirror;
  cntidx,
  linkidx,nameidx : longint;
begin
  assign(t,fn);
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     writeln('File not found: ',fn);
     halt(1);
   end;
  assign(f,fn2);
  rewrite(f);
  while not eof(t) do
   begin
     skip:=false;
     readln(t,s);
     nameidx:=pos('$THISPAGE',s);
     if (nameidx>0) then
       begin
         Delete(s,nameidx,9);
         Insert(SplitName(fn2),s,nameidx);
       end;
     orgs:=s;
     if (pos('$MIRRORURL',s)>0) or (pos('$MIRRORNAME',s)>0) then
      begin
        hp:=mirrors;
        while assigned(hp) do
         begin
           s:=orgs;
           linkidx:=pos('$MIRRORURL',s);
           if (linkidx>0) then
            begin
              Delete(s,linkidx,10);
              Insert(hp^.linkurl,s,linkidx);
            end;
           nameidx:=pos('$MIRRORNAME',s);
           if (nameidx>0) then
            begin
              Delete(s,nameidx,11);
              Insert(hp^.linkname,s,nameidx);
            end;
           nameidx:=pos('$MIRRORSUFFIX',s);
           if (nameidx>0) then
            begin
              Delete(s,nameidx,13);
              Insert(hp^.linksuffix,s,nameidx);
            end;
           writeln(f,s);
           hp:=hp^.next;
         end;
        skip:=true;
      end;
     cntidx:=pos('$MIRRORCNT',s);
     if (cntidx>0) then
      begin
        Delete(s,cntidx,10);
        str(mirrorscnt,hs);
        Insert(hs,s,cntidx);
      end;
     if not skip then
      writeln(f,s);
   end;
  close(t);
  close(f);
end;


procedure processfp_multi(const fn,fn2:string);
var
  skip : boolean;
  t,f : text;
  hs,orgs,s : string;
  hp : pmirror;
  j,
  cntidx,
  linkidx,nameidx : longint;
begin
  hp:=mirrors;
  while assigned(hp) do
    begin
  assign(t,fn);
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     writeln('File not found: ',fn);
     halt(1);
   end;
  hs:=fn2;
  j:=length(Hs);
  while (j>0) and (Hs[j]<>'.') do
   dec(j);
  if j=0 then
   j:=length(hs);
  insert('-'+lowercase(hp^.linkname),hs,j); 
  writeln('generating '+hs);  
  assign(f,hs);
  rewrite(f);
  while not eof(t) do
   begin
     skip:=false;
     readln(t,s);
     orgs:=s;
     linkidx:=pos('$MIRRORURL',s);
     if (linkidx>0) then
       begin
         Delete(s,linkidx,10);
         Insert(hp^.linkurl,s,linkidx);
       end;
     nameidx:=pos('$MIRRORNAME',s);
     if (nameidx>0) then
       begin
         Delete(s,nameidx,11);
         Insert(hp^.linkname,s,nameidx);
       end;
     nameidx:=pos('$MIRRORSUFFIX',s);
     if (nameidx>0) then
       begin
         Delete(s,nameidx,13);
         Insert(hp^.linksuffix,s,nameidx);
       end;
     writeln(f,s);
   end;
  close(t);
  close(f);
      hp:=hp^.next;
    end;
end;

var
  multi : boolean;
begin
  if paramcount<4 then
   begin
     writeln('usage: makemirrors <-single|-multi> <mirrorfile> <infile> <outfile>');
     halt(1);
   end;
  if paramstr(1)='-multi' then
    multi:=true
  else
   if paramstr(1)='-single' then
    multi:=false
  else
   begin
     writeln('no -multi or -single specified');
     halt(1);
   end;  
  readmirrors(paramstr(2));
  if multi then
    processfp_multi(paramstr(3),paramstr(4))
  else  
    processfp_single(paramstr(3),paramstr(4));
end.
