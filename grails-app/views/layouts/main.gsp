<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="ePMm"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<calendar:resources theme="blue" />
		<g:layoutHead/>
	</head>
	<body>
		<nav class="navbar navbar-inverse" style="margin-bottom: 0px">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <img alt="Brand" src="/epm/assets/53777.gif">
		      </a>
		    </div>
		    <h2><span class="label label-default"><em>enterprise Project Metrics Management  </em><kbd>ePMm</kbd></span></h2>
		  	<ul class="breadcrumb">
			  <!-- <li role="presentation" class="active"><a href="#"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li> -->			  	
			  <li role="presentation"><a href="${createLink(controller:'home', action:'show')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
			  <li role="presentation"><a href="${createLink(controller:'project', action:'index')}"><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span> Projects</a></li>
			  <li role="presentation"><a href="#"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span> Metrics</a></li>
			  <li role="presentation"><a href="#"><span class="glyphicon glyphicon-dashboard" aria-hidden="true"></span> Dashboard</a></li>
			  <li role="presentation"><a href="#"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span> Contacts</a></li>
			</ul>
			</div>			
		 </nav>
		<g:layoutBody/>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		 <!-- FOOTER -->
	<div class="container">
      <footer>
      	<hr class="featurette-divider">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 MBRDI, ePMm. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
      </div>
	</body>
</html>
