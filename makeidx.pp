program makeidx;

var
  t,f : text;
  j   : longint;
  s   : string;
begin
  if paramcount<1 then
   begin
     writeln('Usage: makeidx <file>');
     halt(1);
   end;

  assign(t,paramstr(1));
  {I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     Writeln('Can''t open ',paramstr(1));
     Halt(1);
   end;
  assign(f,'makeidx.tmp');
  rewrite(f);

  s := '';
  while (not eof(t)) and (pos('IDXSTART',s)=0) do
   begin
     readln(t,s);
     writeln(f,s);
   end;

  s := '';
  while (not eof(t)) and (pos('IDXEND',s)=0) do
   readln(t,s);

  while (not eof(t)) do
   begin
     readln(t,s);
     { remove <LI> }
     if Copy(s,1,8)='<LI><A N' then
      Delete(s,1,4);
     { Anchor ? }
     if Copy(s,1,9)='<A NAME="' then
      begin
        Delete(s,1,9);
        {</A>}
        j:=pos('</A>',s);
        if j=0 then
         j:=255;
        write(f,'  <LI><A HREF="#'+Copy(s,1,j-1));
	if j+4>=length(s) then
         readln(t,s)
        else
         delete(s,1,j+3);
        {<H3><LI>}
        if Copy(s,1,2)='<H' then
         Delete(s,1,4);
        if Copy(s,1,2)='<L' then
         Delete(s,1,4);
        {</LI></H3>}
        if Copy(s,length(s)-4,3)='</H' then
         Delete(s,length(s)-4,5);
        if Copy(s,length(s)-4,3)='</L' then
         Delete(s,length(s)-4,5);
        writeln(f,s+'</A></LI>');
      end;
   end;

  writeln(f,'<!-- IDXEND -->');
  reset(t);

  s := '';
  while (not eof(t)) and (pos('IDXEND',s)=0) do
   readln(t,s);

  while (not eof(t)) do
   begin
     readln(t,s);
     writeln(f,s);
   end;

  close(t);
  close(f);

  erase(t);
  rename(f,paramstr(1));
end.
