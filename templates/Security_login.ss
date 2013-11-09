<!DOCTYPE html>
<html lang="$ContentLocale">
  <head>
    <% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="apple-mobile-web-app-capable" content="yes">
    $MetaTags(false)
    
    <!-- Icons for iOS and Favicon -->
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="/~se2_1314/website/{$ThemeDir}/assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/~se2_1314/website/{$ThemeDir}/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/~se2_1314/website/{$ThemeDir}/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/~se2_1314/website/{$ThemeDir}/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="shortcut icon" href="/~se2_1314/website/{$ThemeDir}/assets/ico/favicon.png">

    <!-- Bootstrap core CSS -->
    <link href="/~se2_1314/website/{$ThemeDir}/dist/css/bootstrap.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/~se2_1314/website/{$ThemeDir}/dist/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/~se2_1314/website/{$ThemeDir}/css/theme.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="/~se2_1314/website/{$ThemeDir}/assets/js/html5shiv.js"></script>
      <script src="/~se2_1314/website/{$ThemeDir}/assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/~se2_1314/website/">$SiteConfig.Title</a>
			</div>
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
			</div><!--/.nav-collapse -->
		</div>
	</div>
    
	<div class="container theme-showcase">
    	$Layout
	</div> <!-- /container -->
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/~se2_1314/website/{$ThemeDir}/assets/js/jquery.js"></script>
    <script src="/~se2_1314/website/{$ThemeDir}/dist/js/bootstrap.min.js"></script>
    <script src="/~se2_1314/website/{$ThemeDir}/assets/js/holder.js"></script>
  </body>
</html>
