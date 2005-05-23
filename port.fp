<HTML>
<!--
#TITLE Free Pascal - Porting Turbo Pascal applications
#ENTRY moreinfo
#SUBENTRY port
#HEADER Porting Turbo Pascal to Free Pascal
-->

<P>
This document contains some information about differences between Free Pascal
and Turbo Pascal 7.0. This list is not complete.
</P>

<H3>Assembler</H3>
<UL>
  <LI>The default assembler uses an other syntax, but you can turn on the
      Intel styled assembler reader (which is what Turbo Pascal uses) using the -Rintel
      command line option or by adding <TT>{$asmmode intel}</TT> in your source.</LI>
  <LI>The 32 bit memory model requires a complete recoding of your assembler blocks.</LI>
</UL>

<H3>Run time library</H3>
<UL>
  <LI>To use the <TT>PORT</TT> array, add the Ports unit to you uses clause
      (only available under Dos/Go32v2 and Linux) </LI>
  <LI>You can access the realmode memory using <TT>MEM[seg:ofs]</TT> (as well
       as MemW and MemL) under Go32v2 only
      </LI>
  <LI>Ofs() returns a longint instead of a word</LI>
  <LI>The <TT>OVERLAY</TT> unit isn't available </LI>
  <LI>Turbo Vision is not (yet) available (copyright problems)</LI>
</UL>

<H3>Preprocessor/Syntax</H3>
<UL>
  <LI>If you use the -So command line switch (or add <TT>{$mode TP}</TT>in your source),
      the compiler will be put in Turbo Pascal compatibility mode, which will
      disable several of FPC's advanced features (like procedure overloading) to
      allow better compatibility with Turbo Pascal.
  <LI>Nested comments are allowed, but give a Note when found (disabled in TP mode)</LI>
</UL>

<H3>Syntax</H3>
<UL>
  <LI><TT>FAR</TT> and <TT>NEAR</TT> are ignored</LI>
  <LI>To get the address of a procedure to assign it to a procedure variable
      you must use the &#x040;-operator (in TP mode, procedure variables work like in TP)</LI>
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
  <LI><TT>INLINE</TT> is supported by the compiler, but is used to inline pascal code 
      not bytecode. </LI>
  <LI>The headers of forward declared functions/procedures always have to be completely
      rewritten in the definition, otherwise the compiler thinks that they are
      overloaded (not required if you use -So).
  <LI>There are some more reserved words</LI>
  <LI>Some Delphi extensions are partially supported</LI>
 </UL>


<H3>Semantics</H3>
<UL>
  <LI>Maximum parameter size which can be passed to a
subroutine is 64K for the Intel version and 32K for the Motorola versions.
</LI>
  <LI>Records are always aligned on word; use 'packed record' or {$PACKRECORDS 1}
      to get TP7 compatible records. A word of warning: use packed
only if you absolutely need to, as non-alignment of fields may not
work on non-Intel processors (and will slow down data access severly in all cases).</LI>
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
  <LI> Warning: currently all sets in FPC are either longint or 32 byte sized, whereas TP sets               usually are byte or word sized. A current work around for this is declaring your sets
       as a byte/word and then use the bit manipulation unit available on the
       contributions page to manually include/exclude items. Of course, this is only
       necessary if you need TP compatible records, otherwise you can use the standard
       FPC sets</LI>
  <LI>Function results can also be complex types like arrays or records (not in TP mode)</LI>
  <LI>It's possible to handle the function result in a function like a variable (not in TP mode):</LI>
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
  <LI>The above example would work with TP, but the compiler would assume
      that the <TT>a&gt;12 </TT>is a recursive call. To do a recursive call in
      FPC you must append <TT>() </TT>behind the function name (not in TP mode):</LI>
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
  <LI>The exit procedure can also used with a function result as parameter:</LI>
      <PRE>
      function a : longint;
        begin
          a:=12;
          if a&gt;4 then
           exit(a*67);
        end;
      </PRE>
   <LI>Forward defined functions always have to be defined with the full header (not in TP mode):</LI>
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
  <LI>Always short boolean evalution (also in TP mode!!)</LI>
</UL>


<H3>Others</H3>
<UL>
  <LI>The command line parameters are different</LI>
  <LI>Not all compiler switches are fully implemented</LI>
  <LI>The units aren't binary compatible</LI>
</UL>
