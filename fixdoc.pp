program fixdoc;

var
  t,f : text;
  s,unitname : string;
  i,j : longint;
begin
  if paramcount<1 then
   begin
     writeln('usage: fixdoc <doc>');
     halt(1);
   end;
  assign(t,paramstr(1));
  {$I-}
   reset(t);
  {$I+}
  if ioresult<>0 then
   begin
     writeln('can''t open ',paramstr(1));
     halt(1);
   end;
  assign(f,'fixdoc.tmp');
  rewrite(f);
  while not eof(t) do
   begin
     readln(t,s);
     i:=pos('The ',s);
     j:=pos('unit',s);
     if (i>0) and (j>0) and (j>i) then
      begin
        unitname:=Lowercase(Copy(s,i+4,j-i-5));
        i:=pos('<A NAME="',s);
        if i>0 then
         begin
           inc(i,9);
           j:=i;
           while (j<length(s)) and (s[j]<>'"') do
            inc(j);
           if s[j+1]=' ' then
            begin
              Delete(s,i,j-i);
              Insert(unitname,s,i);
            end;
         end;
      end;
     writeln(f,s);
   end;
  close(f);
  close(t);
  erase(t);
  rename(f,paramstr(1));
end.
