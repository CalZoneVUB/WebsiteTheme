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
    
    <!-- Bootstrap datepicker -->
    <link href="/~se2_1314/website/{$ThemeDir}/dist/css/datepicker.css" rel="stylesheet">

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
    <script src="/~se2_1314/website/{$ThemeDir}/dist/js/bootstrap-datepicker.js"></script>
    <script>
	$(function(){
		$('#NewTimeLogDateFrom').datepicker({
			format: 'dd/mm/yyyy'
		});
		
		$('#NewTimeLogDateTo').datepicker({
			format: 'dd/mm/yyyy'
		});
		
		// Messaging in the popup window - alert
		function alertMessage(title, message){
			$("#addNewTimeLogMessage").replaceWith('<div id="addNewTimeLogMessage" class="alert alert-warning"><strong>'+ title +'</strong> '+ message +'</div>');
		}
	
		// Messaging in the popup window - succes
		function successMessage(title, message){
			$("#addNewTimeLogMessage").replaceWith('<div id="addNewTimeLogMessage" class="alert alert-success"><strong>'+ title +'</strong> '+ message +'</div>');
		}
	
		// Messaging in the popup window - succes
		function errorMessage(title, message){
			$("#addNewTimeLogMessage").replaceWith('<div id="addNewTimeLogMessage" class="alert alert-danger"><strong>'+ title +'</strong> '+ message +'</div>');
		}
	
		// Messaging in the popup window - clear
		function clearMessage(){
			$("#addNewTimeLogMessage").replaceWith('<div id="addNewTimeLogMessage"></div>');
		}
	
		// Unlock the input fields.
		function unlockFields(){
			$("#NewTimeLogTitle").removeAttr("disabled");
			$("#NewTimeLogDescription").removeAttr("disabled");
			$("#NewTimeLogDateFrom").removeAttr("disabled");
			$("#NewTimeLogTimeFrom").removeAttr("disabled");
			$("#NewTimeLogDateTo").removeAttr("disabled");
			$("#NewTimeLogTimeTo").removeAttr("disabled");
			$("#doAddTimeLog").removeAttr("disabled");
		}
		// Lock the input fields
		function lockFields(){
			$("#NewTimeLogTitle").attr("disabled", "disabled");
			$("#NewTimeLogDescription").attr("disabled", "disabled");
			$("#NewTimeLogDateFrom").attr("disabled", "disabled");
			$("#NewTimeLogTimeFrom").attr("disabled", "disabled");
			$("#NewTimeLogDateTo").attr("disabled", "disabled");
			$("#NewTimeLogTimeTo").attr("disabled", "disabled");
			$("#doAddTimeLog").attr("disabled", "disabled");
		}
		
		// Submit a new service
		$("#doAddTimeLog").bind("click", function(){
			clearMessage();
			lockFields();
		
			// Values
			var title = $.trim($('#NewTimeLogTitle').val());
			var description = $.trim($('#NewTimeLogDescription').val());
			var dFrom = $.trim($('#NewTimeLogDateFrom').val());
			var tFrom = $.trim($('#NewTimeLogTimeFrom').val());
			var dTo = $.trim($('#NewTimeLogDateTo').val());
			var tTo = $.trim($('#NewTimeLogTimeTo').val());
			
			fd = dFrom.substr(0,2);
			fm = dFrom.substr(3,2)-1;
			fy = dFrom.substr(6,4);
			fh = tFrom.substr(0,2);
			fi = tFrom.substr(3,2);
			
			td = dTo.substr(0,2);
			tm = dTo.substr(3,2)-1;
			ty = dTo.substr(6,4);
			th = tTo.substr(0,2);
			ti = tTo.substr(3,2);
			
			fDate = new Date(fy, fm, fd, fh, fi).toUTCString();
			tDate = new Date(ty, tm, td, th, ti).toUTCString();
			// Check inputs
			if (fDate == 'Invalid Date'){
				//alert("'Van' is niet correct.");
				alertMessage('Datum:','Incorrecte "VAN" datum opgegeven.');
				unlockFields();
			} else if (tDate == 'Invalid Date'){
				//alert("'Tot' is niet correct.");
				alertMessage('Datum:','Incorrecte "TOT" datum opgegeven.');
				unlockFields();
			} else if (title.length === 0){
				// Display message
				alertMessage('Input fout:','Titel mag niet leeg zijn.');
				unlockFields();
				return false;
			} else if (description.length === 0){
				// Display message
				alertMessage('Input fout:','Beschrijving mag niet leeg zijn.');
				unlockFields();
				return false;
			} else {
				//alert("From: "+fDate+"- To: "+tDate);
				unlockFields();
				clearMessage();
				jQuery.ajax({ 
					type: "POST", 
					url: 'http://wilma.vub.ac.be/~se2_1314/website/team/time-tracking/CreateNewTaskLog', 
					data:  {
						TITLE:	title,
						DESCRIPTION: description,
						FROM: fDate,
						TO: tDate
					},
					dataType: 'JSON',
					async: false,
					cache: false,
					success: function(data) {
						if (data.code == 200) {
							successMessage('Succes:',data.message);
							setTimeout(function(){window.location.reload();},2000);
						} else {
						 	errorMessage('Error '+data.code+':',data.message);
						}
					},
					error: function(result) {
						errorMessage('Error 500:','Er heeft zich een probleem voorgedaan. Neem contact op met de webmaster.');
						return false;
					}
				});
			}
		});
	});
	</script>
  </body>
</html>
