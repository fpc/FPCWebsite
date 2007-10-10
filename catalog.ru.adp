<TRN locale="ru_RU" key="website.a_Access_denies_while_download">
<p>У главного FTP сайта Free Pascal есть ограничение сверху на количество одновременных соединений. Если произошла эта ошибка, то потому, что был достигнут предел. В качестве решения можно подождать и попробовать позже, а ещё лучше &mdash; использовать один из зеркальных сайтов Free Pascal.
</TRN>
<TRN locale="ru_RU" key="website.a_cfg_problems">
<p>Начиная с версии Free Pascal 1.0.6, конфигурационный файл называется <TT>fpc.cfg</TT> вместо <TT>ppc386.cfg</TT>. Для обратной совместимости наличие <TT>ppc386.cfg</TT> и сейчас проверяется первым и, если он найден, то используется вместо <TT>fpc.cfg</TT>
<p>Версии Free Pascal до 1.0.6 не обрабатывают <TT>fpc.cfg</TT>, так что если Вы хотите использовать более ранние версии компилятора с тем же конфигурационным файлом, что и FPC 1.0.6 (или более поздним), то конфигурационный файл должен быть переименован в <TT>ppc386.cfg</TT>.
</TRN>
<TRN locale="ru_RU" key="website.a_Debugging_DLL">
<p>Отладка разделяемых библиотек (или динамически подключаемых библиотек) созданных компилятором Free Pascal не поддерживается официально.
</TRN>
<TRN locale="ru_RU" key="website.a_Debug_smartlinked">
<p>Отладка собранного "по умному" кода может происходить неправильно. Это вызвано отсутствием информации о типах в таком коде: иначе файлы стали бы огромными. <p>Для отладки не рекомендуется использовать опцию сборки "по умному".
</TRN>
<TRN locale="ru_RU" key="website.Advantages">
Преимущества
</TRN>
<TRN locale="ru_RU" key="website.Advantages_of">
Преимущества программирования на паскале и Free Pascal
</TRN>
<TRN locale="ru_RU" key="website.Advantages_title">
Преимущества Free Pascal
</TRN>
<TRN locale="ru_RU" key="website.adv_assembler_integration">
<STRONG>Прекрасная интеграция с ассемблером</STRONG> Думаете ли Вы, что паскаль предназначен для лохов, которым ещё учиться и учиться программировать? НЕВЕРНО! Он отлично подходит для высокотехнологичного программирования, а для самых продвинутых мы интегрировали ассемблер (в разных вариантах). Вы легко можете перемежать текст на ассемблере и паскале. Предпочитаете стиль ассемблера от Intel? Нет проблем, а если нужно, Free Pascal конвертирует его в стиль AT&T. Вы хотите превратить свою программу в исходный код для Nasm? Нет проблем, и весь текст на ассемблере в стиле AT&T из Ваших исходных файлов будет автоматически конвертирован.
</TRN>
<TRN locale="ru_RU" key="website.adv_compatible">
<STRONG>Совместимый</STRONG> У Вас уже есть текст программы? Free Pascal более совместим с ним, чем какой-либо другой компилятор паскаля. Мы почти полностью совместимы с Turbo Pascal и весьма совместимы с исходными текстами для Delphi. Если Вы программируете на другом языке, например, на Си или ассемблере, просто используйте для него свой любимый компилятор, а результат запускайте из Free Pascal.
</TRN>
<TRN locale="ru_RU" key="website.adv_distribution_indep">
<STRONG>Независимость от дистрибутива (для Linux)</STRONG> В результате неё, программное обеспечение, скомпилированное версией Free Pascal под Linux, запускается на любом дистрибутиве Linux, делая гораздо более простой написание программ, которые поддерживают много разных дистрибутивов Linux.
</TRN>
<TRN locale="ru_RU" key="website.adv_Fast">
<STRONG>Компиляторы паскаля работают очень быстро, и Free Pascal не исключение</STRONG> Да, у Вас не успеет вырасти корневая система, пока Вы ожидаете конца компиляции Ваших программ. Просто нажмите кнопку, и дело сделано, даже для больших программ.
</TRN>
<TRN locale="ru_RU" key="website.adv_Fast_code">
<STRONG>Высокая скорость, не требует много памяти</STRONG>
Так как Free Pascal &mdash; язык, компилируемый в быстрый машинный код современным компилятором, язык Паскаль становится одним из быстрейших доступных языков.
Более того: программы на Free Pascal склонны использовать меньше памяти.
Для сравнения с другими языками мы предлагаем посмотреть <A href='http://shootout.alioth.debian.org/gp4/benchmark.php?test=all&lang=all'>Shootout benchmark (Разговор начистоту о производительности)</A> и советуем Вам изменять веса тестов согласно Вашим вкусам.
</TRN>
<TRN locale="ru_RU" key="website.adv_IDE">
<STRONG>Интегрированная среда разработки</STRONG> К Free Pascal прилагается ИСР, которая работает на нескольких платформах, в которой Вы можете писать, компилировать и отлаживать Ваши программы. Вы сэкономите огромное количество времени, используя ИСР, лучшего друга программиста
</TRN>
<TRN locale="ru_RU" key="website.adv_multiplatform">
<STRONG>Доступно на многих платформах и нескольких архитектурах</STRONG> Free Pascal доступен для большего количества платформ, чем большинство других компиляторов паскаля, и позволяет легко компилировать программы для одной платформы на другой (перекрёстное компилирование), просто измените цель в ИСР и компилируйте! И продолжается работа над поддержкой ещё большего количества платформ и процессоров.
</TRN>
<TRN locale="ru_RU" key="website.adv_namespace">
<STRONG>В каждом модуле своё пространство имён</STRONG> В паскале Вам не придётся волноваться о загрязнении пространства имён так, как в Си, где каждый идентификатор должен быть уникальным для всей программы. Нет, в паскале у каждого модуля своё пространство имён, и ситуация гораздо менее напряжённая.
</TRN>
<TRN locale="ru_RU" key="website.adv_No_Makefiles">
<STRONG>Нет Makefile-ов</STRONG> В отличие от большинства языков программирования, паскаль не нуждается в Makefile-ах. Вы сэкономите огромное количество времени: компилятор сам разберётся, какие файлы требуется перекомпилировать.
</TRN>
<TRN locale="ru_RU" key="website.adv_OOP">
<STRONG>Объектно ориентированное программирование</STRONG> А если Вы программируете серьёзно, конечно Вы очень заинтересованы в ООП. Пользуйтесь подходами Turbo Pascal и Object Pascal как Вам удобно. Также FCL и Free Vision обеспечат Вас некоторым набором мощных объектных библиотек, которые Вам могут потребоваться. Для работы с базами данных мы поддерживаем PostgreSQL, MySQL, Interbase и ODBC.
</TRN>
<TRN locale="ru_RU" key="website.adv_Smartlink">
<STRONG>"Умная" компоновка</STRONG> Free Pascal обладает "умным" компоновщиком, который не включит в исполняемый файл ни лишние переменные, ни лишний код. Это делает небольшие программы действительно маленькими, причём они будут статичными, избегая ада, связанного с динамическими библиотеками!
</TRN>
<TRN locale="ru_RU" key="website.adv_very_clean_lang">
<STRONG>Очень ясный язык</STRONG> Паскаль является очень приятным языком, Ваши программы будут более читаемыми и легко поддерживаемыми, чем, например, на Си, не говоря уже о Си++. И Вам не придётся для этого жертвовать мощностью программ: паскаль достаточно силен.
</TRN>
<TRN locale="ru_RU" key="website.a_Getting_the_compiler">
<p>Позднейший официальный стабильный выпуск Free Pascal доступен для скачивания с <a href="download@x@">официальных зеркальных сайтов</a>
</TRN>
<TRN locale="ru_RU" key="website.a_Homework">
<p>Нет. Пожалуйста, не присылайте нам электронных писем о домашних заданиях: мы не учителя. Команда разработчиков Free Pascal пытается предоставлять хорошую поддержку компилятора Free Pascal, поэтому мы стараемся всё время отвечать на электронные письма. Но когда мы получаем такие письма, наша работа становится всё труднее и труднее.
</TRN>
<TRN locale="ru_RU" key="website.a_Installation_hints">
<ul> <li>Не устанавливайте компилятор в каталог, название которого содержит пробелы, так как некоторые инструментальные средства компилятора этого не любят.</ul>
</TRN>
<TRN locale="ru_RU" key="website.already_included_installer">
уже включена в указанный выше установочный пакет
</TRN>
<TRN locale="ru_RU" key="website.Amiga_tel_inf">
Относящееся к Amiga
</TRN>
<TRN locale="ru_RU" key="website.arm-linux_available_in">
Пакет FPC для arm-linux доступен в единственном формате:
</TRN>
<TRN locale="ru_RU" key="website.Authors">
Авторы
</TRN>
<TRN locale="ru_RU" key="website.available_limited_platforms">
Из-за нехватки людей, готовящих и проверяющих выпуски, версия 2.0.4 доступна только для некоторых платформ и не во всех вариантах пакетов. Если Вы хотите это исправить &mdash; собрать или проверить выпуски этой и следующих версий, свяжитесь с нами через рассылки по электронной почте.
</TRN>
<TRN locale="ru_RU" key="website.a_What_is_FPC">
<p>Изначально называвшийся "FPK-Pascal", компилятор Free Pascal &mdash; это 32-х и 64-хбитный компилятор Паскаля, совместимый с Turbo Pascal и Delphi, для DOS, Linux, Win32, OS/2, FreeBSD, AmigaOS, MacOSX, MacOS classic и ещё нескольких платформ (количество поддерживаемых платформ всё время растёт, хотя не все они поддерживаются на том же уровне, что и основные).
<p>Компилятор Free Pascal доступен на нескольких архитектурах: x86, Sparc(v8 и v9), ARM, x86_64 (AMD64/Opteron) и PowerPC. Более старые версии (из ряда 1.0) также поддерживают m68k.
<p>Компилятор написан на Паскале и способен откомпилировать собственные исходные тексты. Исходные тексты находятся под действием GPL и прилагаются.
<p>Краткая история: <ul>
<li>06/1993: проект начался
<li>10/1993: первые маленькие программы работают
<li>03/1995: компилятор компилирует собственные исходные тексты
<li>03/1996: выход в интернет
<li>07/2000: версия 1.0
<li>12/2000: версия 1.0.4
<li>04/2002: версия 1.0.6
<li>07/2003: версия 1.0.10
<li>05/2005: версия 2.0.0
<li>12/2005: версия 2.0.2
<li>08/2006: версия 2.0.4 </ul>
</TRN>
<TRN locale="ru_RU" key="website.a_What_versions_exist">
<p>Позднейшей официальной версией является 2.0.4, выпущенная в качестве исправления ошибок в предыдущих версиях вида 2.0.x. Новые разработки внедряются в версиях вида 2.1.x, которые постепенно будут выпущены в виде 2.2.0 или 3.0.0 (в зависимости от объёма изменений, скопившихся к моменту выпуска).
<h4>Старые версии</h4>
<p>Система нумерации версий FPC несколько раз изменялась в течении прошедших лет. Версии до 0.99.5 считаются устаревшими. После выпуска 0.99.5 была принята новая система нумерации версий, эта система слегка изменилась с выпуском версии 1.0. 
<p><b>Нумерация версий 0.99.5 - 1.0</b><p>
<p>Компиляторы, в номерах версий которых последнее число <b>чётное</b> являются <b>выпущенными</b> (например, 0.99.8, 0.99.10, 0.99.12, 0.99.14 1.0.0).
<br>Компиляторы и пакеты с <b>нечётным</b> последним числом в номере версии находятся <b>в стадии разработки</b> (например, 0.99.9, 0.99.11, 0.99.13, 0.99.15). 
<p>0.99.5 является исключением из этого правила, так как <b>0.99.5 ЯВЛЯЕТСЯ выпуском</b> (выпуском, сделанным до введения этой системы нечётный/чётный).
<p>Буквы после последнего числа в номере версии (0.99.12b, 0.99.5d) означают, что были ранее выпущены версии с какими-то ошибками (соответственно, 0.99.12 и 0.99.5), которые теперь исправлены.
<p><b>Нумерация версий начиная с 1.0</b>
<p>Одновременно с выпуском версии 1.0 система нумерации версий слегка изменилась. Была введена система нумерации схожая с системой нумерации версий ядра Linux. Главным отличием является то, что разница между близкими версиями, одна из которых выпущена, а другая находится в разработке, определяется по чётности второго числа в номере (как стало: 1.0.x и 1.1.x) вместо третьего числа (как было: 0.99.14 и 0.99.15), и третье число теперь показывает уровень исправлений, заменяя приписывание буков в старой системе.
<p><ul><li>Выпуски, в которых только исправлялись ошибки версии 1.0, были пронумерованы как 1.0.x.
<li>Новые разработки (так называемые "снимки") начались в версиях вида 1.1.x.
<li>Постепенно версии с номерами 1.1.x по мере становления надёжными превратились в 2.x. Исправления в выпуске 2.0 нумеруются как 2.0.x.
<li>Новые разработки после выпуска 2.0 имеют номера 2.1.x и т.д.</ul>
<p><p>В обычных случаях Вам следует пользоваться выпусками. Выпуски считаются надёжными, а их поддержка является более лёгкой (ошибки, странности и непредумышленные "особенности" становятся хорошо известными через некоторое время, а обходные пути к ним находятся).
<p>Снимки разработки (которые создаются ежедневно) отражают текущее состояние компилятора. Версии в разработке вероятно обладают новыми возможностями и более глубокими исправлениями ошибок со времён последнего выпуска, но могут иметь временные недостатки в отношении надёжности (которые обычно могут оказаться исправленными на следующий день).
<p>Снимки разработок могут быть весьма полезными для некоторых категорий пользователей. Спросите в электронных почтовых рассылках, стоит ли Вам возиться с ними, описав свой случай.
<p>Мы советуем всем пользователям переходить на самые новые выпущенные версии для их платформы (предпочтительно в серии 2.0.x).
<p> Графическим представлением (с пометками на английском языке) истории разработки проекта FPC в номерах версий, включая ближайшее будущее, может быть эта картинка: <img src="pic/timeline.png"></a>
</TRN>
<TRN locale="ru_RU" key="website.Back_to_general_download_page">
Назад к общей странице загрузки
</TRN>
<TRN locale="ru_RU" key="website.Back_to_mirrorlist">
Назад к списку зеркальных сайтов
</TRN>
<TRN locale="ru_RU" key="website.Base_files">
Base files (program and units):
</TRN>
<TRN locale="ru_RU" key="website.BeOS_related_information">
Относящееся к BeOS
</TRN>
<TRN locale="ru_RU" key="website.Binaries">
Собранные пакеты
</TRN>
<TRN locale="ru_RU" key="website.Binary_packages">
Собранные пакеты
</TRN>
<TRN locale="ru_RU" key="website.Bugtracker">
Поиск ошибок
</TRN>
<TRN locale="ru_RU" key="website.can_download_for_platform">
Вы можете скачать выпуск версии 2.2.x для следующих процессоров и операционных систем:
  
</TRN>
<TRN locale="ru_RU" key="website.Coding">
Программистам
</TRN>
<TRN locale="ru_RU" key="website.Community">
Сообщество
</TRN>
<TRN locale="ru_RU" key="website.Contribute">
Внести свой вклад
</TRN>
<TRN locale="ru_RU" key="website.Contributed_Units">
Сторонние модули
</TRN>
<TRN locale="ru_RU" key="website.Credits">
Заслуги
</TRN>
<TRN locale="ru_RU" key="website.cross_compiler_i386-linux_arm-linux">
Это пакет для перекрёстной компиляции под i386-linux для arm-linux. Прежде, чем Вы сможете его использовать, Вы должны установить <a href="../i386/linux-@mirrorsuffix@@x@">FPC для i386-linux</a>.
</TRN>
<TRN locale="ru_RU" key="website.Current_Version">
Текущая версия
</TRN>
<TRN locale="ru_RU" key="website.Current_Version_text">
Версия <em>2.2.0</em> является новейшей стабильной версией Free Pascal.
Чтобы скачать ее, перейдите по ссылке <a href="download">download</a> и выберите ближайшее к себе зеркало.
Development-версии нумеруются как <EM>2.3.x</EM>.
Последние исходные коды вы можете загрузить на странице <a href="develop">development</a>.

</TRN>
<TRN locale="ru_RU" key="website.DEB_compatibility">
Наши пакеты типа DEB совместимы со всеми дистрибутивами, основанными на DEB, включая Debian, Linspire, Ubuntu.
</TRN>
<TRN locale="ru_RU" key="website.DEB_packages">
Пакеты для Debian
</TRN>
<TRN locale="ru_RU" key="website.DEB_packages_1">
Пакеты для Debian (.deb)
</TRN>
<TRN locale="ru_RU" key="website.Development">
Разработка
</TRN>
<TRN locale="ru_RU" key="website.Documentation">
Документация
</TRN>
<TRN locale="ru_RU" key="website.Documentation_av_several_formats">
Документация доступна в нескольких форматах (если Вы хотите просматривать документацию из ИСР в текстовом режиме, то Вам нужен HTML формат):
</TRN>
<TRN locale="ru_RU" key="website.DOS_rel_inf">
Относящееся к DOS
</TRN>
<TRN locale="ru_RU" key="website.down_204_only_note">
только 2.0.4
</TRN>
<TRN locale="ru_RU" key="website.down_i386_freebsd_note">
для FreeBSD 4.x и, возможно, 5.x
</TRN>
<TRN locale="ru_RU" key="website.down_i386_netware_note">
только 2.0.0
</TRN>
<TRN locale="ru_RU" key="website.Download">
Скачать
</TRN>
<TRN locale="ru_RU" key="website.Download_as_installer">
Скачать установщик
</TRN>
<TRN locale="ru_RU" key="website.download_documentation">
Документацию можно скачать в нескольких форматах с одного из наших <a href="down/docs/docs@x@">сайтов для скачивания</a>.
  
</TRN>
<TRN locale="ru_RU" key="website.download_in_1_file">
Скачать в одном большом файле
</TRN>
<TRN locale="ru_RU" key="website.download_old_releases">
Ссылки на некоторые старые (более не поддерживаемые) выпуски FPC для платформ, к которым на данный момент не было выпущено новых версий достаточно хорошего качества, можно найти <a href="down/old/down@x@">здесь</a>. Не присылайте сообщений об ошибках в этих выпусках: мы их уже не будем исправлять. Основная причина нынешнего отсутствия поддержки этих платформ &mdash; это отсутствие людей, готовых этим заниматься. Если Вам интересно довести выпуски для этих платформ до современного уровня, свяжитесь с нами (например, через список рассылки fpc-devel).

</TRN>
<TRN locale="ru_RU" key="website.download_snapshots">
Кроме официальных выпусков мы предлагаем так называемые "моментальные снимки" компилятора, RTL (основных библиотек), IDE (интегрированной среды разработки) и некоторых других пакетов на <a href="develop">странице разработки</a>. Это скомпилированные версии текущих исходных кодов со всеми исправлениями и усовершенствованиями, внесёнными после позднейшего официального выпуска, так что если у Вас с ним проблемы, Вы можете попытаться использовать эти "снимки". Конечно, в них могут быть новые ошибки.
</TRN>
<TRN locale="ru_RU" key="website.download_source">
Исходные тексты можно скачать в отдельном файле в формате <b>zip</b> или <b>tar.gz</b> с одного из следующих <a href="down/source/sources@x@">сайтов для скачивания</a>.
  
</TRN>
<TRN locale="ru_RU" key="website.down_sparc_linux_note">
только 2.0.0
</TRN>
<TRN locale="ru_RU" key="website.everything_in_1">
Всё в одном большом пакете
</TRN>
<TRN locale="ru_RU" key="website.FAQ">
ЧаВо
</TRN>
<TRN locale="ru_RU" key="website.faq_intro">
<p>В этом документе представлена позднейшая информация о компиляторе. Более того, он отвечает на часто задаваемые вопросы и предлагает решения популярных проблем с Free Pascal-ем. Информация, представленная здесь, всегда имеет более высокий приоритет, чем написанная в документации к Free Pascal-ю.</p>
</TRN>
<TRN locale="ru_RU" key="website.Features">
Особые возможности
</TRN>
<TRN locale="ru_RU" key="website.Features_text">
Синтаксис языка отлично совместим с TP 7.0, также как и с большинством версий Delphi (классы, rtti, исключения, ansistrings, widestrings, интерфейсы). Режим совместимости с Mac Pascal может быть полезен пользователям Apple. Более того, Free Pascal поддерживает перегрузку функций и операторов, глобальные свойства и некоторые другие аналогичные возможности.
</TRN>
<TRN locale="ru_RU" key="website.Feeling_Lucky">
Повезёт?
</TRN>
<TRN locale="ru_RU" key="website.for_comprehensive">
<p>Чтобы получить более подробную информацию о языке Паскаль и использованию стандартных библиотек, обратитесь к документации по Free Pascal-ю. Темы, раскрытые в документации:</p>
</TRN>
<TRN locale="ru_RU" key="website.FPC_on_the_Mac">
FPC на Mac
</TRN>
<TRN locale="ru_RU" key="website.Future_Plans">
Планы на будущее
</TRN>
<TRN locale="ru_RU" key="website.General">
Основное
</TRN>
<TRN locale="ru_RU" key="website.General_information">
Общая информация
</TRN>
<TRN locale="ru_RU" key="website.General_Information">
Общая информация
</TRN>
<TRN locale="ru_RU" key="website.Home">
Главная
</TRN>
<TRN locale="ru_RU" key="website.HTMLs_available">
Следующие HTML-документы доступны онлайн (на английском языке)

</TRN>
<TRN locale="ru_RU" key="website.Introduction">
Введение
</TRN>
<TRN locale="ru_RU" key="website.It_is_available_in">
Доступен в различных форматах:
</TRN>
<TRN locale="ru_RU" key="website.javascript_required">
<em>Примечание:</em> для корректного просмотра этих документов, в вашем браузере должна быть включена поддержка JavaScript и CSS.

</TRN>
<TRN locale="ru_RU" key="website.Known_Problems">
Известные сложности
</TRN>
<TRN locale="ru_RU" key="website.latest_news">
Последние новости
</TRN>
<TRN locale="ru_RU" key="website.latest_release">
Позднейший выпуск &mdash; <b>2.2.0</b>
</TRN>
<TRN locale="ru_RU" key="website.latest_version_is">
Номер версии позднейшего выпуска &mdash; <b>2.2.0</b>
</TRN>
<TRN locale="ru_RU" key="website.License">
Лицензия
</TRN>
<TRN locale="ru_RU" key="website.License_text">
The packages and runtime library come under a modified Library GNU Public License to allow the use of static libraries when creating applications. The compiler source itself comes under the GNU General Public License. The sources for both the compiler and runtime library are available; the complete compiler is written in Pascal.
</TRN>
<TRN locale="ru_RU" key="website.Links_mirrors">
Ссылки/Зеркальные сайты
</TRN>
<TRN locale="ru_RU" key="website.Mailinglists">
Рассылки
</TRN>
<TRN locale="ru_RU" key="website.More_information">
Дополнительная информация
</TRN>
<TRN locale="ru_RU" key="website.Multilingual_website">
Многоязыковой веб-сайт
</TRN>
<TRN locale="ru_RU" key="website.News">
Новости
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20060828">
<em>28 августа 2006</em> Вышла долгожданная версия 2.0.4 (перейдите <a href="download.html">сюда</a>, чтобы перейти к ближайшему зеркалу), в ней представлены многочисленные исправления и некоторые усовершенствования (помните, что это в первую очередь выпуск исправления ошибок в линии 2.0.x, а новые разработки происходят в ветви 2.1.x) по сравнению с ранее выпущенной версией 2.0.2 (или даже 2.0.0, поскольку теперь доступны сборки для большего количества платформ, чем для версии 2.0.2). Список изменений можно найти <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_0_4/install/doc/whatsnew.txt">здесь</a>.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20060920">
<em>20 сентября 2006</em> В дополнение в изначально опубликованным сборкам для выпуска версии 2.0.4, пакеты powerpc-macos и x86_64-linux .deb стали доступными (спасибо Олле Раабу [Olle Raab] и Штефану Кисдарочи [Stefan Kisdaroczi]). Как обычно, перейдите на <a href="download.html">страницу закачек</a>, чтобы выбрать ближайший зеркальный сайт.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20060925">
<em>25 сентября 2006</em> Франческо Ломбарди [Francesco Lombardi] пишет <a href='http://itaprogaming.free.fr/tutorial.html'> обширное руководство по разработке игр для Game Boy Advance</a> на Free Pascal.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20060927">
<em>27 сентября 2006</em> Lazarus и FPC будут на Systems 2006 в Германии в городе Мюнхен в октябре в павильоне A3, место 542. Мы постараемся пробыть там все пять дней. Вы можете найти больше информации о Systems 2006 <a href="http://www.systems-world.de/id/7672/">здесь</a>.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20061125">
<em>25-26 ноября 2006</em> Lazarus и FPC будут на HCC в Нидерландах в городе Утрехт в секции паскаля на HCC.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20061204">
<em>14 декабря, 2006</em>
Ido Kanner будет читать лекцию о FPC в <a href="http://haifux.org/future.html">HAIFUX</a> &mdash; клубе любителей Linux при Technion University в Хайфе, в понедельник, 15 января, 2007. Эта лекция будет повторно прочитана в <a href="http://www.cs.tau.ac.il/lin-club/">Telux</a> &mdash; (университетский) клуб любителей Linux в Тель-Авиве.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20061224">
<em>24 декабря, 2006</em>
<A href='http://www.computerbooks.hu/FreePascal'>Книга о Free Pascal</a> издана в Венгрии. На 270-и страницах преподаётся Паскаль с самого начала, а также раскрываются продвинутые возможности языка.
  
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070101">
<em>1 января, 2007</em> Команда FPC желает всем пользователям счастливого празднования Нового года и плодотворного 2007-го!
  
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070127">
<em>27 января, 2007</em> <a href='http://mypage.bluewin.ch/msegui'>MSEGUI и MSEIDE</a> &mdash; выпущена версия 1.0. MSEIDE &mdash; это средство быстрой разработки приложений (RAD) для создания графических программ под Windows и Linux на основе графического интерфейса MSEGUI. Команда Free Pascal желает разработчикам MSEGUI/MSEIDE всего наилучшего и передаёт поздравления с достижением этой важной вехи.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070201">
<em>1 февраля, 2007</em> Начинается ежегодный конкурс по разработке игр на Паскале (The Pascal Game Development). Тема этого года &mdash; "Мультиплексирование": напишите игру, сочетающую много жанров. Вы же можете написать игру на Free Pascal? Тогда <a href='http://www.pascalgamedevelopment.com/competitions.php?p=details&c=3'>включайтесь!</a>
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070328">
<em>28 Марта, 2007</em> <a href='http://www.morfik.com'>MORFIK</A> выпустил версию 1.0.0.7 своего WebOS AppsBuilder. Это первая версия AppsBuilder, которая использует FPC.
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070520">
<em>20 Мая, 2007</em> После долгих лет разработки следующей версии 2.2.0, <a href="download@x@#beta">выпущена</a> версия <em>2.1.4</em>, известная как <em>2.2.0-beta</em>.
Бета-версия будет доступна около двух месяцев, после чего будет выпущена 2.2.0. Просим всех наших пользователей протестировать этот выпуск, сообщая об ошибках на <a href="mantis/set_project.php?project_id=6">поиск ошибок</a>. Если Вы хотите знать, не исправлена ли уже найденная Вами ошибка, можете поискать информацию в <a href="mantis/set_project.php?project_id=6">mantis</a> или проверить её наличие в ежедневном выпуске, основанном на ветке fixes_2_2. Таким образом, мы просим помочь нам сделать версию 2.2.0 самой стабильной версией FreePascal на сегодняшний день. Список изменений можно найти <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/whatsnew.txt">здесь</a>. Также доступны <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_1_4/install/doc/readme.txt">примечания к релизу</a>. Пожалуйста, обратите внимание на наличие некоторых сознательных несовместимостей с предыдущими версиями, обзор их можно увидеть <a href="http://wiki.freepascal.org/User_Changes_2.2.0">здесь</a>.

</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070910">
Команда разработчиков компилятора Free Pascal рада объявить о выходе FPC версии 2.2.0!
<p>Обзор большинства изменений доступен <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_2_0/install/doc/whatsnew.txt">здесь</a>, но вот основные из них:
<ul>
<li> Архитектуры: поддержка PowerPC/64 и ARM
<li> Платформы: поддержка Windows x64, Windows CE, Mac OS X/Intel, Game Boy Advance и Game Boy DS
<li> Линкер: быстрый и компактный встроенный линкер для платформ Windows.
<li> Отладка: поддержка Dwarf и возможность автоматически заполнять переменные произвольными значениями чтобы упростить поиск использования неинициализированных переменных.
<li> Язык: поддержка interface delegation, bitpacked-записей и массивов, COM/OLE variants, dispinterfaces.
<li> Инфраструктура: улучшена поддержка типа variant, поддержка нескольких файлов ресурсов, widestrings теперь COM/OLE-совместимы в Windows, улучшена поддержка баз данных.
</ul>
<p>Примечания к релизу можно найти <a href="http://svn.freepascal.org/svn/fpcbuild/tags/release_2_2_0/install/doc/whatsnew.txt">здесь</a>.
<p>
Загрузки доступны на <a href="download">http://www.freepascal.org/download.var</a>
  
</TRN>
<TRN locale="ru_RU" key="website.news_headline_20070910b">
<a href="http://www.osnews.com/story.php/18592/Cross-Platform-Development-with-Free-Pascal-2.2.0">OS-News</a> опубликовали статью о новом компиляторе FPC и кроссплатформной разработке. Голландская версия доступна в нашей <a href="http://wiki.freepascal.org/Article_OSNews_fpc_2.2.0">Wiki</a>.
  
</TRN>
<TRN locale="ru_RU" key="website.Official_releases">
Официальные выпуски
</TRN>
<TRN locale="ru_RU" key="website.Old_releases">
Старые выпуски
</TRN>
<TRN locale="ru_RU" key="website.OS2_rel_inf">
Относящееся к OS/2
</TRN>
<TRN locale="ru_RU" key="website.overview">
Обзор
</TRN>
<TRN locale="ru_RU" key="website.overview_text">
Free Pascal (также известный как FPK Pascal) &mdash; это 32-х и 64-хбитный профессиональный компилятор языка паскаль. Он доступен для различных процессоров: Intel x86, Amd64/x86_64, PowerPC, Sparc. Прерванная версия 1.0 также поддерживала Motorola 680x0. Поддерживаются следующие операционные системы: Linux, FreeBSD, <a href="fpcmac">Mac OS X/Darwin</a>, <a href="fpcmac">Mac OS classic</a>, DOS, Win32, OS/2, Netware (libc и classic) и MorphOS.
</TRN>
<TRN locale="ru_RU" key="website.PalmOS_rel_inf">
Относящееся к PalmOS
</TRN>
<TRN locale="ru_RU" key="website.Pascal_lang_rel_inf">
Информация о языке Паскаль
</TRN>
<TRN locale="ru_RU" key="website.PDFs_available">
Следующие PDF-документы доступны онлайн (на английском языке):
</TRN>
<TRN locale="ru_RU" key="website.plain_text">
просто текст
</TRN>
<TRN locale="ru_RU" key="website.Porting_from_TP7">
Миграция с TP7
</TRN>
<TRN locale="ru_RU" key="website.q_What_is_FPC">
Что такое Free Pascal (FPC)?
</TRN>
<TRN locale="ru_RU" key="website.q_What_versions_exist">
Какие существуют версии, и которой из них мне пользоваться?
</TRN>
<TRN locale="ru_RU" key="website.ready_made_packages">
Здесь находятся подготовленные пакеты с программой установки, позволяющие Вам установить компилятор и начать работать практически сразу. Во всех пакетах есть файл README (скорее всего на английском языке), который Вам следует прочитать, чтобы получить инструкции по установке и узнать последние новости.
</TRN>
<TRN locale="ru_RU" key="website.req_arma">
Архитектура ARM
</TRN>
<TRN locale="ru_RU" key="website.req_armb">
На данный момент для ARM поддерживается только перекрёстная компиляция.
</TRN>
<TRN locale="ru_RU" key="website.reqppca">
Архитектура PowerPC
</TRN>
<TRN locale="ru_RU" key="website.reqppcb">
Подойдёт любой процессор PowerPC. Требуется 16 Мб оперативной памяти. Версия для Mac OS classic должна работать на System 7.5.3 более поздних. Версия для Mac OS X требует Mac OS X 10.1 или более поздние, с установленными средствами разработки. Под другими операционными системами Free Pascal запускается на любой машине, которая может  запустить саму операционную систему.
</TRN>
<TRN locale="ru_RU" key="website.req_sparca">
Архитектура Sparc
</TRN>
<TRN locale="ru_RU" key="website.req_sparcb">
Требуется 16 Мб оперативной памяти. Запускается на любой установке Sparc Linux.
</TRN>
<TRN locale="ru_RU" key="website.Requirements">
Требования
</TRN>
<TRN locale="ru_RU" key="website.req_x86a">
Архитектура x86:
</TRN>
<TRN locale="ru_RU" key="website.req_x86b">
Версия для 80x86 требует по крайней мере 386-й процессор, но рекомендуется по крайней мере 486-й.
</TRN>
<TRN locale="ru_RU" key="website.RPM_compatibility">
Наши пакеты в формате RPM совместимы со всеми дистрибутивами на основе RPM, включая Red Hat, Fedora, SuSE, Mandriva.
</TRN>
<TRN locale="ru_RU" key="website.RPM_packages">
RPM (Redhat Package Manager &mdash; управление пакетами Redhat) пакеты
</TRN>
<TRN locale="ru_RU" key="website.RPM_packages_1">
Пакеты RedHat (.rpm)
</TRN>
<TRN locale="ru_RU" key="website.RTL_rel_inf">
Информация о стандартных библиотеках
</TRN>
<TRN locale="ru_RU" key="website.search">
Поиск
</TRN>
<TRN locale="ru_RU" key="website.searchwhat">
Искать в документации, форумах и рассылках.
</TRN>
<TRN locale="ru_RU" key="website.snapshots">
Моментальные снимки
</TRN>
<TRN locale="ru_RU" key="website.Source">
Исходные тексты
</TRN>
<TRN locale="ru_RU" key="website.Source_packages">
Пакеты исходных текстов
</TRN>
<TRN locale="ru_RU" key="website.Sources">
Исходные тексты
</TRN>
<TRN locale="ru_RU" key="website.to_be_used_from_IDE">
для использования из ИСР, кроме прочего
</TRN>
<TRN locale="ru_RU" key="website.Tools">
Инструменты
</TRN>
<TRN locale="ru_RU" key="website.Units">
Модули
</TRN>
<TRN locale="ru_RU" key="website.UNIX_rel_inf">
Относящееся к UNIX
</TRN>
<TRN locale="ru_RU" key="website.Wiki">
Вики
</TRN>
<TRN locale="ru_RU" key="website.Windows_rel_inf">
Относящееся к Windows
</TRN>
<TRN locale="ru_RU" key="website.You_can_download_installer">
Вы можете скачать установщик
</TRN>
