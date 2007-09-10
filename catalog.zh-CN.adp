<TRN locale="zh_CN" key="website.a_Access_denies_while_download">
<p>Free Pascal 的主 FTP 站点在同一时刻只能接受一定数量的连接。如果发生了这个错误，那是因为连接数达到了这个限制。这个问题的解决方案有两个，一是等一会儿再试，二是使用一个 Free Pascal 镜像站。</p>
   
</TRN>
<TRN locale="zh_CN" key="website.a_build_unit">
<p>如同 Turbo Pascal 一样。Unit 文件的第一个关键字必须是 UNIT (不区分大小写)。编译后会生成两个文件 <TT>XXX.PPU</TT> 和 <TT>XXX.O</TT>。PPU 文件包含 Unit 的接口 (interface) 信息，O 文件包含编译后的机器码 (一种目标 (object) 文件，其格式取决于您使用哪一种汇编。要在其他的单元或程序中使用这个 Unit，您必须在 USES 块中加入它的名字。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_calling_C_functions">
<p>Free Pascal 程序可以调用用 GNU C (<tt>GCC</tt>) 编译的 C 语言写的函数。GCC 的 2.7.2 版到 2.95.2 版都通过了测试。下面是一个定义 C 函数 strcmp 的例子：</p>
<pre>function strcmp(s1 : pchar;s2 : pchar) : integer;cdecl;external;</pre>

</TRN>
<TRN locale="zh_CN" key="website.a_compiling_systemunit">
<p>要编译 System Unit，推荐您安装 GNU make 工具。在 RTL 源代码目录中输入“make”将编译所有 RTL Unit (包含 System Unit)。您也可以进入您所需的 OS 目录(例如 rtl/go32v2)并在那里运行“make”。 </p>
<p>您也可以手动编译，但您必须对 RTL 的目录结构有深入的了解。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_Debugging_DLL">
<p>目前由 Free Pascal 编译的共享库 (或动态链接库)还不支持调试功能。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_Debug_smartlinked">
<p>调试智能链接的代码有时可能无法正常工作。这是因为智能链接后的代码中没有包含类型信息。但如果要包含这些信息，编译后的文件就会变得很大。</p>
<p>当调试程序时，我们建议不要使用智能链接选项。</p>
      
</TRN>
<TRN locale="zh_CN" key="website.Advantages">
优势
</TRN>
<TRN locale="zh_CN" key="website.Advantages_of">
采用 Pascal 和 Free Pascal 编程的优势
</TRN>
<TRN locale="zh_CN" key="website.Advantages_title">
Free Pascal 的优势
</TRN>
<TRN locale="zh_CN" key="website.adv_assembler_integration">
<STRONG>与汇编语言的完善集成</STRONG> 您是否认为 Pascal 只是一个为学习编程而设计的语言？并非这样！它也支持许多高级的技术例如嵌入式汇编。您可以方便地混合汇编与 Pascal 代码。偏好 Intel 格式的汇编？没问题，如果必须的话 Free Pascal 会自动把它为您转换成 ATT。您是否想把您的程序转换为 Nasm 支持的源文件？没问题，您的代码中所有的 ATT 汇编都会被自动转换。

</TRN>
<TRN locale="zh_CN" key="website.adv_compatible">
<STRONG>兼容性</STRONG> 已经有许多代码了？Free Pascal 比许多其他 Pascal 编译器的兼容性更好。我们几乎完全兼容 Turbo Pascal 并且能很好地支持 Delphi 源代码。如果您有其它语言的程序，比如 C 和汇编，继续使用您喜爱的编译器，然后从 Free Pascal 调用它。

</TRN>
<TRN locale="zh_CN" key="website.adv_distribution_indep">
<STRONG>发行版独立(Linux)</STRONG> 如此的结果，采用 Free Pascal 的 Linux 版编译的软件可以在所有的 Linux 发行版上运行，这样您就可以非常方便地让您的软件支持多种 Linux 发行版。

</TRN>
<TRN locale="zh_CN" key="website.adv_Fast_code">
<STRONG>高速，低内存占用</STRONG> 作为一个把高级语言编译成快速的机器码的编译器，Free Pascal 已经让 Pascal 成为世界上最快的程序设计语言之一。此外，Free Pascal 程序只使用很少的内存。与其他语言的比较我们建议您看看<a href='http://shootout.alioth.debian.org/gp4/benchmark.php?test=all&lang=all'>这里</a>，并且我们希望您根据您自己的口味选择使用的编译器。

</TRN>
<TRN locale="zh_CN" key="website.adv_IDE">
<STRONG>集成开发环境(IDE)</STRONG> Free Pascal 拥有一个可以在多种平台上运行的 IDE，您可以通过它来编写、编译和调试您的程序。它是您编程过程中最好的朋友。

</TRN>
<TRN locale="zh_CN" key="website.adv_multiplatform">
<STRONG>支持众多的平台架构</STRONG> Free Pascal 比其他 Pascal 编译器要支持更多的平台，并且支持交叉编译，只要改变 IDE 中的“目标(target)”参数再编译即可！并且这种方式甚至支持更多的平台和处理器。

</TRN>
<TRN locale="zh_CN" key="website.adv_namespace">
<STRONG>每一个 unit 都拥有其自己的标识符</STRONG> 在 Pascal 中您不需要担心弄乱命名空间(Name Space)，就像在 C 中，任意标识符都必须是全局唯一的。在 Pascal 中每一个 unit 都有它自己的命名空间，这将会非常方便。

</TRN>
<TRN locale="zh_CN" key="website.adv_No_Makefiles">
<STRONG>无需 Makefile</STRONG> 不像大多数的程序设计语言那样，Pascal 不需要 Makefile。您可以节省大量的时间，编译器将自动判断哪些文件需要重新编译。

</TRN>
<TRN locale="zh_CN" key="website.adv_OOP">
<STRONG>面向对象的程序设计(OOP)</STRONG> 如果您做一些大型的项目，您一定对面向对象的程序设计很感兴趣。您可以依照您的口味用 Turbo Pascal 和 Object Pascal 的方式使用 OOP。FCL 和 Free Vision 为您提供了可供使用的强大的对象库。对于您的数据库需求我们还支持 PostgreSQL、MySQL、Interbase 和 ODBC。
    
</TRN>
<TRN locale="zh_CN" key="website.adv_very_clean_lang">
<STRONG>非常干净的语言</STRONG> Pascal 是一个非常不错的语言，例如您的程序的可读性将比用 C 语言编写的程序更好，同时让我们忘记 C++。您也不必放弃强大的功能，Pascal 语言和您需要的一样强大。

</TRN>
<TRN locale="zh_CN" key="website.a_dynamic_libraries">
<p>该平台不支持创建或使用共享库 (也被称为动态连接库)。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_FPC_vs_GPC">
<dl>
<dt><b>目标：</b></dt>
<dd>Free Pascal 实现一个跨平台的尽可能兼容 Borland Pascal 的编译器。而 GNU Pascal 实现一个 POSIX 格式的 Pascal 编译器。</dd>
<dt><b>版本：</b></dt>
<dd>目前，Free Pascal 的版本号为 2.0 (2005 年 5 月)。GNU Pascal 的版本号为 2.1 (2002 年，它可以采用多种 GCC 作为后台；它们的 Mac OS X 版本是个例外，它采用 GCC 的版本号)。</dd>
<dt><b>跟踪：</b></dt>
<dd>在发行版本之间，FPC 的开发中版本都有每日更新的快照或 CVS 源代码可用。GPC 则每年发布一些用于最新版的补丁，也有一些用户制作的用于 OS X 和 Windows 的快照。</dd>
<dt><b>操作系统：</b></dt>
<dd>Free Pascal 可以在很多平台的操作系统上运行，例如 DOS、Win32(不需要 Unix 接口)、Linux、FreeBSD、NetBSD、OS/2、BeOS、Classic Mac OS、Mac OS X 和 AmigaOS。支持的体系架构有 x86、x86_64 (AMD64)、Sparc、PowerPC、ARM 和 Motorola (Motorola 只在 1.0.x 版中支持)。GNU Pascal 可以在所有能运行 GNU C 的平台上运行，并且编译过程中它会自动检验。</dd>
<dt><b>捆绑软件：</b></dt>
<dd>FPC 需要一些适合的二进制工具 (AS,AR,LD)、gmake 和一个命令行编译器。新的架构/操作系统采用交叉编译。GPC 捆绑了一个适合的 GCC，并且需要大量的二进制工具、flex、bison、gmake、一个 POSIX Shell 和 libtool。</dd>
<dt><b>源代码：</b></dt>
<dd>Free Pascal 完全采用 Pascal 编写(大约 6 MB 的源代码)，而 GNU Pascal 是用 C 写的 (所以它需要 GNU C 编译器：2.8 MB 的源代码 + 8 MB 的 GNU C 的源代码)。</dd>
<dt><b>语言：</b></dt>
<dd>Free Pascal 支持 Borland Pascal 方言，实现了 Delphi Object Pascal 语言和一些 Mac Pascal 扩展。GNU Pascal 支持 ISO 7185、ISO 10206、和(大多数)Borland Pascal 7.0 语法。</dd>
<dt><b>扩展：</b></dt>
<dd>Free Pascal 实现了方法、函数和操作符重载(之后的 Delphi 版本也实现了这些功能，所以严格的说这些已经不算是扩展)。GNU Pascal 实现了操作符重载。</dd>
<dt><b>协议：</b></dt>
<dd>两个编译器都基于 GNU GPL 协议。</dd>
<dt><b>作者</b></dt>
<dd>Free Pascal 项目由德国的 Florian Kl&auml;mpfl (florian&#x040;freepascal.org) 发起，GNU Pascal 由芬兰的 Jukka Virtanen 发起 (jtv&#x040;hut.fi)。</dd>
</dl><br>

</TRN>
<TRN locale="zh_CN" key="website.a_Game_in_FPC">
<p>是的，您可以使用 Free Pascal 开发游戏。并且如果您有能力您可以开发出类似 Doom 3 的游戏。制作游戏是困难的，您需要先成为一个有经验的程序员。<a href="http://www.pascalgamedevelopment.com">www.pascalgamedevelopment.com</a>网站就是一个用 Free Pascal 和 Delphi 开发游戏的人们建立的一个社区。</p>
<p>如果您想开始，请先学习 <a href="http://www.delphi-jedi.org/Jedi:TEAM_SDL_HOME">JEDI-SDL</a> 或 <a href="http://ptcpas.sourceforge.net">PTCPas</a>。另外您也可以试一试一些已有的游戏，例如 <a href='http://thesheepkiller.sourceforge.net'>The Sheep Killer</a>，它是一个很简单的游戏，而且它的代码很容易理解。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_Getting_the_compiler">
<p>最新的官方版本全部可以从<a href="download@x@">官方镜像</a>下载。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_Homework">
<p>对不起，请不要向我们寄来关于作业的邮件，我们不是老师。Free Pascal 开发团队一直为 Free Pascal 编译器提供良好的技术支持并且尽量回复所有的邮件。但如果我们总是受到这样的邮件，我们的工作就将变得越来越困难了。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_how_does_proc_overloading_work">
<p>下面是一个过程重载的例子：</p>
<pre>
                    procedure a(i : integer);
                    begin
                    end;

                    procedure a(s : string);
                    begin
                    end;

                    begin
                        a('asdfdasf');
                        a(1234);
                    end.
</pre>
<p>您必须谨慎使用。如果有一个重载的函数被放在 unit 的接口 (interface) 部分，那么所有重载的函数都必须放在这个部分。否则编译器就会报告“This overloaded function can't be local”（此重载的函数不能是局部的）信息。所有重载的函数必须有不同的参数，仅仅返回值不同是不够的。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_OOP">
<p>Free Pascal 编译器支持 Delphi 类。确定您打开了 -S2 或 -Sd 开关 (关于它们详细的含义请查看用户手册)。与 Delphi 的不兼容性列表也请查看用户手册。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_Real_windows_application">
最简单的方式是<a href="http://www.lazarus.freepascal.org">下载 Lazarus</a>。它也不仅仅在 Windows 下工作，它还支持 Linux、FreeBSD 和 Mac OS X。

</TRN>
<TRN locale="zh_CN" key="website.a_Runtime_errors">
<p>当 Free Pascal 编译的程序在运行中出现了致命错误时，将会显示一个类似下面格式的错误信息：</p>
<pre>
            Runtime error 201 at $00010F86
              $00010F86  main,  line 7 of testr.pas
              $0000206D
</pre>
<p>这里的 201 代表错误号。所有错误号的定义可以在 Free Pascal 用户手册的附录 D 找到。十六进制的数码表示错误发生时的函数栈 (call stack)。

</TRN>
<TRN locale="zh_CN" key="website.a_Standard_units">
<p>关于 Free Pascal 支持的基本 Unit，以及它们所支持的平台，请参考 Free Pascal 用户手册。在用户手册中还有关于每个 Unit 的功能的简单叙述。</p>

</TRN>
<TRN locale="zh_CN" key="website.Authors">
作者
</TRN>
<TRN locale="zh_CN" key="website.a_Wanna_new_version_now">
<p>在两个官方发行版本之间，您可以看一看开发测试版本 (被称为“快照”)。请注意：这些版本还在开发中，所以它修正了一些 Bug 也新增了一些特性，但它也可能包含一些新的 Bug。</p>
<p>快照在每天晚上自动生成。有时一些大的更改无法完全实现。如果您的版本不能工作，请在一到两天后再试。建议您不要下载用于 Dos 的 GO32v1 版本，因为它已经不再受支持。</p>
<p>最新快照一直可以从<a href="develop@x@#snapshot">开发</a>页面下载。</p>

</TRN>
<TRN locale="zh_CN" key="website.a_What_is_FPC">
<p>原来命名为 FPK-Pascal，Free Pascal 编译器是一个免费的兼容 Turbo Pascal 和 Delphi 的 32 位/64 位 Pascal 编译器，它支持 DOS、Linux、Win32、OS/2、FreeBSD、AmigaOS、Mac OS X、Mac OS classic 和其他一些平台(支持的平台的数量时时刻刻都在增长，并且它们的级别和主要的那一个一样)。</p>
<p>Free Pascal 编译器支持 x86、Sparc (v8,v9)、ARM、x86_64 (AMD64/Opteron) 和
PowerPC 架构。老版本 (1.0 系列) 还支持 m68k。</p>  	
<p>编译器是采用 Pascal 编写的，并且它可以自展 (即编译其自身)。所有的源代码都基于 GPL 分发。</p>
<p>简短的历史：
<ul>
<li>1993 年 6 月：项目开始</li>
<li>1993 年 10 月：初步成果</li>
<li>1995 年 3 月：编译器实现了自展</li>
<li>1996 年 3 月：在互联网上发布</li>
<li>2000 年 7 月：1.0 版</li>
<li>2000 年 12 月：1.0.4 版</li>
<li>2002 年 4 月：1.0.6 版</li>
<li>2003 年 7 月：1.0.10 版</li>
<li>2005 年 5 月：2.0.0 版</li>
<li>2005 年 12 月：2.0.2 版</li>
<li>2006 年 8 月：2.0.4 版</li>
</ul>
          
</TRN>
<TRN locale="zh_CN" key="website.a_Why_username_password_for_download">
<p>当您尝试着登录到 FTP 站点时。您必须使用 anonymous 作为您的用户名，并且使用您的 E-mail 作为密码。</p>

</TRN>
<TRN locale="zh_CN" key="website.Binaries">
二进制文件
</TRN>
<TRN locale="zh_CN" key="website.Binary_packages">
二进制包
</TRN>
<TRN locale="zh_CN" key="website.Bugtracker">
Bug 跟踪器
</TRN>
<TRN locale="zh_CN" key="website.can_download_for_platform_beta">
您可以下载支持下列操作系统的 2.1.4 版本：
</TRN>
<TRN locale="zh_CN" key="website.Coding">
编程
</TRN>
<TRN locale="zh_CN" key="website.Community">
社区
</TRN>
<TRN locale="zh_CN" key="website.config_browser_t">
配置您的浏览器
</TRN>
<TRN locale="zh_CN" key="website.Contribute">
捐献
</TRN>
<TRN locale="zh_CN" key="website.Contributed_Units">
捐献的 Unit
</TRN>
<TRN locale="zh_CN" key="website.Credits">
捐献者
</TRN>
<TRN locale="zh_CN" key="website.Current_Version">
当前版本
</TRN>
<TRN locale="zh_CN" key="website.DEB_compatibility">
我们的 DEB 包兼容所有基于 DEB 的发行版，包括 Debian。
</TRN>
<TRN locale="zh_CN" key="website.Delphi_unimplemented">
下列 Delphi 功能还没有实现
</TRN>
<TRN locale="zh_CN" key="website.Development">
开发
</TRN>
<TRN locale="zh_CN" key="website.Documentation">
文档
</TRN>
<TRN locale="zh_CN" key="website.Documentation_in_diff_formats">
多种格式的<a href="down2/docs/docs@x@">文档</a>
</TRN>
<TRN locale="zh_CN" key="website.down_i386_freebsd_note">
FreeBSD 4.x 并且 5.x 亦可能
</TRN>
<TRN locale="zh_CN" key="website.down_i386_netware_note">
仅支持 2.0.0
</TRN>
<TRN locale="zh_CN" key="website.Download">
下载
</TRN>
<TRN locale="zh_CN" key="website.download_documentation">
有多种格式的文档可以从我们的<a href="down/docs/docs@x@">下载站</a>下载。

</TRN>
<TRN locale="zh_CN" key="website.download_old_releases">
一些旧的 FPC 版本（现在已经完全不提供技术支持）支持一些目前不支持的处理器架构，您可以在<a href="down/old/down@x@">这里</a>找到它们。但不要提问关于这些旧版本的任何问题——我们不会修正它们。不支持这些平台的最主要原因是因为我们缺乏开发者——如果您有兴趣来更新它们，请联系我们（使用 fpc-devel 邮件列表）。

</TRN>
<TRN locale="zh_CN" key="website.download_snapshots">
作为官方版本的补充，我们还提供一种称作“快照”的编译器、RTL、IDE 和<a href="develop@x@">开发页面</a>上列出的其他包的版本。这些编译过的版本包括了对源代码的最新的修正和完善，所以如果您有问题您可以试一试它们。当然，它们同时可能包含一些新的 Bug。

</TRN>
<TRN locale="zh_CN" key="website.download_source">
源代码被分割成多个 <b>zip</b> 文件或 <b>tar.gz</b> 文件，您可以从任一<a href="down/source/sources@x@">下载站</a>获取。

</TRN>
<TRN locale="zh_CN" key="website.down_sparc_linux_note">
仅支持 2.0.0
</TRN>
<TRN locale="zh_CN" key="website.FAQ">
FAQ
</TRN>
<TRN locale="zh_CN" key="website.faq_intro">
<p>此文档提供关于编译器的最新信息。此外，它还回答了 Free Pascal 的一些常见问题。这里的信息的更新速度要慢于 Free Pascal 文档。</p>

</TRN>
<TRN locale="zh_CN" key="website.Features">
特性
</TRN>
<TRN locale="zh_CN" key="website.Features_text">
Free Pascal 的语法和 Turbo Pascal 7.0 有极佳的兼容性，同时也兼容 Delphi 的大多数版本(classes、rtti、exception、ansistring、widestring 和 interface)。Mac Pascal 兼容模式亦支持了苹果用户。此外 Free Pascal 支持函数重载、操作符重载、全局成员和许许多多其他特性。
  
</TRN>
<TRN locale="zh_CN" key="website.Feeling_Lucky">
手气不错
</TRN>
<TRN locale="zh_CN" key="website.for_comprehensive">
<p>关于 Pascal 语言和 RTL 的更全面的系统，请参考 Free Pascal 用户手册。本文档包含的主题列表：</p>

</TRN>
<TRN locale="zh_CN" key="website.FPC_on_the_Mac">
Mac 上的 FPC
</TRN>
<TRN locale="zh_CN" key="website.Future_Plans">
未来计划
</TRN>
<TRN locale="zh_CN" key="website.General">
概要
</TRN>
<TRN locale="zh_CN" key="website.General_information">
概述
</TRN>
<TRN locale="zh_CN" key="website.General_Information">
概述
</TRN>
<TRN locale="zh_CN" key="website.help_translating_t">
帮助翻译
</TRN>
<TRN locale="zh_CN" key="website.Home">
主页
</TRN>
<TRN locale="zh_CN" key="website.Known_Problems">
已知问题
</TRN>
<TRN locale="zh_CN" key="website.known_probs_204_3">
有一个 Bug 会使 IDE 在调试时崩溃。有如此经历的用户可以尝试安装使用一个 2.0.5 版的快照。

</TRN>
<TRN locale="zh_CN" key="website.latest_beta">
最新的 beta 版本号为 <b>2.1.4</b>
</TRN>
<TRN locale="zh_CN" key="website.latest_news">
最近新闻
</TRN>
<TRN locale="zh_CN" key="website.License">
协议
</TRN>
<TRN locale="zh_CN" key="website.License_text">
所有外包和 RTL 基于一个修改过的 LGPL 协议，以便于创建应用程序时可以使用这些库。编译器的源代码基于 GPL 协议。编译器和 RTL 的协议都是公开的；完整的编译器是使用 Pascal 编写的。

</TRN>
<TRN locale="zh_CN" key="website.Links_mirrors">
链接/镜像
</TRN>
<TRN locale="zh_CN" key="website.Mailinglists">
邮件列表
</TRN>
<TRN locale="zh_CN" key="website.More_information">
更多信息
</TRN>
<TRN locale="zh_CN" key="website.Multilingual_website">
多语言页面
</TRN>
<TRN locale="zh_CN" key="website.News">
新闻
</TRN>
<TRN locale="zh_CN" key="website.news_headline_20070328">
<em>2007 年 3 月 28 日</em> <a href='http://www.morfik.com'>MORFIK</A> 发布了 WebOS AppsBuilder 的 1.0.0.7 版本。它是 AppsBuilder 首个采用 FPC 来开发后台的版本。

</TRN>
<TRN locale="zh_CN" key="website.news_headline_20070520">
<em>2007 年 5 月 20 日</em> 在几年的新 fpc 2.2.0 版的开发之后，<em>2.1.4</em> 版（即 <em>2.2.0-beta</em> 版）已经<a href="download@x@#beta">发布</a>。这个 beta 版本发布之后的两个月左右将发布 2.2.0 版。我们邀请我们所有的用户来测试这个版本，并且在<a href="mantis/set_project.php?project_id=6"> Bug 跟踪器</a>上汇报错误。如果您想了解您发现的 Bug 是否已经解决了，您可以看一看 <a href="mantis/set_project.php?project_id=6">mantis</a>，或者尝试我们基于 fixes_2_2 branch 的每日快照。所以请帮助我们把 2.2.0 制作成为到目前为止 Free Pascal 最稳定的版本。更改列表可以在<a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/whatsnew.txt">这里</a>找到。<a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/readme.txt">版本日志</a>亦可用。请注意该版本与以前版本有一些不兼容，可以点击<a href="http://wiki.freepascal.org/User_Changes_2.2.0">这里</a>查看对不兼容性的概述。

</TRN>
<TRN locale="zh_CN" key="website.Official_releases">
官方版本
</TRN>
<TRN locale="zh_CN" key="website.Old_releases">
旧版本
</TRN>
<TRN locale="zh_CN" key="website.overview">
概述
</TRN>
<TRN locale="zh_CN" key="website.Pascal_lang_rel_inf">
Pascal 语言相关问题
</TRN>
<TRN locale="zh_CN" key="website.Porting_from_TP7">
与 TP7 的接口
</TRN>
<TRN locale="zh_CN" key="website.q_Access_denies_while_download">
当连接到 Free Pascal FTP 站点时拒绝访问
</TRN>
<TRN locale="zh_CN" key="website.q_Big_binaries">
为什么生成的二进制文件这么大？
</TRN>
<TRN locale="zh_CN" key="website.q_build_unit">
编译一个 Unit
</TRN>
<TRN locale="zh_CN" key="website.q_calling_C_functions">
调用 C 函数
</TRN>
<TRN locale="zh_CN" key="website.q_cfg_problems">
配置文件问题 (fpc.cfg 或 ppc386.cfg)
</TRN>
<TRN locale="zh_CN" key="website.q_compiling_systemunit">
编译 System Unit
</TRN>
<TRN locale="zh_CN" key="website.q_Debugging_DLL">
有时无法调试共享库 (动态链接库)
</TRN>
<TRN locale="zh_CN" key="website.q_Debug_smartlinked">
有时不能调试智能链接的代码
</TRN>
<TRN locale="zh_CN" key="website.q_FPC_vs_GPC">
Free Pascal 与 GNU Pascal 的比较
</TRN>
<TRN locale="zh_CN" key="website.q_Game_in_FPC">
用 Free Pascal 怎么开发游戏？我能用 Free Pascal 开发出一个类似 Doom 3 的游戏吗？
</TRN>
<TRN locale="zh_CN" key="website.q_Getting_the_compiler">
获取编译器
</TRN>
<TRN locale="zh_CN" key="website.q_Homework">
我要写一个程序作业。你们可以提供帮助吗？
</TRN>
<TRN locale="zh_CN" key="website.q_how_does_proc_overloading_work">
如何使用函数重载？
</TRN>
<TRN locale="zh_CN" key="website.q_Installation_hints">
Free Pascal 安装提示
</TRN>
<TRN locale="zh_CN" key="website.q_Installing_snapshot">
安装一个快照
</TRN>
<TRN locale="zh_CN" key="website.q_Licence_copyright_info">
协议与版权信息
</TRN>
<TRN locale="zh_CN" key="website.q_OOP">
使用 Free Pascal 编译 Delphi 代码
</TRN>
<TRN locale="zh_CN" key="website.q_Real_windows_application">
怎样开发真正的 Windows 应用程序 (带窗口和菜单栏)？
</TRN>
<TRN locale="zh_CN" key="website.q_Runtime_errors">
运行时错误
</TRN>
<TRN locale="zh_CN" key="website.q_Standard_units">
标准 Unit
</TRN>
<TRN locale="zh_CN" key="website.q_Wanna_new_version_now">
我<b>现在</b>就要一个新版本
</TRN>
<TRN locale="zh_CN" key="website.q_What_is_FPC">
什么是 Free Pascal(FPC)？
</TRN>
<TRN locale="zh_CN" key="website.q_What_versions_exist">
有哪些版本，并且我应该使用哪一个版本？
</TRN>
<TRN locale="zh_CN" key="website.q_Why_username_password_for_download">
为什么要获得 Free Pascal 必须提供一个用户名和密码？
</TRN>
<TRN locale="zh_CN" key="website.ready_made_packages">
现在已经有许多制作好的包，它们都包含了一个安装程序以使您在最短的时间内开始使用 Free Pascal。所有的包都包含一个 README 文件，它向您提供安装过程的概述以及最近更新。

</TRN>
<TRN locale="zh_CN" key="website.req_arma">
ARM 架构
</TRN>
<TRN locale="zh_CN" key="website.req_armb">
目前只支持对 ARM 平台的交叉编译。
</TRN>
<TRN locale="zh_CN" key="website.reqppca">
PowerPC 架构：
</TRN>
<TRN locale="zh_CN" key="website.reqppcb">
任何 PowerPC 处理器都可以。至少 16 MB 的内存。Mac OS classic 的版本必须是 System 7.5.3 或更高。Mac OS X 版本需要 Mac OS X 10.1 或更高，且安装了开发者工具。Free Pascal 亦支持其他任何可以运行该操作系统的系统。

</TRN>
<TRN locale="zh_CN" key="website.req_sparca">
Sparc 架构：
</TRN>
<TRN locale="zh_CN" key="website.req_sparcb">
至少 16MB 的内存。可以在所有 Sparc 的 Linux 上运行。

</TRN>
<TRN locale="zh_CN" key="website.Requirements">
系统需求
</TRN>
<TRN locale="zh_CN" key="website.req_x86a">
x86 架构：
</TRN>
<TRN locale="zh_CN" key="website.req_x86b">
x86 版本要求至少有一个 386 处理器，不过推荐 486 以上的处理器。

</TRN>
<TRN locale="zh_CN" key="website.RTL_rel_inf">
RTL 相关问题
</TRN>
<TRN locale="zh_CN" key="website.search">
搜索
</TRN>
<TRN locale="zh_CN" key="website.searchwhat">
搜索文档、论坛和邮件列表。

</TRN>
<TRN locale="zh_CN" key="website.snapshots">
快照
</TRN>
<TRN locale="zh_CN" key="website.Source">
源代码
</TRN>
<TRN locale="zh_CN" key="website.Sources">
源代码
</TRN>
<TRN locale="zh_CN" key="website.Tools">
工具
</TRN>
<TRN locale="zh_CN" key="website.Units">
Unit
</TRN>
<TRN locale="zh_CN" key="website.Wiki">
Wiki
</TRN>
