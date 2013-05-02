<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>Demo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/project.css"/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-responsive.css"/>"/>
	
	<!--[if lt IE 9]>
	<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a href="<c:url value="/"/>" class="brand"><div>Demo</div></a>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="treeview-side">
					<h3>Manage My Organization</h3>
					<label for="filter" class="hidden">Search Department or Principal Investigator</label>
					<input id="filter" type="text" placeholder="Search Department or Principal Investigator" style="width: 300px;" /><br /><br />
					<div id="tree-container" class="treeview" ></div>
				</div>

				<form>
				<div id="edit-container" style="margin-left: 350px;">
				
				<section class="panel college hidden">
					<!-- college -->
					<h3 class="panel-header"></h3>
					<table class="table table-condensed">
						<thead>
		              		<tr>
								<th>Departments</th>
		              			<th><a href="#" class="pull-right add" title="Add Department"><i class="icon-plus"></i></a></th>
		              		</tr>
		              	</thead>
						<tbody class="table-container" data-parent="{{id}}">
<!-- 							{{#each childOrganization}}
							
							{{/each}} -->
						</tbody>
					</table>				
				</section>
				
				<section class="panel department hidden">
					<!-- department -->
					<h3>{{name}}</h3>
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>Principal Investigators</th>
								<th><a href="#" class="pull-right add" title="Add Principal Investigators"><i class="icon-plus"></i></a></th>
							</tr>
						</thead>
						<tbody class="table-container" data-parent="{{id}}">
							<!-- {{#each childOrganization}}
							<tr data-id="{{this.id}}" data-type="{{this.clazz}}">
								<td><a href="#">{{this.firstName}} {{this.lastName}}</a></td>
								<td><a href="#" class="pull-right remove"  title="Remove Item"><i class="icon-remove"></i></a></td>
							</tr>
							{{/each}} -->
						</tbody>
					</table>				
				</section>
				
				<section class="panel person hidden">
					<!-- person -->
					<h3>{{person.firstName}} {{person.lastName}}</h3>
					
					<div><strong>Personnel Information</strong></div>
					<address>
						<a href="mailto:#">{{person.email}}</a><br />
					</address>
					
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>Assigned Rooms</th>
								<th><a href="#" class="pull-right add" title="Add Room"><i class="icon-plus"></i></a></th>
							</tr>
						</thead>
						<tbody class="table-container" data-parent="{{id}}">
							{{#each rooms}}
							<tr data-id="{{id}}" data-building="{{building.id}}" data-type="{{this.clazz}}">
								<td>{{building.name}} - {{name}}</td>
								<td><a href="#" class="pull-right remove" title="Remove Item"><i class="icon-remove"></i></a></td>
							</tr>
							{{/each}}
						</tbody>
					</table>				
				</section>				
				
				</div>
				</form>
			</div>
		</div>	
	</div>
	<script type="text/javascript">var rootUrl = '<c:url value="/api/"/>';</script>
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/underscore.min.js"/>"></script>
	<script src="<c:url value="/resources/views/javascript/index.js"/>"></script>
</body>
</html>