<div class="navbar-collapse collapse">
	<ul class="nav navbar-nav">
	<% loop $Menu(1) %>
		<% if Children() %>
			<li class="dropdown <% if LinkOrCurrent = current %>active<% end_if %>">
				<a href="$Link" class="dropdown-toggle" data-toggle="dropdown">$MenuTitle.XML <b class="caret"></b></a>
				<ul class="dropdown-menu">
				<% if $Title.XML = 'Account' %>
					<% with CurrentMember %>
						<li class="dropdown-header">$Surname, $FirstName</li>
					<% end_with %>
					<% loop Children() %>
						<li><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
					<% end_loop %>
					<% if Up.SiteAdmin %>
						<li class="divider"></li>
						<li><a href="/~se2_1314/website/admin/" title="Administratie paneel">Admin</a></li>
					<% end_if %>
				<% else %>
					<% loop Children() %>
						<li><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
					<% end_loop %>
				<% end_if %>
				</ul>
			</li>
		<% else %>
			<li class="<% if LinkOrCurrent = current %>active<% end_if %>"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
		<% end_if %>
	<% end_loop %>
	</ul>
	$TopLoginForm
</div><!--/.nav-collapse -->