<master>
<property name="title"><trn key="website.port.title" locale="en_US">Free Pascal - Porting Turbo Pascal Applications</trn></property>
<property name="entry">moreinfo</property>
<property name="subentry">moreinfo</property>
<property name="header"><trn key="website.port.header" locale="en_US">Porting Turbo Pascal to Free Pascal</trn></property>

<trn key="website.port.document" locale="en_US">
<p>
This document contains some information about differences between Free Pascal
and Turbo Pascal 7.0 (and to some extent Delphi). This list is not complete.
</p>

<p>
More documentation can be found in the <a href="http://wiki.freepascal.org/Mode_TP">WIKI</a>
, more <a
href="http://wiki.freepascal.org/Porting_low-level_DOS_code_for_TP/BP_to_GO32v2_with_FPC">Wiki</a>,
and the documentation.
</p>
</trn>

<trn key="website.port.assembler" locale="en_US">
<h3>Assembler</h3>
<ul>
  <li>The default assembler uses another syntax, but you can turn on the
      Intel styled assembler reader (which is what Turbo Pascal uses) using the -Rintel
      command line option or by adding <TT>{$asmmode intel}</TT> in your source.</li>
  <li>The 32 bit memory model requires a complete recoding of your assembler blocks in case you come from TP.</li>
</ul>
</trn>

<trn key="website.port.runtime" locale="en_US">
<h3>Run time library</h3>
<ul>
  <li>The <TT>swap()</TT>, <TT>lo()</TT> and <TT>hi()</TT> intrinsics are overloaded
      for all integer types, rather than that they always assume a 16 bit operand.
      So for a 32 bit type, <TT>swap</TT> will swap the lower and upper 16 bits,
      and similarly <TT>lo()</TT> resp. <TT>hi()</TT> will also return the lower resp. upper 16 bits rather than 8 bits</li>
  <li>To use the <TT>PORT</TT> array, add the Ports unit to you uses clause
      (only available under Dos/Go32v2 and Linux) </li>
  <li>You can access the realmode memory using <TT>MEM[seg:ofs]</TT>, as well
       as MemW and MemL (only available under Dos/Go32v2)
      </li>
  <li>Ofs() returns a ptrint instead of a word</li>
  <li>The <TT>OVERLAY</TT> unit isn't available </li>
  <li>Turbo Vision support is provided by Free Vision; a clone because the original
	Turbo Vision is still not freely available (copyright not released by Borland)</li>
</ul>
</trn>

<trn key="website.port.preprocessor" locale="en_US">
<h3>Preprocessor/Syntax</h3>
<ul>
  <li>If you use the -So command line switch (or add <TT>{$mode TP}</TT>in your source),
      the compiler use its Turbo Pascal compatibility mode, which will
      disable several of FPC's advanced features (such as procedure overloading) to
      enable better compatibility with Turbo Pascal.
  <li>Nested comments are allowed, but give a Warning when found (disabled in TP mode)</li>
</ul>
</trn>

<trn key="website.port.syntax" locale="en_US">
<h3>Syntax</h3>
<ul>
  <li><TT>FAR</TT> and <TT>NEAR</TT> are ignored</li>
  <li>To get the address of a procedure to assign it to a procedure variable
      you must use the &#x040;-operator (in TP and Delphi mode, procedure variables work like in TP)</li>
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
  <li><TT>INLINE</TT> is supported by the compiler, but is used to inline Pascal code
      rather than machine code. </li>
  <li>The headers of forward declared functions/procedures always have to be completely
      rewritten in the definition, otherwise the compiler thinks that they are
      overloaded (not required if you use TP or Delphi mode).
  <li>There are some extra reserved words</li>
  <li>Most Delphi extensions up to Delphi 7 are supported (and also some from later Delphi versions)</li>
 </ul>
</trn>

<trn key="website.port.semantics" locale="en_US">
<h3>Semantics</h3>
<ul>
</li>
  <li>Records are by default aligned to the size of a cpu word; use 'packed record' or {$PACKRECORDS 1}
      to get TP7 compatible records. A word of warning: use packed
only if you absolutely need to, as non-alignment of fields may not
work on non-Intel processors (and will slow down data access in all cases).</li>
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
  <li>To get TP/Delphi-compatible set layouts, use the {$packset 1} directive (in FPC 2.5.1 and later, this is the default in TP/Delphi modes)</li>
  <li>Function results can also be complex types like arrays or records (not in TP mode)</li>
  <li>It is possible to handle the function result in a function like a variable (not in TP/Delphi mode):</li>
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
  <li>The above example would work with TP/Delphi, but they would assume
      that the <TT>a&gt;4 </TT>is a recursive call. To perform a recursive call in
      FPC you must append <TT>()</TT> to the function name (not required in TP/Delphi mode):</li>
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
   <li>Forward defined functions always have to be defined with the full header (not in TP/Delphi mode):</li>
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
</ul>
</trn>

<trn key="website.port.others" locale="en_US">
<h3>Others</h3>
<ul>
  <li>The command line parameters are different</li>
  <li>Not all compiler switches are fully implemented</li>
  <li>The units are not binary compatible</li>
<li> The Overflow check also affects inc() and dec().</li>
<li> The Range check not only checks array index for legal values,
 but also values to be in the possible range of variables.
 Thus if you need {$Q-} somewhere, you may need to add {$R-}.
</li>
<li> The search order for unit-directories and include-directories is reversed,
 it starts with the last directory. If you have two units with the same name,
 FreePascal may use a different one than TurboPascal does.
</li>
<li> The round function does not round up at 0.5, but to the nearest even number
 (although SetRoundMode can be used to control the behaviour somewhat)
</li>
<li> the dos unit Findfirst() call must always be followed by a Findclose
 to release some resource.
</li>
</ul>
</trn>