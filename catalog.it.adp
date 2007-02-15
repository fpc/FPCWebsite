<TRN locale="it_IT" key="website.a_Access_denies_while_download">
            <p>Il server principale di Free Pascal è in grado di gestire un numero limitato di connessioni. Se si verifica questo errore, significa che il limite è stato raggiunto. Per superare questo problema è possibile attendere e riprovare più tardi, oppure provare ad accedere ad uno dei mirror disponibili.
          
</TRN>
<TRN locale="it_IT" key="website.a_Big_binaries">
            Per questo problema vi sono diverse ragioni e rimedi: 

            <OL>
                <li>
                    <p>Le applicazioni possono essere compilate con smartlink. Per attivare la generazione di unit con smartlink, usare l'opzione -Cx sulla riga di comando per compilare le unit. Per attivare il link di unit compilate con smartlink, utilizzare l'opzione -XX (-XS in 0.99.12 e precedenti) sulla riga di comando per compilare il programma. 
                <li>Normalmente, tutte le informazioni sui simboli vengono incorporate nel file eseguibile (per agevolare il debugging). Queste informazioni possono essere rimosse per mezzo dell'opzione -Xs sulla riga di comando per compilare il programma (non ha alcun effetto nella compilazione delle unit).
                <li>Si può usare UPX per comprimere i file eseguibili .EXE per Dos (GO32v2) e Windows. Vedi <A
                        href="http://upx.sourceforge.net/">qui</a> for
                    per ulteriori informazioni.
                <li>Si può usare LXLITE per comprimere binari EMX, ma non sarà più possibile eseguirli su Dos (con un extender). Questo problema non è rilevante per binari nativi OS/2 compilati per OS2 con versioni 1.9.x e successive, dato che ugualmente non possono essere eseguite su Dos. Inoltre, potrebbe non essere possibile usare binari compressi su versioni OS/2 meno recenti (es. 2.x) in funzione del tipo di compressione prescelto. LXLITE si può reperire su 
                    <a href="http://hobbes.nmsu.edu/">Hobbes</a>, con una ricerca su LXLITE.
                <li>Attivare le ottimizzazioni, sia per i package forniti in dotazione (RTL, FV, FCL) che per il programma, questo riduce le dimensioni del codice.  
                <li>Considerare che su Windows NT,2000,XP gli eseguibili compressi richiedono più tempo per avviare l'esecuzione. Prima si adottare questo rimedio, eseguire alcuni test sotto varie condizioni (OS, frequenza CPU, memoria). 			   
           </OL>

            In genere Free Pascal produce file binari più ridotti rispetto al altri moderni compilatori, tuttavia, il codice non viene nascosto in grosse librerie dinamiche. Free Pascal produce binari di maggiori dimensioni rispetto a compilatori meno recenti. Librerie di grosse dimensioni danno luogo a eseguibili più grandi. 
          
</TRN>
<TRN locale="it_IT" key="website.a_Cannot_compile_with_bin_unit">
            <p>
            Talvolta, anche se si dispone di una versione binaria di un modulo (file unit e file oggetto) il compilatore dà errori di compilazione. Questo può essere causato da un'incompatibilità nel formato del file PPU (che dovrebbe cambiare solo tra versioni principali del compilatore), oppure  da modifiche in una delle unit della RTL che è stata modificata nella nuova versione. 
            

            <p>
            Per avere maggiori informazioni,compilare il codice con l'opzione -vm (visualizzazione di tutte le informazioni) verrà così visualizzata la fase di caricamento dell'unit. Si dovrebbe notare che l'unit in questione richiede una ricompilazione dovuta ad una modifica delle unit che utilizza. 
            

            <p>In questo modo, se si intende distribuire un modulo senza i file sorgenti, i file binari dovrebbero essere compilati e resi disponibili per tutte le versioni del compilatore da supportare. Questo per evitare errori di compilazione con le nuove versioni. 

            <p>In altre parole, il formato dei file PPU non cambia in modo significativo tra versioni minori del compilatore (ad esempio 1.0.4 e 1.0.6) e dovrebbe essere compatibile a livello binario, tuttavia, dato che l'interfaccia delle unit della RTL subisce senz'altro delle variazioni tra versioni minori, la ricompilazione sarà in ogni caso necessaria. 
          
</TRN>
<TRN locale="it_IT" key="website.a_cfg_problems">
            <p> A partire dalla versione 1.0.6 il nome del file di configurazione non è più <TT>ppc386.cfg</TT>, ma <TT>fpc.cfg</TT>.
            Per mantenere la compatiblitità con le vecchie precedenti, <TT>ppc386.cfg</TT> viene ancora ricercato per primo e se esiste, viene utilizzato al posto di <TT>fpc.cfg</TT>.

            <p> Le versioni precedenti alla 1.0.6 non riconoscono il file di configurazione <TT>fpc.cfg</TT>.
            Se si desidera usare lo stesso file di configurazione con versioni precedenti è necessario fare attenzione a modificare il nome del file di configurazione da <TT>fpc.cfg</TT> a <TT>ppc386.cfg</TT>.
          
</TRN>
<TRN locale="it_IT" key="website.a_Crash_analysis">
            <OL>
                <li>Il metodo più semplice consiste nel ricompilare il programma con l'opzione di debug -gl. In questo modo l'unit LineInfo viene automaticamente compilata nel programma e il messaggio che viene generato se il programma si interrompe contiene riferimenti al numero di riga, oltre che all'indirizzo in cui si è verificato l'errore. Per vedere il nome delle funzioni della libreria runtime (RTL) è necessario ricompilare il programma con l'opzione di compilazione -gl.                <li>Per un controllo più esteso, compilare il rpogramma comprendendo le informazioni di debug (opzione -g).
                <li>Caricare il programma dal debugger <PRE>gdb(pas)(w) --directory=&lt;src dirs&gt; myprog.exe</PRE>Note:
                <ul>
                    <li>Su sistemi UNIX (Linux o la famiglia BSD) non aggiungere l'estensione ".exe" dopo myprog
                    <li>"<TT>src dirs</TT>" è un elenco di directories contenente i file sorgenti del programma e delle units che utilizza, separate da un punto e virgola (";"). La directory corrente viene inclusa automaticamente.
                </ul>
                <li>Dopo aver caricato il debugger, si possono impostare le opzioni della riga di comando che devono essere inviate al programma per mezzo del comando "<TT>set args &lt;option1 option2 ...&gt;</TT>"
                <li>Per aviare il programma scrivere "<TT>run</TT>" e premere il tasto invio
                <li>Quando il programma si interrompe viene visualizzato l'indirizzo in cui è avvenuta l'interruzione. Il debugger tenterà di visualizzare il numero di linea del sorgente corrispondente a questo indirizzo. Notare che questo potrebbe verificarsi in una procedura della RTL, e le informazioni sul codice sorgente potrebbero non essere disponibili, dato che la libreria runtime non è stata compilata con le informazioni di debug.
                <li>Se successivamente si scrive "<TT>bt</TT>" (BackTrace), verrà visualizzato l'indirizzo sullo stack di chiamata (l'indirizzo delle procedure che sono state richiamate prima che l'esecuzione arrivasse in quel punto). 

Con il comando <PRE>info line *&lt;address&gt;</PRE> si puo vedere a quali righe di codice corrispondono questi indirizzi. Ad esempio: <PRE>info line *0x05bd8</PRE>
            </OL>
          
</TRN>
<TRN locale="it_IT" key="website.a_Debugging_DLL">
            <p>Il debug di librerie condivise (DLL) con Free Pascal non è supportato.
          
</TRN>
<TRN locale="it_IT" key="website.a_Debug_smartlinked">
            <p>Questo problema è dovuto al fatto che quando il codice viene generato con smartlink, allo scopo di ridurre le dimensioni del codice finale, non vengono generate informazioni sul tipo dei dati necessarie al debugging.  

           
            <p> Si consiglia di disattivare smartlink durante le fasi di debug. 
          
</TRN>
<TRN locale="it_IT" key="website.Advantages">
Vantaggi
</TRN>
<TRN locale="it_IT" key="website.Advantages_of">
Vantaggi della programmazione in Pascal e in Free Pascal
</TRN>
<TRN locale="it_IT" key="website.Advantages_title">
Vantaggi del Free Pascal
</TRN>
<TRN locale="it_IT" key="website.a_FPC_vs_GPC">
            <DL>
            <DT><b>Obiettivo:</b>
            <DD>Free Pascal è un'implementazione compatibile con il compilatore Borland Pascal sul maggior numero possibile di piattaforme. GNU Pascal è un compilatore pascal basato su POSIX.
            <DT><b>Versione</b>
            <DD>Attualmente, Free Pascal è alla versione 2.0 (maggio 2005). GNU Pascal è alla versione 2.1 (dal 2002, che può essere compilato con diverse implementazioni di GCC; la versione per Mac OS X è un'eccezione in quanto porta lo stesso numero di versione di GCC).
            <DT><b>Sviluppo:</b>
            <DD>Tra ogni rilascio, sono disponibili versioni di sviluppo di FPC per mezzo di snapshots giornallieri, e i sorgenti per mezzo di CVS. GPC rende disponibili durente l'anno un insieme di patches alla versione più recente, mentre alcuni utilizzatori rilasciano regolari snapshots per OS X e Windows.
            <DT><b>Sistemi operativi:</b>
            <DD>Free Pascal può essere eseguito su un gran numero di piattaforme, ad esempio DOS, Win32 (senza richiedere alcun layer Unix), Linux, FreeBSD NetBSD, OS/2, BeOS, Classic Mac OS, Mac OS X, e AmigaOS sulle seguenti architetture: x86, x86_64 (AMD64), Sparc, PowerPC, ARM e Motorola (Motorola solo per la versione 1.0.x). 
GNU Pascal può essere eseguito su qualsiasi sistema in grado di eseguire GNU C, e per il quale il processo di compilazione è stato verificato.             <DT><b>Autoinnesco:</b>
            <DD>Per ricompilare il compilatore, FPC richiede un adeguato insieme di programmi binutils (AS, AR, LD), gmake e un compilatore a riga di comando. Nuove architetture/sistemi operativi sono cross-compilate. 
GPC richiede una versione adeguata del compilatore GCC e un insieme completo di binutils, flex, bison, gmake, una shell POSIX e libtool.
            <DT><b>Sorgenti:</b>
            <DD>Free Pascal è scritto interamente in Pascal (circa 6 MB di codice sorgente), GNU Pascal è scritto in C (un adattamento del compilatore GNU C: 2.8 MB di codice + 8 MB di codice GNU C).
            <DT><b>Linguaggio:</b>
            <DD>Free Pascal supporta il dialetto Borland Pascal, implementa il linguaggio Delphi Object Pascal e alcune estensioni di Mac Pascal. 
GNU Pascal supporta ISO 7185, ISO 10206, Borland Pascal 7.0 (in gran parte).
            <DT><b>Estensioni:</b>
            <DD>Free pascal implementa l'overloading di metodi, funzioni e operatori. (come anche versioni recenti di Delphi, non propriamente un'estensione in senso stretto), GNU Pascal implementa l'overloading di metodi.
            <DT><b>Licenza:</b>
            <DD>Entrambi i compilatori sono distribuiti con licenza GPL. 
            <DT><b>Autori:</b>
            <DD>Free Pascal è stato iniziato da Florian Kl&auml;mpfl, Germany
            (florian&#x040;freepascal.org), GNU Pascal è stato iniziato da Jukka Virtanen,
            Finland (jtv&#x040;hut.fi). </DD></DL><br>
          
</TRN>
<TRN locale="it_IT" key="website.a_Game_in_FPC">
            Con Free Pascal si possono realizzare dei giochi e se si è abbastanza abili, anche un gioco come Doom 3. Creare dei giochi non è facile, bisogna essere programmatori esperti. Alla pagina <a href='http://www.pascalgamedevelopment.com'>
            www.pascalgamedevelopment.com</a> si può trovare una comunità di programmatori di giochi per Free Pascal e Delphi.
            <p>
            Per iniziare è consigliabile studiare <a href='http://www.delphi-jedi.org/Jedi:TEAM_SDL_HOME'>JEDI-SDL</a>
            o <a href='http://ptcpas.sourceforge.net'>PTCPas</a> oppure i sorgenti di un gioco già realizzato, ad esempio             <a href='http://thesheepkiller.sourceforge.net'>The Sheep Killer</a>, un gioco molto semplice il cui codice non dovrebbe essere troppo difficile da analizzare. 
          
</TRN>
<TRN locale="it_IT" key="website.a_Getting_the_compiler">
            <p>La versione stabile più recente di Free Pascal si può essere scaricata da uno dei seguenti <a href="download@x@">mirrors ufficiali</a>
          
</TRN>
<TRN locale="it_IT" key="website.a_Homework">
            <p>No. Non siamo insegnanti, per favore non inviateci email di questo genere. Il team di sviluppo di Free Pascal ha lo scopo di fornire supporto per il compilatore e cerca sempre di fornire una risposta alle varie domande. Risolvere i compiti per casa spetta a chi li deve svolgere. 
          
</TRN>
<TRN locale="it_IT" key="website.a_Increase_heap">
            <p>Per default Free Pascal riserva un piccola parte della memoria RAM per l'applicazione come memoria Heap. Se venisse riservata tuta la memoria disponibile, con Windows si potrebbero verificare dei problemi, dato che Windows andrebbe ad incrementare progressivamente le dimensioni del file di scambio per fornire ulteriore memoria agli altri programmi. 

            <p>Le dimensioni della memoria heap possono essere specificate con l'opzione -Chxxxx. 

            <p>Tuttavia, la dimensione dell'heap non è realmente determinante, dato che questi è in grado di espandersi: qualora la memoria disponibile venisse utilizzata tutta, il programma cercherà di ottenere ulteriore memoria dal sistama operativo (OS), in questo modo la memoria heap è limitata solo dalla massima memoria che il sistema operativo è in grado di gestire. 

            <p>Questa opzione è utile solo se già si ritiene che il programma necessita di una quantità di memoria prefissata. Specificando il parametro -Ch il programma eseguirà l'allocazione necessaria al suo avvio migliorandone le prestazioni durante l'esecuzione. 

          
</TRN>
<TRN locale="it_IT" key="website.a_Installation_hints">
             <ul>
               <li> Non installare Free Pascal in una directory il cui nome contiene dei caratteri di spaziatura, questo può causare dei problemi durante la compilazione. 
             </ul>
           
</TRN>
<TRN locale="it_IT" key="website.a_Installing_snapshot">
            <p>Per installare uno snapshot, estrarre il file zip nella directory in cui è installato Free Pascal (dopo aver fatto una copia di sicurezza, ovviamente). Si può anche estrarre il file zip in una directory vuota e poi spostarne il contenuto nella directory di Free Pascal, sovrascrivendo i file esistenti. 

            <p> Verificare di estrarre il file zip in modo da mantenere intatta la struttura delle directory. Ad esempio, se si usa PKUNZIP, impartire il comando "pkunzip -d" e non semplicemente "pkunzip". Si noti che uno snapshot potrebbe contenere nuove versioni della RTL che con molta probabilità non possono essere utilizzate con le versioni precedenti, quindi effettuare sempre anche un backup della RTL. 
          
</TRN>
<TRN locale="it_IT" key="website.a_isoxpascal">
       Siamo disposti a supportare l'ISO Extended Pascal, ma il team di sviluppo di Free Pascal non ritiene importate questo aspetto e non investirà risorse in questa direzione. La ragione è che ISO Extended Pascal va considerato uno standard fallito. 
       <p>
       Per spiegare la ragione di ciò si deve tornare indietro agli anni '70. In quegli anni era popolare un compilatore UCSD-Pascal con la caratteristica di permettere a programmi compilati su un'architattura di essere eseguiti su un'altra. Tutti i principali compilatori Pascal derivano dal compilatore UCSD-Pascal, compresi quello di Borland e i vari dialetti Mac-Pascal. 
       <p>
       UCSD-Pascal introdusse il sistema delle unit e delle variabili stringa che tutti conosciamo. Per la programmazione modulare e per la gestione delle stringhe ISO Extended Pascal ha un sistema completamente diverso rispetto al modello UCSD. In pratica, non è possibile supportare allo stesso tempo entrambi i dialetti. 
       <p>
       A causa di ciò, l'industria del software non è stata in grado di passare allo standard ISO Extended Pascal senza compromettere la compatibilità con tutto il software già esistente. Per questo, pochi compilatori implementarono questo standard e quelli che lo fecero non si diffusero significativamente.  
       <p>
       Attualmente esiste poco codice scritto in ISO Extendes Pascal. Per questo non vi sono molte valide ragioni per investire risorse per implementare una modalità di questo genere in Free Pascal.
       <p>
       GNU-Pascal è un moderno compilatore in grado di compilare ISO Extended Pascal. Se si ha bisogno di sviluppare applicazioni con un dialetto ISO Extended, si consiglia di utilizzare questo compilatore. 
         
</TRN>
<TRN locale="it_IT" key="website.a_Licence_copyright_info">
            <p> Applicazioni create con il compilatore che utilizzano la libreria runtime sono soggette sono soggette ad una variante della licenza Library Gnu Public License (LGPL), che non impone restrizioni sul tipo di licenza delle applicazioni stesse. 
Con Free Pascal è perciò possibile creare codice non aperto o proprietario. 

            <p>Alla licenza LGPL è aggiunta la seguente eccezione:<br><I> Come eccezione speciale, i detentori dei diritti di autore di questa libreria danno il permesso di collegare (link) questa libreria a moduli indipendenti al fine di produrre un codice eseguibile, indipendentemente dai termini di licenza con cui saranno distribuiti tali moduli e il permesso di copiare e distribuire l'eseguibile nei termini che si ritengono più adeguati posto che siano rispettati, per ogni singolo modulo indipendente, i termini e le condizioni di licenza del modulo stesso. Un modulo indipendente è un modulo non derivato da o basato sulla libreria runtime. 
Se si modifica la libreria è possibile estendere questa eccezione alla nuova versione, ma non è obbligatorio. Se non si intende farlo, si può cancellare l'eccezione dalla nuova versione. </I>

Si noti che è comunque necessario conformarsi alla LGPL che per esempio richiede di fornire il codice sorgente della libreria runtime. 

Tenere in considerazione, e prendere atto che, se si vuole scrivere software non aperto: 
            <ul>
              <li>Solitamente i requisiti del codice sorgente possono essere soddisfatti semplicemente menzionando che il sorgente della libreria RTL possono essere scaricati dal sito web di Free Pascal: se la libreria runtime non è stata modificata ciò è considerato adeguato per soddisfare i requisiti della licenza LGPL sul prodotto. 
              <li>Se si apportano delle modifiche alla libreria runtime, tali modifiche devono essere rese disponibili, qualora richiesto. 
              <li>Distribuire insieme al software una copia della licenza LGPL.            </ul>

            <p> Il codice sorgente del compilatore, d'altra parte, viene distribuito con licenza GPL, ciò significa che ove si utilizzino tali sorgenti nella realizzazione di un software, esso deve portare la stessa licenza dei sorgenti. 
          
</TRN>
<TRN locale="it_IT" key="website.already_included_installer">
già inclusi nel programma di installazione 
</TRN>
<TRN locale="it_IT" key="website.Amiga_tel_inf">
Informazioni relative all'Amiga
</TRN>
<TRN locale="it_IT" key="website.a_Real_windows_application">
            Il modo più semplice è di procurarsi e installare <a href='http://www.lazarus.freepascal.org'>Lazarus</a>, che permette di realizzare non solo applicazioni su Windows, ma anche su Linux e MacOS X.           
</TRN>
<TRN locale="it_IT" key="website.arm-linux_1_file_download_descr">
<a href="@mirror_url@dist/arm-linux-2.0.4/arm-linux-fpc-2.0.4.i386-linux.tar">arm-linux-fpc-2.0.4.i386-linux.tar</a> (15 MB)
  è un archivio tar standard, contenente uno script di installazione.<br>
  Dopo aver estratto l'archivio in una directory temporanea, impartire il comando "<tt>sh install.sh</tt>" per l'installazione. 
</TRN>
<TRN locale="it_IT" key="website.arm-linux_available_in">
Il package FPC per arm-linux è disponibile in un unico formato:

</TRN>
<TRN locale="it_IT" key="website.a_Runtime_errors">
            <p> In caso di interruzione anomala di un'applicazione compilata con Free Pascal, è molto probabile che venga generato un errore di runtime. Questi errori assumono la forma: 

            <PRE>
            Runtime error 201 at $00010F86
              $00010F86  main,  line 7 of testr.pas
              $0000206D
            </PRE>

            <p> Il valore 201 in questo caso indica il codice di errore. Le descrizioni associate ai codici di errore di runtimen si trovano nell'appendice D del Manuale d'Uso di Free Pascal. I numeri in esadecimale rappresentano lo stato dello stack di richiamo nel momento in cui si è verificato l'errore.
          
</TRN>
<TRN locale="it_IT" key="website.a_Standard_units">
            <p> Per un elenco delle unit fornite in dotazione con Free Pascal, una breve descrizione e le piattaforme in cui sono supportate, consultare il Manuale d'uso di Free Pascal. 
          
</TRN>
<TRN locale="it_IT" key="website.Authors">
Autori
</TRN>
<TRN locale="it_IT" key="website.available_limited_platforms">
  Data la mancanza di persone che si occupano di confezionare e testare i packages di distribuzione, la versione 2.0.4 è disponibile per un limitato numero di piattaforme e formato. Chi volesse contribuire nella preparazione e nella messa a punto delle nuove distribuzioni può contattarci con un messaggio sulle mailing lists.

</TRN>
<TRN locale="it_IT" key="website.a_Wanna_new_version_now">
            <p>Prima del rilascio di una nuova versione ufficiale, è possibile dare un'occhiata e provare le versioni di sviluppo (i cosiddetti "snapshots"). Si avverte però che questi sono lavori in corso, cos', oltre a trovare rimedi ad errori conosciuti e nuove funzionalità si possono anche incontrare nuovi errori. 

            <p>Uno Snapshot viene generato automaticamente nottetempo dai sorgenti disponibili in quel momento. Talvolta questo può non andare a buon fine a causa di modifiche troppo impegnative. Se uno snapshot non dovesse funzionare, si deve aspettare e riprovare un paio di giorni più tardi. Evitare di scaricare la versione GO32v1 per Dos, dato che non viene più supportata. 


            <p>Lo snapshot più recente può essere scaricato dalla pagina web di <A
            href="develop@x@#snapshot"> sviluppo</a>. 
          
</TRN>
<TRN locale="it_IT" key="website.a_What_is_FPC">
            <p>Conosciuto in origine come FPK-Pascal, Free Pascal è un compilatore a 32 e 64 bit compatibile con Turbo Pascal e Delphi per DOS, Linux, Win32, OS/2, FreeBSD, AmigaOS, MacOSX, MacOS classic e diverse altre piattaforme (il numero sta aumentando nel tempo, anche se non tutte sono supportate allo stesso livello di quelle principali).
	
            <p>Free Pascal compiler è disponibile per diverse architetture: x86, Sparc (v8,v9), ARM, x86_64 (AMD64/Opteron) e Powerpc. Una versione meno recente (sulla serie 1.0) supporta anche m68k.<p>Il compilatore è scritto in Pascal ed è in grado di compilare i suoi stessi sorgenti. I sorgenti sono distribuiti con licenza GPL. <p>Breve storia: <ul>
              <li>06/1993: inizio del progetto
              <li>10/1993: i primi programmi funzionano
              <li>03/1995: il compilatore compila i suoi sorgenti
              <li>03/1996: distribuzione su internet
              <li>07/2000: versione 1.0
              <li>12/2000: versione 1.0.4
              <li>04/2002: versione 1.0.6
              <li>07/2003: versione 1.0.10
              <li>05/2005: versione 2.0.0 
              <li>12/2005: versione 2.0.2 
              <li>08/2006: versione 2.0.4
            </ul>
          
</TRN>
<TRN locale="it_IT" key="website.a_What_versions_exist">
            <p>La versione più recente è la 2.0.4, rilasciata come versione di correzione per la serie 2.0.x. Lo sviluppo si è spostato sulla serie  2.1.x, che uscirà eventualmente con versione 2.2.0 oppure 3.0.0 (in funzione alla quantità di modifiche apportate alla data del rilascio).

            <h4>Versioni precedenti</h4>

            <p>Negli anni il criterio di numerazione delle versioni ha subito alcuni cambiamenti. Le versioni precedenti alla 0.99.5 vanno considerate come "arcaiche". A partire dalla versione 0.99.5 è stato introdotto un sistema di numerazione che è stato successivamente modificato dopo la verione 1.0. 

            <p><b>Numerazione delle versioni da 0.99.5 a 1.0</b><p>

            <p>I compilatori che terminano con un numero <b>pari</b> sono versioni di <b>rilascio</b> (es. 0.99.8, 0.99.10, 0.99.12, 0.99.14 1.0.0)<br>Compilatori e packages che terminano con un numero <b>dispari</b> sono versioni di <b>sviluppo</b> 
            (es. 0.99.9, 0.99.11, 0.99.13, 0.99.15) 

            <p>la versione 0.99.5 è un'eccezione allo schema, dato che <b>0.99.5 è una versione di rilascio</b>
            (precedente all'introduzione del nuovo schema pari/dispari).

            <p>Una lettera dopo il numero (0.99.12b, 0.99.5d) indica una versione di correzione ad errori o problemi nella versione originale      (rispettivamente 0.99.12 and 0.99.5).

            <p><b>Numerazione dopo la versione 1.0</b>

            <p>Con il rilascio della versione 1.0 lo schema di numerazione è stato modificato, introducendo uno schema simile a quello usato per il kernel di Linux. La differenza principale consiste nel fatto che ora una versione di rilascio viene identificata dalla seconda cifra (1.0.x rispetto a 1.1.x) mentre la terza cifra (0.99.14 rispetto a 0.99.15), indica il livello di revisione, al posto della lettera finale. 

            <p>
            <ul>
             <li>Le versioni di correzione alla versione 1.0 sono state numerate con lo schema 1.0.x.
             <li>Un nuovo ramo di sviluppo (detto snapshot) inizia poi con la versione 1.1.x.
             <li>Eventualmente, le versioni 1.1.x, nel momento in cui saranno dichiarate stabili passeranno alla versione 2.x. Le revisioni sulla versione 2.0 vengono numerate con lo schema 2.0.x.
             <li>Il nuovo ramo di sviluppo dopo la versione 2.0 userà lo schema 2.1.x e così via.
            </ul>
            <p>

            <p>Normalmente si dovrebbero usare le versioni di rilascio che sono considerate stabili e più semplici da supportare (errori, piccoli problemi e "funzionalità inattese" sono noti, come anche i rimedi e i piccoli trucchi).

            <p>Gli Snapshots di sviluppo (in genere su base giornaliera) riflettono lo status corrente di sviluppo del compilatore. Le versioni di sviluppo possono contenere nuove funzionalità e correzioni degli errori dell'ultima versione, ma potrebbero anche presentare problemi temporanei di instabilità (che possono essere corretti anche il giorno successivo).

            <p>Gli snapshots di sviluppo sono spesso utili per alcune categorie di utilizzatori. In caso di dubbio, chiedere in mailing list riguardo alle opportunità di utilizzo. 
            <p>Il consiglio a tutti gli utilizzatori è di tenersi aggiornati alla versione più recente (in particolare alla serie 2.0.x).

            <p> Lo schema seguente illustra sinteticamente l'evoluzione nel tempo delle versioni di Free Pascal:<p> 
            <img src="pic/timeline.png"></a>
          
</TRN>
<TRN locale="it_IT" key="website.a_Why_username_password_for_download">
            <p> Solitamente, per scaricare da un server FTP è necessario fornire il nome utente "anonymous" e il proprio indirizzo e-mail come password.
          
</TRN>
<TRN locale="it_IT" key="website.Back_to_general_download_page">
Torna alla pagina generale scaricamenti
</TRN>
<TRN locale="it_IT" key="website.Back_to_mirrorlist">
Torna all'elenco dei mirror
</TRN>
<TRN locale="it_IT" key="website.BeOS_related_information">
Informazioni relative a BeOS
</TRN>
<TRN locale="it_IT" key="website.Binaries">
Binari
</TRN>
<TRN locale="it_IT" key="website.Bugtracker">
Registro errori
</TRN>
<TRN locale="it_IT" key="website.can_download_for_platform">
    Sono disponibili i download della versione 2.0.x per le seguenti piattaforme:
  
</TRN>
<TRN locale="it_IT" key="website.Coding">
In dettaglio
</TRN>
<TRN locale="it_IT" key="website.Community">
Comunità
</TRN>
<TRN locale="it_IT" key="website.Contribute">
Contributi
</TRN>
<TRN locale="it_IT" key="website.Contributed_Units">
Contributi Unit
</TRN>
<TRN locale="it_IT" key="website.Credits">
Riconoscimenti
</TRN>
<TRN locale="it_IT" key="website.cross_compiler_i386-linux_arm-linux">
  Questo è un cross compiler da i386-linux a arm-linux. Prima di utilizzarlo è necessario installare <a href="../i386/linux-@mirrorsuffix@@x@">fpc for i386-linux</a>.

</TRN>
<TRN locale="it_IT" key="website.Current_Version">
Versione corrente
</TRN>
<TRN locale="it_IT" key="website.Current_Version_text">
 La <em>2.0.4</em> è la versione più aggiornata di Free Pascal. Seleziona questo collegamento <a href="download@x@">download</a> per accedere al mirror più vicino da cui scaricare la tua copia.
    Le versioni in fase di sviluppo hanno numeri di versione di tipo <EM>2.1.x</EM>.
    Consultare la pagina <a href="develop.html">development</a> per accedere ai sorgenti e contribuire cosí allo sviluppo della versione stessa. 
  
</TRN>
<TRN locale="it_IT" key="website.Development">
Sviluppo
</TRN>
<TRN locale="it_IT" key="website.Documentation">
Documentazione
</TRN>
<TRN locale="it_IT" key="website.Documentation_av_several_formats">
  La documentazione è disponibile in diversi formati (per accedere alla documentazione nell'IDE in modo testo, sono necessari i file HTML):

</TRN>
<TRN locale="it_IT" key="website.DOS_rel_inf">
Informazioni relative al DOS
</TRN>
<TRN locale="it_IT" key="website.down_i386_freebsd_note">
FreeBSD 4.x e probabilmente anche 5.x
</TRN>
<TRN locale="it_IT" key="website.down_i386_netware_note">
solo 2.0.0
</TRN>
<TRN locale="it_IT" key="website.Download">
Download
</TRN>
<TRN locale="it_IT" key="website.Download_as_installer">
Scarica come installer
</TRN>
<TRN locale="it_IT" key="website.download_documentation">
    La documentazione è disponibile in vari formati sui seguenti <a href="down/docs/docs@x@">siti</a>.
  
</TRN>
<TRN locale="it_IT" key="website.download_in_1_file">
Scarica in un unico grosso file
</TRN>
<TRN locale="it_IT" key="website.download_old_releases">
  Sono disponibili sulle <a href="down/old/down@x@">seguenti pagine</a> anche versioni meno recenti (non più supportate) per piattaforme per le quali non vi sono possibilità di aggiornamento. Segnalazioni di errori per queste versioni non saranno prese in considerazione. Il motivo principale per cui queste versioni non sono più supportate è dovuto alla mancanza di persone che se ne prendano cura. Chi fosse interessato ad occuparsi ad un loro eventuale ripristino può inviare una segnalazione alla mailing list fpc-devel.

</TRN>
<TRN locale="it_IT" key="website.download_snapshots">
  Oltre alle distribuzioni ufficiali, è possibile ottenere i cosiddetti "snapshots" del compilatore, delle librerie Runtime, dell'IDE e altri packages sulla pagina dedicata allo <a href="develop@x@">sviluppo</a>. Queste sono versioni compilate con i sorgenti contenenti le ultime correzioni e gli ultimi miglioramenti apportati alla distribuzione più aggiornata. Si prega di usarli solo in caso di problemi, considerando ovviamente che potrebbero contenere nuovi errori. 

</TRN>
<TRN locale="it_IT" key="website.download_source">
    I sorgenti sono disponibili separatemente in formato <b>zip</b>, oppure <b>tar.gz</b>, sui seguenti <a href="down/source/sources@x@">siti</a>.
  
</TRN>
<TRN locale="it_IT" key="website.down_sparc_linux_note">
solo 2.0.0
</TRN>
<TRN locale="it_IT" key="website.everything_in_1">
Tutto in un singolo package
</TRN>
<TRN locale="it_IT" key="website.FAQ">
FAQ
</TRN>
<TRN locale="it_IT" key="website.faq_intro">
  <p>Questo documento fornisce informazioni aggiorante sul compilatore. Qui si possono trovare risposte alle domande più frequenti e soluzioni ai problemi più comuni nell'uso di Free Pascal. Queste informazioni sono da considerarsi più aggiornate rispetto a quelle contenute nella documentazione di Free Pascal. </p>

</TRN>
<TRN locale="it_IT" key="website.Features">
Peculiarità
</TRN>
<TRN locale="it_IT" key="website.Features_text">
La sintassi del linguaggio ha un alto grado di compatibilità con Turbo Pascal 7.0 e in buona parte con le principali versioni di Delphi (classi, rtti, eccezioni, stringhe ansi, widestrings, interfacce).
    E' previsto per chi usa Macintosh una modalità compatibile con Mac Pascal. Inoltre,
    Free Pascal supporta function overloading, operator overloading, global properties e
    altre caratteristiche sintattiche avanzate.
 
</TRN>
<TRN locale="it_IT" key="website.Feeling_Lucky">
Mi sento fortunato
</TRN>
<TRN locale="it_IT" key="website.for_comprehensive">
  <p> Per informazioni più dettagliate sul linguaggio Pascal e la libreria Runtime (RTL) consultare la documentazione di Free Pascal. Argomenti trattati in questo documento: </p>

</TRN>
<TRN locale="it_IT" key="website.FPC_on_the_Mac">
FPC sul Mac
</TRN>
<TRN locale="it_IT" key="website.Future_Plans">
Progetti futuri
</TRN>
<TRN locale="it_IT" key="website.General">
Generale
</TRN>
<TRN locale="it_IT" key="website.General_information">
Informazioni generali
</TRN>
<TRN locale="it_IT" key="website.General_Information">
Informazioni generali
</TRN>
<TRN locale="it_IT" key="website.Get_the_sources_here">
Scarica i sorgenti da <a href="@mirror_url@/dist/source-2.0.4">qui</a>
</TRN>
<TRN locale="it_IT" key="website.Home">
Pagina principale
</TRN>
<TRN locale="it_IT" key="website.Introduction">
Introduzione
</TRN>
<TRN locale="it_IT" key="website.latest_news">
Ultime notizie
</TRN>
<TRN locale="it_IT" key="website.latest_release">
La distribuzione più recente è la <b>2.0.4</b>
</TRN>
<TRN locale="it_IT" key="website.latest_version_is">
  La versione più recente è la <b>2.0.4</b>.

</TRN>
<TRN locale="it_IT" key="website.License">
Licenza
</TRN>
<TRN locale="it_IT" key="website.License_text">
  Le librerie di runtime e i packages sono distribuiti con una licenza di tipo LGPL (Library GNU Public
  License) che permette di sviluppare e distribuire applicazioni con link statico alle librerie stesse. Il sorgente del compilatore viene distribuito con licenza GPL (GNU General Public License). Sono disponibili sia i sorgenti delle librerie runtime che i sorgenti del compilatore, scritto anch'esso in Pascal. 

</TRN>
<TRN locale="it_IT" key="website.Links_mirrors">
Links/Mirrors
</TRN>
<TRN locale="it_IT" key="website.Mailinglists">
Mailing list
</TRN>
<TRN locale="it_IT" key="website.More_information">
Ulteriori informazioni
</TRN>
<TRN locale="it_IT" key="website.News">
Notizie
</TRN>
<TRN locale="it_IT" key="website.news_headline_20060925">
    <em>September 25, 2006</em>
    Francesco Lombardi sta scrivendo <a href='http://itaprogaming.free.fr/tutorial.html'> una guida su come sviluppare giochi per Game Boy Advance</a> con Free Pascal.
  
</TRN>
<TRN locale="it_IT" key="website.news_headline_20061224">
    <em>Dicembre 24, 2006</em>
   Un  <a href='http://www.computerbooks.hu/FreePascal'>libro su Free Pascal</a> è stato pubblicato in Ungheria.
    Il tomo da 270 pagine illustra il linguaggio Pascal dalle basi per poi passare alle caratteristiche avanzate del linguaggio.
  
</TRN>
<TRN locale="it_IT" key="website.news_headline_20070101">
    <em>Gennaio 1, 2007</em> FPC team augura a tutti un felice anno nuovo e un fruttuoso 2007!
  
</TRN>
<TRN locale="it_IT" key="website.news_headline_20070115">
    <em>Gennaio 15, 2007</em> Avrà inizio il 3 febbraio il concorso annuale
    <A href='http://www.pascalgamedevelopment.com/viewtopic.php?p=29788'>Pascal Game Development</A>.
    Sei in grado di scrivere un gioco con Free Pascal? Si possono vincere dei premi. Altre informazioni seguiranno a breve.
  
</TRN>
<TRN locale="it_IT" key="website.news_headline_20070127">
    <em>Gennaio 27, 2007</em> Disponibile l'ultima versione 1.0 di <A href='http://mypage.bluewin.ch/msegui'>MSEGUI and MSEIDE</A>. MSEIDE è un ambiente RAD (Rapid Application Development) per costruire applicazioni con interfaccia grafica Windows e Linux per mezzo del framework di interfaccia MSEGUI.
    Free Pascal team si congratula con gli sviluppatori per questa tappa importante.
  
</TRN>
<TRN locale="it_IT" key="website.Official_releases">
Distribuzioni ufficiali
</TRN>
<TRN locale="it_IT" key="website.Old_releases">
Versioni vecchie
</TRN>
<TRN locale="it_IT" key="website.overview">
Panoramica
</TRN>
<TRN locale="it_IT" key="website.overview_text">
Il Free Pascal (aka FPK Pascal) è un compilatore Pascal professionale a 32 e a 64 bit.
    E' disponibile per diversi processori: Intel x86, Amd64/x86_64, PowerPC,Sparc. La vecchia versione 1.0 supporta anche il Motorola 680x0.
    Sono supportati i seguenti sistemi operativi: Linux, FreeBSD,
    <a href="fpcmac.html">Mac OS X/Darwin</a>, <a href="fpcmac.html">Mac OS classic</a>, DOS, Win32, OS/2,
    Netware (libc e classic) e MorphOS.
  
</TRN>
<TRN locale="it_IT" key="website.plain_text">
puro testo
</TRN>
<TRN locale="it_IT" key="website.Porting_from_TP7">
Porting dal TP7
</TRN>
<TRN locale="it_IT" key="website.q_Access_denies_while_download">
Nell'accedere al server FTP di Free Pascal ricevo l'errore "Access denied"
</TRN>
<TRN locale="it_IT" key="website.q_Big_binaries">
Perché i file compilati sono così voluminosi?
</TRN>
<TRN locale="it_IT" key="website.q_Cannot_compile_with_bin_unit">
Non riesco a compilare un programma usando la versione binaria di una unit 
</TRN>
<TRN locale="it_IT" key="website.q_cfg_problems">
Problemi con il file di configurazione (fpc.cfg or ppc386.cfg)
</TRN>
<TRN locale="it_IT" key="website.q_Compiler_skips_files">
Sembra che il compilatore ignori i file contenuti nelle directory indicate con -Fu
</TRN>
<TRN locale="it_IT" key="website.q_Crash_analysis">
Ottenere maggiori informazioni quando un'applicazione va in errore. 
</TRN>
<TRN locale="it_IT" key="website.q_Debugging_DLL">
Il debug di librerie condivise (dynamic linked libraries) non funziona correttamente
</TRN>
<TRN locale="it_IT" key="website.q_Debug_smartlinked">
Il debug di codice compilato con smartlink non funziona correttamente. 
</TRN>
<TRN locale="it_IT" key="website.q_FPC_vs_GPC">
Free Pascal e GNU Pascal a confronto
</TRN>
<TRN locale="it_IT" key="website.q_Game_in_FPC">
Come posso realizzare un gioco con Free Pascal? Posso realizzare un gioco come Doom3?
</TRN>
<TRN locale="it_IT" key="website.q_Getting_the_compiler">
Dove trovarlo
</TRN>
<TRN locale="it_IT" key="website.q_Homework">
Come compito per casa devo scrivere un programma, potete aiutarmi?
</TRN>
<TRN locale="it_IT" key="website.q_Increase_heap">
Aumentare le dimensioni della memoria
</TRN>
<TRN locale="it_IT" key="website.q_Installation_hints">
Consigli per installare Free Pascal
</TRN>
<TRN locale="it_IT" key="website.q_Installing_snapshot">
Installare uno snapshot
</TRN>
<TRN locale="it_IT" key="website.q_isoxpascal">
Avete intenzione di supportare ISO Extended Pascal?
</TRN>
<TRN locale="it_IT" key="website.q_Licence_copyright_info">
Licenza e copyright
</TRN>
<TRN locale="it_IT" key="website.q_PPU_bin_compatibility">
Compatibilità dei files binari PPU tra una versione e l'altra 
</TRN>
<TRN locale="it_IT" key="website.q_Real_windows_application">
Come posso creare un'applicazione Windows con finestre e barre dei menu'?
</TRN>
<TRN locale="it_IT" key="website.q_Runtime_errors">
Errori Runtime
</TRN>
<TRN locale="it_IT" key="website.q_Standard_units">
Unit standard
</TRN>
<TRN locale="it_IT" key="website.q_Wanna_new_version_now">
Voglio una nuova versione ADESSO
</TRN>
<TRN locale="it_IT" key="website.q_What_is_FPC">
Cos'è Free Pascal (FPC)?
</TRN>
<TRN locale="it_IT" key="website.q_What_versions_exist">
Quali sono le versioni disponibili e quale dovrei utilizzare?
</TRN>
<TRN locale="it_IT" key="website.q_Why_username_password_for_download">
Perché devo fornire un nome utente e una password per scaricare Free Pascal ?
</TRN>
<TRN locale="it_IT" key="website.ready_made_packages">
    Sono disponibili dei package preconfezionati, assieme ad un software di installazione, in modo da essere in breve tempo operativi. Tutti i packages contengono un file README che contiene istruzioni per l'installazione e le novità più recenti.   
</TRN>
<TRN locale="it_IT" key="website.req_arma">
Architettura ARM
</TRN>
<TRN locale="it_IT" key="website.req_armb">
Su ARM, attualmente, è consentita solo cross-compilazione.

</TRN>
<TRN locale="it_IT" key="website.reqppca">
Architettura PowerPC:
</TRN>
<TRN locale="it_IT" key="website.req_sparca">
Architettura Sparc 
</TRN>
<TRN locale="it_IT" key="website.req_sparcb">
sono necessari 16 MB di RAM. Gira su qualsiasi installazione Linux  Sparc.

</TRN>
<TRN locale="it_IT" key="website.Requirements">
Requisiti
</TRN>
<TRN locale="it_IT" key="website.req_x86a">
Architettura x86:
</TRN>
<TRN locale="it_IT" key="website.req_x86b">
Per la versione 80x86 è richiesto almeno un processore 386, anche se è raccomandato almeno un 486.

</TRN>
<TRN locale="it_IT" key="website.search">
Cerca
</TRN>
<TRN locale="it_IT" key="website.searchwhat">
Cerca nella documentazione, nei forum e nelle mailing list.
</TRN>
<TRN locale="it_IT" key="website.snapshots">
Snapshots
</TRN>
<TRN locale="it_IT" key="website.Source">
Sorgenti
</TRN>
<TRN locale="it_IT" key="website.Sources">
Sorgenti
</TRN>
<TRN locale="it_IT" key="website.supported_windows_versions">
  Versioni di Windows supportate: 95, 98, ME, NT, 2000, XP e 2003

</TRN>
<TRN locale="it_IT" key="website.to_be_used_from_IDE">
da utilizzare con l'IDE oltre agli altri 
</TRN>
<TRN locale="it_IT" key="website.Tools">
Strumenti
</TRN>
<TRN locale="it_IT" key="website.Units">
Unit
</TRN>
<TRN locale="it_IT" key="website.UNIX_rel_inf">
Informazioni relative a UNIX
</TRN>
<TRN locale="it_IT" key="website.Wiki">
Wiki
</TRN>
<TRN locale="it_IT" key="website.You_can_download_installer">
Scarica il programma di installazione 
</TRN>
