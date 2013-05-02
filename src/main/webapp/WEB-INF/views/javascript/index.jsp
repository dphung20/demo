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
					<div id="tree-container" class="treeview" >
											
					</div>
				</div>

				<form>
				<div id="edit-container" style="margin-left: 350px;">
				
				<section>
					<!-- college -->
					<h3>{{name}}</h3>
					<table class="table table-condensed">
						<thead>
		              		<tr>
								<th>Departments</th>
		              			<th><a href="#" class="pull-right add" title="Add Department"><i class="icon-plus"></i></a></th>
		              		</tr>
		              	</thead>
						<tbody class="table-container" data-parent="{{id}}">
							{{#each childOrganization}}
							<tr data-id="{{this.id}}" data-type="{{this.clazz}}">
								<td><a href="#">{{this.name}}</a></td>
								<td><a href="#"  class="pull-right remove" title="Remove Item"><i class="icon-remove"></i></a></td>
							</tr>
							{{/each}}
						</tbody>
					</table>				
				</section>
				
				<section>
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
							{{#each childOrganization}}
							<tr data-id="{{this.id}}" data-type="{{this.clazz}}">
								<td><a href="#">{{this.firstName}} {{this.lastName}}</a></td>
								<td><a href="#" class="pull-right remove"  title="Remove Item"><i class="icon-remove"></i></a></td>
							</tr>
							{{/each}}
						</tbody>
					</table>				
				</section>
				
				<section>
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
	
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/underscore.min.js"/>"></script>
	<script type="text/javascript">
	$(function() {
		"use strict";
		var rootUrl = '<c:url value="/api/"/>';
		$.ajaxSetup({
			contentType: 'application/json; charset=utf-8',
			dataType: 'json'
		});
		
		// add tree item
		function addTreeItem(item, el){
			var html = '<li class="expandElement" data-id="' + item.id + '" data-type="' + item.clazz + '">';
			if(item.firstName){
				html += '<a href class="editData"><i class="icon-tags"></i><div>' + item.firstName + ' ' + item.lastName + '</div></a>';
			} else{
				html += '<input type="checkbox" id="' + item.id + '"/>';
				html += '<label for="' + item.id + '">+</label>';
				html += '<a href class="editData"><i class="icon-tags"></i><div>' + item.name + '</div></a>';
			}
			html += '</li>';
			el.append(html);
		}
		
		// load tree data
		$.getJSON(rootUrl + 'campus/1/college', function (response) {
			var ul = $('<ul></ul>').appendTo(".treeview");
			_.each(response.childOrganization, function(item){
				addTreeItem(item, ul);
			});;
		});
		
		// event to load data then toggle subitems in tree
		$(document).on('click', '#tree-container input',function(evt){
			var parent = $(event.target).parent();
			if (!parent.has('ul').length) {
				var id = parent.attr('data-id');
				var type = parent.attr('data-type');

				if (type === '.College') {
					$.getJSON(rootUrl  + 'college/' + id + '/department', function (response) {
						var ul = $('<ul></ul>').appendTo(parent);
						_.each(response.childOrganization, function(item){
							addTreeItem(item, ul);
						});
					});
				} else if (type === '.Department') {
					$.getJSON( rootUrl + 'department/' + id + '/employee', function (response) {
						var ul = $('<ul></ul>').appendTo(parent);
						_.each(response.childOrganization, function(item){
							addTreeItem(item, ul);
						});
					});
				}
			}
		});
		
		// event to show edit panel
		$(document).on('click', '#tree-container a', function(evt){
			evt.preventDefault();
			console.log("click");
		});

		
	});		
	</script>
</body>
</html>