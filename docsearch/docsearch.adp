<master>
<property name="picdir">../pic</property>
<property name="maindir">../</property>
<property name="title"><trn key="website.docsearch.title" locale="en_US">Free Pascal - Search documentation</trn></property>
<property name="entry">Search the documentation</property>
<property name="header"><trn key="website.docsearch.header" locale="en_US">Search the documentation</trn></property>
<property name="headmatter">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<script type="application/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="application/javascript" src="docsearch.js"></script>
</property>
<trn key="website.docsearch.search" locale="en_US">
Search the FPC documentation.<p>
<div class="container">
    <div id="quick-access">
      <form class="form-inline quick-search-form" role="form" action="#" accept-charset="utf-8">
        <div class="form-group has-feedback" style="position: relative">
          <input type="text" id="search-term" class="form-control" placeholder="Search term" autocomplete="off">
          <div id="search-term-feedback" class="typeahead dropdown-menu" role="listbox"></div>
       </div>
       <button type="submit" id="quick-search" class="btn btn-outline-success">Search</button>
      </form>
    </div>
</div>
</trn>
<div id="search-result" class="container">
<script>
  rtl.run()
</script>
</div>
<!-- MODIFY -->
