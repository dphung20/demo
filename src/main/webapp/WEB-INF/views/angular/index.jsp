<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>Demo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>"/> -->
	<link rel="stylesheet" type="text/css" href="/demo/resources/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="/demo/resources/css/project.css"/>
	<link rel="stylesheet" type="text/css" href="/demo/resources/css/bootstrap-responsive.css"/>
	
	<!--[if lt IE 9]>
	<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body ng-app="demoApp">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a href="/" class="brand"><div>Demo</div></a>
			</div>
		</div>
	</div>

	<div class="container-fluid" ng-view></div>
	
	<script src="/demo/resources/js/jquery.min.js"></script>
    <script src="/demo/resources/js/angular.js"></script>
    <script src="/demo/resources/js/angular-resource.js"></script>
	<script src="/demo/resources/js/bootstrap.min.js"></script>
	<script src="/demo/resources/js/underscore.min.js"></script>
	<script src="/demo/resources/js/typeahead.min.js"></script>

    <script src="/demo/resources/angular/scripts/app.js"></script>
    <script src="/demo/resources/angular/scripts/controller.js"></script>
    <script src="/demo/resources/angular/scripts/service.js"></script>
    <script src="/demo/resources/angular/scripts/directive.js"></script>
</body>
</html>