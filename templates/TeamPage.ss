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
    <% include Header %>
    
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
