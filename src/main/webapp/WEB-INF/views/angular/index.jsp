<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>Demo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/css/project.css"/>
	<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-responsive.css"/>
	
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
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="treeview-side" ng-controller="TreeCtrl">
					<h3>Manage My Organization</h3>
					<div id="tree-container" class="treeview">
						<ul>
							<li ng-repeat="data in campus.childOrganization | orderBy: 'name'" ng-include src="'../resources/angular/templates/tree.html'"></li>
						</ul>
					</div>
				</div>
				<div style="margin-left: 350px;" ng-view></div>
			</div>
		</div>
	</div>

	
	<script src="../resources/js/jquery.min.js"/>"></script>
    <script src="../resources/js/angular.js"></script>
    <script src="../resources/js/angular-resource.js"></script>
	<script src="../resources/js/underscore.min.js"></script>
	<script src="../resources/js/typeahead.min.js"></script>

    <script src="../resources/angular/scripts/app.js"></script>
    <script src="../resources/angular/scripts/controller.js"></script>
    <script src="../resources/angular/scripts/service.js"></script>
    <script src="../resources/angular/scripts/directive.js"></script>
</body>
</html>