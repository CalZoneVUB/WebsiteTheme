<!DOCTYPE html>
<html lang="$ContentLocale">
  <head>
    <% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    $MetaTags(false)
    
    <link rel="shortcut icon" href="/~se2_1314/website/{$ThemeDir}/assets/ico/favicon.png">

    <title>CalZone - V.U.B.</title>

    <!-- Bootstrap core CSS -->
    <link href="/~se2_1314/website/{$ThemeDir}/dist/css/bootstrap.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="/~se2_1314/website/{$ThemeDir}/dist/css/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/~se2_1314/website/{$ThemeDir}/theme.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="/~se2_1314/website/{$ThemeDir}/assets/js/html5shiv.js"></script>
      <script src="/~se2_1314/website/{$ThemeDir}/assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <% include Header %>

    $Layout

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/~se2_1314/website/{$ThemeDir}/assets/js/jquery.js"></script>
    <script src="/~se2_1314/website/{$ThemeDir}/dist/js/bootstrap.min.js"></script>
    <script src="/~se2_1314/website/{$ThemeDir}/assets/js/holder.js"></script>
  </body>
</html>
