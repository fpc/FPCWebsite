<master>
<property name="picdir">../pic</property>
<property name="maindir">../</property>
<property name="title"><trn key="website.contribs.title" locale="en_US">Free Pascal - Contributions</trn></property>
<property name="entry">Contributions</property>
<property name="header"><trn key="website.contribs.header" locale="en_US">Contributions</trn></property>
<property name="headmatter">
<link href="/css/fp.css" rel="stylesheet" type="text/css" />
<link href="/css/fp-navl.css" rel="alternate stylesheet" type="text/css" title="Nav-Left" />
<link rel="stylesheet" type="text/css" href="https://extjs.cachefly.net/ext-3.3.1/resources/css/ext-all.css"/>
<link rel="stylesheet" type="text/css" href="https://extjs.cachefly.net/ext-3.3.1/examples/ux/gridfilters/css/GridFilters.css"/>
<link href="contribs.css" rel="stylesheet" type="text/css" />
<script src="https://extjs.cachefly.net/ext-3.3.1/adapter/ext/ext-base.js"></script>
<script src="https://extjs.cachefly.net/ext-3.3.1/ext-all.js"></script>
<script src="https://extjs.cachefly.net/ext-3.3.1/examples/ux/ux-all.js"></script>
<script src="//www.freepascal.org/contribs.cgi/contribs/API"></script>
<script src="contribs.js"></script>
<script>
  Ext.onReady(function() {
  // API is registered under FPWeb by default.
    Ext.Direct.addProvider(FPWeb);
    fpWeb.ShowContributedUnits();
  });
</script>
<style type="text/css">
.description { padding-top: 5px; padding-left: 5px; padding-right: 20px; padding-bottom: 5px}
</style>
</property>
<trn key="website.contribs.list" locale="en_US">
  Below is the list of contributions by various FPC users. You can add an entry if you have a community account.<p>
  The column titles in the grid can be used to sort entries or filter them.<p>
</trn>
  <div ID="contribs" style="overflow:hidden">

 </div>
</div>

<!-- MODIFY -->
