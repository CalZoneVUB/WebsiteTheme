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
    
    <!-- Graph -->
    <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="/~se2_1314/website/{$ThemeDir}/graph/excanvas.js"></script><![endif]-->
	<script language="javascript" type="text/javascript" src="/~se2_1314/website/{$ThemeDir}/graph/jquery.jqplot.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/~se2_1314/website/{$ThemeDir}/graph/jquery.jqplot.css" />
	<script type="text/javascript" src="/~se2_1314/website/{$ThemeDir}/graph/plugins/jqplot.pieRenderer.min.js"></script>
	<script type="text/javascript" src="/~se2_1314/website/{$ThemeDir}/graph/plugins/jqplot.donutRenderer.min.js"></script>
	<script type="text/javascript" src="/~se2_1314/website/{$ThemeDir}/graph/plugins/jqplot.json2.min.js"></script>
	<script>
		$(document).ready(function(){
			//First iter
			$.ajax({
				// have to use synchronous here, else the function 
				// will return before the data is fetched
				async: false,
				url: "/~se2_1314/website/team/leden/ajaxFirstIter/",
				dataType:"json",
				success: function(data) {
					var plot2 = $.jqplot('pie-iter-1', [data], { 
						seriesDefaults: {
							// Make this a pie chart.
							renderer: jQuery.jqplot.PieRenderer, 
								rendererOptions: {
								  // Put data labels on the pie slices.
								  // By default, labels show the percentage of the slice.
								  showDataLabels: true
								}
							}, 
							legend: {
								show: true,
								/*rendererOptions: {
									numberRows: 10
								},*/
								location: 'e'
							},
							grid: {
								drawBorder: false, 
								drawGridlines: false,
								background: '#ffffff',
								shadow:false
							}
						}
					);
						chartName = 'pie-iter-1'
						$('#' + chartName).unbind('jqplotDataClick');
						$('#' + chartName).bind('jqplotDataClick', function (ev, seriesIndex, pointIndex, data) {
						alert(plot2.series[seriesIndex].data[pointIndex]);
					});
				}
			});
			
			// Second iter
			$.ajax({
				// have to use synchronous here, else the function 
				// will return before the data is fetched
				async: false,
				url: "/~se2_1314/website/team/leden/ajaxSecondIter/",
				dataType:"json",
				success: function(data) {
					var plot2 = $.jqplot('pie-iter-2', [data], { 
						seriesDefaults: {
							// Make this a pie chart.
							renderer: jQuery.jqplot.PieRenderer, 
								rendererOptions: {
								  // Put data labels on the pie slices.
								  // By default, labels show the percentage of the slice.
								  showDataLabels: true
								}
							}, 
							legend: {
								show: true,
								/*rendererOptions: {
									numberRows: 10
								},*/
								location: 'e'
							},
							grid: {
								drawBorder: false, 
								drawGridlines: false,
								background: '#ffffff',
								shadow:false
							}
						}
					);
						chartName = 'pie-iter-2'
						$('#' + chartName).unbind('jqplotDataClick');
						$('#' + chartName).bind('jqplotDataClick', function (ev, seriesIndex, pointIndex, data) {
						alert(plot2.series[seriesIndex].data[pointIndex]);
					});
				}
			});
			
			//Third iter
			$.ajax({
				// have to use synchronous here, else the function 
				// will return before the data is fetched
				async: false,
				url: "/~se2_1314/website/team/leden/ajaxThirdIter/",
				dataType:"json",
				success: function(data) {
					var plot2 = $.jqplot('pie-iter-3', [data], { 
						seriesDefaults: {
							// Make this a pie chart.
							renderer: jQuery.jqplot.PieRenderer, 
								rendererOptions: {
								  // Put data labels on the pie slices.
								  // By default, labels show the percentage of the slice.
								  showDataLabels: true
								}
							}, 
							legend: {
								show: true,
								/*rendererOptions: {
									numberRows: 10
								},*/
								location: 'e'
							},
							grid: {
								drawBorder: false, 
								drawGridlines: false,
								background: '#ffffff',
								shadow:false
							}
						}
					);
						chartName = 'pie-iter-3'
						$('#' + chartName).unbind('jqplotDataClick');
						$('#' + chartName).bind('jqplotDataClick', function (ev, seriesIndex, pointIndex, data) {
						alert(plot2.series[seriesIndex].data[pointIndex]);
					});
				}
			});
			
			//Fourth iter
			$.ajax({
				// have to use synchronous here, else the function 
				// will return before the data is fetched
				async: false,
				url: "/~se2_1314/website/team/leden/ajaxFourthIter/",
				dataType:"json",
				success: function(data) {
					var plot2 = $.jqplot('pie-iter-4', [data], { 
						seriesDefaults: {
							// Make this a pie chart.
							renderer: jQuery.jqplot.PieRenderer, 
								rendererOptions: {
								  // Put data labels on the pie slices.
								  // By default, labels show the percentage of the slice.
								  showDataLabels: true
								}
							}, 
							legend: {
								show: true,
								/*rendererOptions: {
									numberRows: 10
								},*/
								location: 'e'
							},
							grid: {
								drawBorder: false, 
								drawGridlines: false,
								background: '#ffffff',
								shadow:false
							}
						}
					);
						chartName = 'pie-iter-4'
						$('#' + chartName).unbind('jqplotDataClick');
						$('#' + chartName).bind('jqplotDataClick', function (ev, seriesIndex, pointIndex, data) {
						alert(plot2.series[seriesIndex].data[pointIndex]);
					});
				}
			});
			
			//Fourth iter
			$.ajax({
				// have to use synchronous here, else the function 
				// will return before the data is fetched
				async: false,
				url: "/~se2_1314/website/team/leden/ajaxTotal/",
				dataType:"json",
				success: function(data) {
					var plot2 = $.jqplot('pie-total', [data], { 
						seriesDefaults: {
							// Make this a pie chart.
							renderer: jQuery.jqplot.PieRenderer, 
								rendererOptions: {
								  // Put data labels on the pie slices.
								  // By default, labels show the percentage of the slice.
								  showDataLabels: true
								}
							}, 
							legend: {
								show: true,
								/*rendererOptions: {
									numberRows: 10
								},*/
								location: 'e'
							},
							grid: {
								drawBorder: false, 
								drawGridlines: false,
								background: '#ffffff',
								shadow:false
							}
						}
					);
						chartName = 'pie-total'
						$('#' + chartName).unbind('jqplotDataClick');
						$('#' + chartName).bind('jqplotDataClick', function (ev, seriesIndex, pointIndex, data) {
						alert(plot2.series[seriesIndex].data[pointIndex]);
					});
				}
			});
			
		});
	</script>

  </body>
</html>
