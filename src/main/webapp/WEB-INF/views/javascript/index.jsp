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
					<div id="tree-container" class="treeview" ></div>
				</div>

				<form>
				<div id="edit-container" style="margin-left: 350px;">
				
				<!-- college -->
				<section class="panel college hidden">
					<h3 class="panel-header"></h3>
					<table class="table table-condensed">
						<thead>
		              		<tr>
								<th>Departments</th>
		              			<th><a href="#" class="pull-right add-department" title="Add Department"><i class="icon-plus"></i></a></th>
		              		</tr>
		              	</thead>
						<tbody class="table-container"></tbody>
					</table>				
				</section>
				
				<!-- department -->
				<section class="panel department hidden">
					<h3 class="panel-header"></h3>
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>Principal Investigators</th>
								<th><a href="#" class="pull-right add-person" title="Add Principal Investigators"><i class="icon-plus"></i></a></th>
							</tr>
						</thead>
						<tbody class="table-container"></tbody>
					</table>				
				</section>
				
				<!-- person -->
				<section class="panel person hidden">
					<a href="#"><i class="icon-pencil pull-right"></i></a>
					<h3 class="panel-header"></h3>
					
					<div class="personnel">
						<div><strong>Personnel Information</strong></div>
						<address>
							<a href="mailto:#" class="person-email"></a><br />
						</address>
					</div>

					<table class="table table-condensed">
						<thead>
							<tr>
								<th>Assigned Rooms</th>
								<th><a href="#" class="pull-right add-room" title="Add Room"><i class="icon-plus"></i></a></th>
							</tr>
						</thead>
						<tbody class="table-container"></tbody>
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
	<script src="<c:url value="/resources/js/typeahead.min.js"/>"></script>
	<script src="<c:url value="/resources/views/javascript/index.js"/>"></script>
</body>
</html>