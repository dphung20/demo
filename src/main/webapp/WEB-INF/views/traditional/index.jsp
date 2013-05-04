<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>
<%@ taglib prefix="its" uri="/WEB-INF/custom.tld" %>

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
	<form method="post">
		<div class="row-fluid">
			<div class="span12">
				<div class="treeview-side">
					<h3>Manage My Organization</h3>
					<div id="tree-container" class="treeview" >
					
					<ul>
						<c:forEach var="collegeItem" items="${campus.childOrganization}">
							<li class="expandElement" data-id="${collegeItem.id}" data-type="collegeItem">
								<input type="checkbox" id="selectedNodes_${collegeItem.id}" name="selectedNodes" value="${collegeItem.id}" <c:if test="${its:contains(formBean.selectedNodes, collegeItem.id)}">checked="checked"</c:if>/>
								<label for="selectedNodes_${collegeItem.id}">+</label>
								<a href='<c:url value="/traditional/college/${collegeItem.id}"></c:url>' class="editData"><i class="icon-tags"></i><div <c:if test="${collegeItem.id == college.id}">class="selected"</c:if>>${collegeItem.name} </div></a>
							
								<c:if test="${its:contains(formBean.selectedNodes, collegeItem.id)}">
								<ul>
								<c:forEach var="departmentItem" items="${collegeItem.childOrganization}">
									<li class="expandElement" data-id="${departmentItem.id}" data-type="Department">
										<input type="checkbox" id="selectedNodes_${departmentItem.id}" name="selectedNodes" value="${departmentItem.id}" <c:if test="${its:contains(formBean.selectedNodes, departmentItem.id)}">checked="checked"</c:if>/>
										<label for="selectedNodes_${departmentItem.id}">+</label>
										<a href='<c:url value="/traditional/department/${departmentItem.id}"></c:url>' class="editData"><i class="icon-tags"></i><div <c:if test="${departmentItem.id == department.id}">class="selected"</c:if>>${departmentItem.name}</div></a>
										
										<c:if test="${its:contains(formBean.selectedNodes, departmentItem.id)}">
										<ul>
										<c:forEach var="personItem" items="${departmentItem.employees}">
											<li class="expandElement" data-id="${personItem.id}" data-type="Person">
												<a href='<c:url value="/traditional/person/${personItem.id}"></c:url>' class="editData"><i class="icon-tags"></i><div <c:if test="${personItem.id == person.id}">class="selected"</c:if>>${personItem.firstName} ${personItem.lastName }</div></a>
												
											</li>
										</c:forEach>
										</ul>
										</c:if>
																				
									</li>
								</c:forEach>
								</ul>
								</c:if>
							</li>
						</c:forEach>
					</ul>
										
					</div>
					<input type="checkbox" id="selectedNodes_0" name="selectedNodes" value="0" checked="checked" class="hidden"/>
					
				</div>
				<div id="edit-container" style="margin-left: 350px;">
					<!-- college -->
					<c:if test="${not empty college}">
					<section class="panel college">
						<h3 class="panel-header">${college.name}</h3>
						<table class="table table-condensed">
							<thead>
			              		<tr>
									<th>Departments</th>
			              			<th><a href="#" class="pull-right add" title="Add Department"><i class="icon-plus"></i></a></th>
			              		</tr>
			              	</thead>
							<tbody class="table-container">
							<c:if test="${formBean.showAddRow}">
								<tr>
									<td>
										<label for="name" class="hidden">Name</label>
										<input id="name" name="name" type="text" class="input-xxlarge required" placeholder="Name" /></td>
									<td>
										<div class="pull-right">
											<a href="#" class="save margin-right5" title="Save Room Assignment"><i class="icon-ok"></i></a>
											<a href="#" class="cancel" title="Cancel Add"><i class="icon-remove"></i></a>
										</div>
									</td>
								</tr>							
							</c:if>
							<c:forEach var="item" items="${college.childOrganization }">
								<tr data-id="${item.id}" data-type="">
									<td>${item.name}</td>
									<td><a href="#"  class="pull-right remove" title="Remove Item"><i class="icon-remove"></i></a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</section>
					</c:if>
										
					<!-- department -->
					<c:if test="${not empty department}">
					<section class="panel department">
						<h3 class="panel-header">${department.name}</h3>
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>Principal Investigators</th>
									<th><a href="#" class="pull-right add" title="Add Principal Investigators"><i class="icon-plus"></i></a></th>
								</tr>
							</thead>
							<tbody class="table-container">
							<c:if test="${formBean.showAddRow}">
							<tr>
								<td><input id="personSearch" name="personSearch" type="text" placeholder="Last Name, First Name" class="typeahead" style="width: 300px;"/>
									<input id="personId" name="personId" type="text" class="hidden" />
								</td>
								<td>
									<div class="pull-right">
										<a href="#" class="save margin-right5" title="Save Room Assignment"><i class="icon-ok"></i></a>
										<a href="#" class="cancel" title="Cancel Add"><i class="icon-remove"></i></a>
									</div>
								</td>
							</tr>							
							</c:if>
							<c:forEach var="item" items="${department.employees }">
								<tr data-id="${item.id}" data-type="">
									<td>${item.firstName} ${item.lastName}</td>
									<td><a href="#"  class="pull-right remove" title="Remove Item"><i class="icon-remove"></i></a></td>
								</tr>
							</c:forEach>							
							</tbody>
						</table>				
					</section>
					</c:if>
					
					<!-- person -->
					<c:if test="${not empty person}">
					<section class="panel person">
						<h3 class="panel-header">${person.firstName} ${person.lastName}</h3>
						
						<div><strong>Personnel Information</strong></div>
						<address>
							<a href="mailto:#" class="person-email">${person.email}</a><br />
						</address>
						
						<table class="table table-condensed">
							<thead>
								<tr>
									<th>Assigned Rooms</th>
									<th><a href="#" class="pull-right add" title="Add Room"><i class="icon-plus"></i></a></th>
								</tr>
							</thead>
							<tbody class="table-container">
							<c:if test="${formBean.showAddRow}">
							<tr>
								<td>
									<form:select path="formBean.buildingId" items="${buildings}" itemValue="id" itemLabel="name" cssClass="input-large" />
									<form:select path="formBean.floorId" items="${floors}" itemValue="id" itemLabel="name" cssClass="input-medium" />
									<form:select path="formBean.roomId" items="${rooms}" itemValue="id" itemLabel="name" cssClass="input-small" />
									
								</td>
								<td>
									<div class="pull-right">
									<a href="#" class="save margin-right5" title="Save Room Assignment"><i class="icon-ok"></i></a>
									<a href="#" class="cancel" title="Cancel Add"><i class="icon-remove"></i></a>
									</div>
								</td>
							</tr>						
							</c:if>
							
							<c:forEach var="item" items="${personRooms}">
								<tr data-id="${item.id}">
									<td>${item.parentFacility.parentFacility.name} - ${item.name}</td>
									<td><a href="#" class="pull-right remove" title="Remove Item"><i class="icon-remove"></i></a></td>
								</tr>
								
							</c:forEach>							
							</tbody>
						</table>				
					</section>	
					</c:if>
					
					<input type="text" id="deletedId" name="deletedId" class="hidden"/>
					<input type="text" id="showAddRow" name="showAddRow" class="hidden"/>				
				</div>
				
			</div>
		</div>	
	</form>		
	</div>
	
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/underscore.min.js"/>"></script>
	<script src="<c:url value="/resources/js/typeahead.min.js"/>"></script>
	<script type="text/javascript">
	$(function() {
		var rootUrl = '<c:url value="/api/"/>'
		
		$(document).on("click", "input[type='checkbox']", function(evt){
			$("form").submit();
		});
		
		$(document).on("click", ".remove", function(evt){
			evt.preventDefault();
			$("#deletedId").val($(evt.target).parents('tr').attr('data-id'));
			$("form").submit();
		});
		
		$(document).on("click", ".add", function(evt){
			evt.preventDefault();
			$("#showAddRow").val(true);
			$("form").submit();
		});	
		
		$(document).on("click", ".save", function(evt){
			evt.preventDefault();
			$("form").submit();
		});	
		
		$(document).on("click", ".cancel", function(evt){
			evt.preventDefault();
			$("#showAddRow").val(false);
			$("form").submit();
		});

		$(document).on("change", "#buildingId", function(evt){
			evt.preventDefault();
			$("#showAddRow").val(true);
			$("form").submit();
		});				

		$(document).on("change", "#floorId", function(evt){
			evt.preventDefault();
			$("#showAddRow").val(true);
			$("form").submit();
		});				

		
		$('.typeahead').typeahead({
			name: 'person',
			remote: rootUrl + 'person/find?search=%QUERY'
		}).on('typeahead:selected', function (evt, item) {
			$("#personId").val(item.id);
			$("form").submit();
		});
		
	});
	</script>
</body>
</html>