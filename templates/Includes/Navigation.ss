<div class="navbar-collapse collapse">
	<ul class="nav navbar-nav">
	<% loop $Menu(1) %>
		<% if Children() %>
			<li class="dropdown $LinkingMode">
				<a href="$Link" class="dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML<b class="caret"></b></a>
				<ul class="dropdown-menu">
				<% loop Children() %>
					<li><a href="$Link title="$Title.XML">$MenuTitle.XML</a></li>
				<% end_loop %>
				</ul>
			</li>
		<% else %>
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_if %>
	<% end_loop %>
	</ul>	
</div><!--/.nav-collapse -->
