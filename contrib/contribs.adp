<master>
<property name="picdir">../pic</property>
<property name="maindir">../</property>
<property name="title">Free Pascal - Contributions</property>
<property name="entry">Contributions</property>
<property name="header">Contributions</property>
<property name="headmatter">
<link href="/css/fp.css" rel="stylesheet" type="text/css" />
<link href="/css/fp-navl.css" rel="alternate stylesheet" type="text/css" title="Nav-Left" />
<link rel="stylesheet" type="text/css" href="http://extjs.cachefly.net/ext-3.3.1/resources/css/ext-all.css"/>
<link rel="stylesheet" type="text/css" href="http://extjs.cachefly.net/ext-3.3.1/examples/ux/gridfilters/css/GridFilters.css"/>
<link href="contribs.css" rel="stylesheet" type="text/css" />
<script src="http://extjs.cachefly.net/ext-3.3.1/adapter/ext/ext-base.js"></script>
<script src="http://extjs.cachefly.net/ext-3.3.1/ext-all.js"></script>
<script src="http://extjs.cachefly.net/ext-3.3.1/examples/ux/ux-all.js"></script>
<script src="contribs.cgi/contribs/API"></script>
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

  Below is the list of contributions by various FPC users. You can add an entry if you have a community account.<p>
  The column titles in the grid can be used to sort entries or filter them.<p>
  <div ID="contribs" style="overflow:hidden">
    
 </div>
</div>

<!-- MODIFY -->
