<master>
<property name="title">Free Pascal - Porting Turbo Pascal Applications</property>
<property name="entry">moreinfo</property>
<property name="subentry">moreinfo</property>
<property name="header">Porting Turbo Pascal to Free Pascal</property>
<p>
This document contains some information about differences between Free Pascal
and Turbo Pascal 7.0. This list is not complete.
</p>

<h3>Assembler</h3>
<ul>
  <li>The default assembler uses an other syntax, but you can turn on the
      Intel styled assembler reader (which is what Turbo Pascal uses) using the -Rintel
      command line option or by adding <TT>{$asmmode intel}</TT> in your source.</li>
  <li>The 32 bit memory model requires a complete recoding of your assembler blocks.</li>
</ul>

<h3>Run time library</h3>
<ul>
  <li>To use the <TT>PORT</TT> array, add the Ports unit to you uses clause
      (only available under Dos/Go32v2 and Linux) </li>
  <li>You can access the realmode memory using <TT>MEM[seg:ofs]</TT> (as well
       as MemW and MemL) under Go32v2 only
      </li>
  <li>Ofs() returns a longint instead of a word</li>
  <li>The <TT>OVERLAY</TT> unit isn't available </li>
  <li>Turbo Vision support is provided by Free Vision; a clone because the original
	Turbo Vision is still not freely available (copyright not released by Borland)</li>
</ul>

<h3>Preprocessor/Syntax</h3>
<ul>
  <li>If you use the -So command line switch (or add <TT>{$mode TP}</TT>in your source),
      the compiler will be put in Turbo Pascal compatibility mode, which will
      disable several of FPC's advanced features (like procedure overloading) to
      allow better compatibility with Turbo Pascal.
  <li>Nested comments are allowed, but give a Note when found (disabled in TP mode)</li>
</ul>

<h3>Syntax</h3>
<ul>
  <li><TT>FAR</TT> and <TT>NEAR</TT> are ignored</li>
  <li>To get the address of a procedure to assign it to a procedure variable
      you must use the &#x040;-operator (in TP mode, procedure variables work like in TP)</li>
      <PRE>
      procedure p;
        begin
        end;

      var
        proc : procedure;
      begin
        proc:=&#x040;p;
      end;
      </PRE>
  <li><TT>INLINE</TT> is supported by the compiler, but is used to inline pascal code 
      not bytecode. </li>
  <li>The headers of forward declared functions/procedures always have to be completely
      rewritten in the definition, otherwise the compiler thinks that they are
      overloaded (not required if you use -So).
  <li>There are some more reserved words</li>
  <li>Some Delphi extensions are partially supported</li>
 </ul>


<h3>Semantics</h3>
<ul>
  <li>Maximum parameter size which can be passed to a
subroutine is 64K for the Intel version and 32K for the Motorola versions.
</li>
  <li>Records are always aligned on word; use 'packed record' or {$PACKRECORDS 1}
      to get TP7 compatible records. A word of warning: use packed
only if you absolutely need to, as non-alignment of fields may not
work on non-Intel processors (and will slow down data access severly in all cases).</li>
      <PRE>
      type
        r1=record
          a : byte;
          b : word;
        end;
        r2=packed record
          a : byte;
          b : word;
        end;

      begin
        writeln(sizeof(r1));  { outputs 4 }
        writeln(sizeof(r2));  { outputs 3 }
      end.
      </PRE>
  <li> Warning: currently all sets in FPC are either longint or 32 byte sized, whereas TP sets               usually are byte or word sized. A current work around for this is declaring your sets
       as a byte/word and then use the bit manipulation unit available on the
       contributions page to manually include/exclude items. Of course, this is only
       necessary if you need TP compatible records, otherwise you can use the standard
       FPC sets</li>
  <li>Function results can also be complex types like arrays or records (not in TP mode)</li>
  <li>It's possible to handle the function result in a function like a variable (not in TP mode):</li>
      <PRE>
      function a : longint;
        begin
          a:=12;
          while a&gt;4 do
           begin
             {...}
           end;
         end;
     </PRE>
  <li>The above example would work with TP, but the compiler would assume
      that the <TT>a&gt;12 </TT>is a recursive call. To do a recursive call in
      FPC you must append <TT>() </TT>behind the function name (not in TP mode):</li>
      <PRE>
      function a : longint;
        begin
          a:=12;
        {    v---- this is a recursive call }
          if a()&gt;4 then
           begin
             {...}
           end;
        end;
      </PRE>
  <li>The exit procedure can also used with a function result as parameter:</li>
      <PRE>
      function a : longint;
        begin
          a:=12;
          if a&gt;4 then
           exit(a*67);
        end;
      </PRE>
   <li>Forward defined functions always have to be defined with the full header (not in TP mode):</li>
       <PRE>
       procedure x(v : longint);forward;

       procedure x; { this overloads the procedure x !!!!}
         begin
           { ... }
         end;

       { write instead: }

       procedure x(v : longint);
         begin
           { ... }
         end;
       </PRE>
  <li>Always short boolean evalution (also in TP mode!!)</li>
</ul>


<h3>Others</h3>
<ul>
  <li>The command line parameters are different</li>
  <li>Not all compiler switches are fully implemented</li>
  <li>The units aren't binary compatible</li>
</ul>
