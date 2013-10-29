<div class="navbar-collapse collapse">
  <ul class="nav navbar-nav">
  	<% loop $Menu(1) %>
  		<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
  	<% end_loop %>
	<li class="active"><a href="index.html#">Home</a></li>
	<li><a href="index.html#test">Git</a></li>
	<li><a href="index.html#contact">Wilma</a></li>
	<li class="dropdown">
	  <a href="index.html#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
	  <ul class="dropdown-menu">
		<li><a href="index.html#">Action</a></li>
		<li><a href="index.html#">Another action</a></li>
		<li><a href="index.html#">Something else here</a></li>
		<li class="divider"></li>
		<li class="dropdown-header">Nav header</li>
		<li><a href="index.html#">Separated link</a></li>
		<li><a href="index.html#">One more separated link</a></li>
	  </ul>
	</li>
  </ul>	
</div><!--/.nav-collapse -->
