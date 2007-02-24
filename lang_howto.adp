<master>
<property name="title">Free Pascal - Getting the website in your language</property>
<property name="entry">lang_howto</property>
<property name="header">Getting the website in your language</property>

<h2><trn key="website.config_browser_t" locale="en_US">Configuring your browser</trn></h2>
<trn key="website.config_browser_d" locale="en_US">
The Free Pascal web site is available in Bulgarian, Dutch, English, French, Italian,
Polish, Slovenian and Russian. The method that decides in which language it will show is
HTTP content negotiation, which means the web page shows in the language your web
browser requests it.

By default, this means the web site shows its messages in the same language as your
browser does, which gives usually the desired result. In case you would like the web
site to be shown in a different language, this can however be overridden. We'll
describe the methods for a few widely used web browsers.
</trn>

<h3>Firefox</h3>

<trn key="website.config_browser_firefox" locale="en_US">
Select Edit -> Options from the menu. In the "Advanced" super-tab, select the
"General" sub tab. In the languages section, select the "Choose" button.
Add the language you prefer, and move it to the top.
</trn>

<h3>Internet Explorer</h3>

<trn key="website.config_browser_ie" locale="en_US">
Select Extra -> Internet Options from the menu. In the internet options window,
select the tab "General", and click on the button "Languages". Add the language
you prefer, and move it to the top.
</trn>

<h3>Konqueror</h3>

<trn key="website.config_browser_konqi" locale="en_US">
Open the file ~/.kde/share/config/kio_httprc. At the top of the file, add a line
like this:

<PRE>
Languages=<isocode>
</PRE>

... where <isocode> is the iso code of the desired language.
</trn>

<h3>Opera</h3>

<trn key="website.config_browser_opera" locale="en_US">
Select Tools -> Preferences from the menu. In the preferences window, select
"Languages", add the language you prefer, and move it to the top.
</trn>

<h2><trn key="website.help_translating_t" locale="en_US">Help translating</trn></h2>
<trn key="website.help_translating_d" locale="en_US">
Many people learn programming before they speak a foreign language. Especially for
Pascal, which is a language used in education, having information available in local
languages can help a lot to promote its usage.
<p>
Because of this, the more languages the better. If you would like to help us translate
the web site into more languages, that would be great. To get access to the translation
manager, please do as following:"
<p>
<ul>
<li>Register at the <A href='http://community.freepascal.org:10000'>community</A>, if you
    haven't done so yet.
<li>Get yourself <A href='http://community.freepascal.org:10000/freepascal/request-permissions'>
    the translator permission</A>
</ul>
</trn>
