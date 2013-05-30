$(function() {
	"use strict";
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

	// load department for college
	function loadDepartmentTreeData(collegeId){
		var li = $('li[data-id=' + collegeId +']');

		$.getJSON(rootUrl  + 'college/' + collegeId + '/childorganization', function (response) {
			li.find('ul').remove();
			var ul = $('<ul></ul>');
			_.each(response.childOrganization, function(item){
				addTreeItem(item, ul);
			});
			li.append(ul);
		});
	}

	// load person for department
	function loadPersonTreeData(departmentId){
		var li = $('li[data-id=' + departmentId +']');

		$.getJSON(rootUrl  + 'department/' + departmentId + '/childorganization', function (response) {
			li.find('ul').remove();
			var ul = $('<ul></ul>');
			_.each(response.childOrganization, function(item){
				addTreeItem(item, ul);
			});
			li.append(ul);
		});
	}

	function addDepartmentItem(item, el){
		var html = '<tr data-id="' + item.id + '" data-type="' + item.clazz + '">';
			html += '<td>' + item.name + '</td>';
			html += '<td><a href="#"  class="pull-right remove-department" title="Remove Item"><i class="icon-remove"></i></a></td>';
			html += '</tr>';
		el.append(html);
	}

	function addPersonItem(item, el){
		var html = '<tr data-id="' + item.id + '" data-type="' + item.clazz + '">';
			html += '<td>' + item.firstName  + ' ' + item.lastName + '</td>';
			html += '<td><a href="#"  class="pull-right remove-person" title="Remove Item"><i class="icon-remove"></i></a></td>';
			html += '</tr>';
		el.append(html);
	}

	function addRoomItem(item, el){
		var html = '<tr data-id="' + item.id + '" data-building="' + item.building.id + '" data-type="' + item.clazz + '">';
			html += '<td>' + item.building.name  + ' ' + item.name + '</td>';
			html += '<td><a href="#"  class="pull-right remove-room" title="Remove Item"><i class="icon-remove"></i></a></td>';
			html += '</tr>';
		el.append(html);
	}



	function loadFloorData(){
		$.getJSON(rootUrl + "building/" + $("#building").val() + "/childfacility", function (response) {
			var el = $("#floor").empty();
			_.each(response.childFacility, function(item){
				el.append($('<option value="' + item.id + '">' + item.name + '</option>'));
			}, this);

			loadRoomData();
		});
	}

	function loadRoomData(floorId){
		var existingRooms = _.map($(".table-container tr[data-id]"), function(item){
			return item.getAttribute("data-id");
		});

		$.getJSON(rootUrl + "floor/" + $("#floor").val() + "/childfacility", function (response) {
			var el = $("#room").empty();
			var rooms = _.reject(response.childFacility, function(item){
				return existingRooms.indexOf(item.id) >= 0;
			});

			_.each(rooms, function(item){
				el.append($('<option value="' + item.id + '">' + item.name + '</option>'));
			}, this);
		});
	}

	function showCollegePanel(collegeId){
		$.getJSON(rootUrl + 'college/' + collegeId + '/childorganization', function (response) {
			var el = $(".college");

			el.attr("data-college-id", response.id);
			el.find(".panel-header").html(response.name);

			_.each(response.childOrganization, function(item){
				addDepartmentItem(item, el.find("tbody"));
			});

			el.removeClass("hidden");
		});
	}

	function showDepartmentPanel(departmentId){
		$.getJSON(rootUrl + 'department/' + departmentId + '/childorganization', function (response) {
			var el = $(".department");

			el.attr("data-department-id", response.id);
			el.find(".panel-header").html(response.name);

			_.each(response.childOrganization, function(item){
				addPersonItem(item, el.find("tbody"));
			});

			el.removeClass("hidden");
		});
	}

	function showPersonPanel(personId){
		$.getJSON(rootUrl + 'person/' + personId + '/room', function (response) {
			var el = $(".person");

			showPersonDetailInfo(response.person);

			_.each(response.rooms, function(item){
				addRoomItem(item, el.find("tbody"));
			});

			el.removeClass("hidden");
		});
	}

	function showPersonDetailInfo(item){

		var html = '<div><strong>Personnel Information</strong></div>';
		html += '<address>';
		html += '	<a href="mailto:#" class="person-email">' + item.email + '</a><br />';
		html += '</address>';

		var el = $(".person");

		el.attr("data-person-id", item.id);
		el.attr("data-person-firstName", item.firstName);
		el.attr("data-person-lastName", item.lastName);
		el.attr("data-person-email", item.email);

		el.find(".panel-header").html(item.firstName + " " + item.lastName);
		el.find(".personnel").empty().append($(html));
	}

	// load tree data
	$.getJSON(rootUrl + 'campus/1/childorganization', function (response) {
		var ul = $('<ul></ul>').appendTo(".treeview");
		_.each(response.childOrganization, function(item){
			addTreeItem(item, ul);
		});
	});

	// event to load data then toggle subitems in tree
	$(document).on('click', '#tree-container input',function(evt){
		var parent = $(evt.target).parent();
		if (!parent.has('ul').length) {
			var id = parent.attr('data-id');
			var type = parent.attr('data-type');

			if (type === '.College') {
				loadDepartmentTreeData(id);
			} else if (type === '.Department') {
				loadPersonTreeData(id);
			}
		}
	});

	// event to show edit panel
	$(document).on('click', '#tree-container a', function(evt){
		var target = $(evt.target);
		evt.preventDefault();

		// highlight selected
		$('#tree-container').find(".selected").removeClass("selected");
		target.addClass("selected");

		// scroll to top of screen
		$(window).scrollTop(0);

		var parent = target.parents('li');
		var id = parent.attr('data-id');
		var type = parent.attr('data-type');

		// hide all panels
		$(".panel").addClass("hidden");
		$(".add-item").remove();

		// show panel of selected item
		if (type === '.College') {
			showCollegePanel(id);
		} else if (type === '.Department') {
			showDepartmentPanel(id);
		} else if (type === '.Person') {
			showPersonPanel(id);
		}
	});

	// college panel
	$(document).on('click', ".add-department", function(evt){
		evt.preventDefault();

		if ($('.college .table-container').find('tr:first-child input').length === 0) {
			var html = '<tr class="add-item">';
				html += '	<td>';
				html += '		<label for="name" class="hidden">Name</label>';
				html += '		<input id="name" name="name" type="text" class="input-xxlarge required" placeholder="Name" /></td>';
				html += '	<td>';
				html += '		<div class="pull-right">';
				html += '			<a href="#" class="save save-department margin-right5" title="Save Room Assignment"><i class="icon-ok"></i></a>';
				html += '			<a href="#" class="cancel" title="Cancel Add"><i class="icon-remove"></i></a>';
				html += '		</div>';
				html += '	</td>';
				html += '</tr>';

			$('.college .table-container').prepend($(html));
		}
	});

	$(document).on('click', ".remove-department", function(evt){
		evt.preventDefault();
		var target = $(evt.target);
		var collegeId = target.parents('section').attr('data-college-id');
		var departmentId = target.parents('tr').attr('data-id');

		$.ajax({ type: 'DELETE', url: rootUrl + 'department/' + departmentId })
			.done(function (data) {
				target.parents('tr').remove();

				var ul = $('li[data-id=' + collegeId +'] ul');
				if(ul){
					loadDepartmentTreeData(collegeId);
				}
			});
	});

	$(document).on('click', ".save-department", function(evt){
		evt.preventDefault();
		var target = $(evt.target);
		var collegeId = target.parents('section').attr('data-college-id');
		var tr = target.parents('tr');

		var data = {'clazz': '.Department', name: tr.find(':first-child input').val()};
		$.ajax({ type: 'POST', url: rootUrl + 'college/' + collegeId + '/childorganization', data: JSON.stringify(data) })
			.done(function (response) {
				tr.remove();
				var ul = $('li[data-id=' + collegeId +'] ul');
				if(ul){
					loadDepartmentTreeData(collegeId);
				}

				addDepartmentItem(response, $('.college .table-container'));
			});
	});

	// department panel
	$(document).on('click', ".add-person", function(evt){
		evt.preventDefault();
		var departmentId = $(evt.target).parents('section').attr('data-department-id');

		if ($('.department .table-container').find('tr:first-child input').length === 0) {
			var html = '<tr class="add-item">';
				html += '	<td>';
				html += '		<label for="personSearch" class="hidden">Name</label>';
				html += '		<input id="personSearch" name="personSearch" type="text" placeholder="Last Name, First Name" class="typeahead" style="width: 300px;"/></td>';
				html += '	<td>';
				html += '		<div class="pull-right">';
				html += '			<a href="#" class="save save-department margin-right5" title="Save Room Assignment"><i class="icon-ok"></i></a>';
				html += '			<a href="#" class="cancel" title="Cancel Add"><i class="icon-remove"></i></a>';
				html += '		</div>';
				html += '	</td>';
				html += '</tr>';

			$('.department .table-container').prepend($(html));
		}

		$('.department .table-container .typeahead').typeahead({
			name: 'person',
			remote: rootUrl + 'person/find?search=%QUERY'
		}).on('typeahead:selected', function (evt, item) {
			$.ajax({ type: 'PUT', url: rootUrl + 'department/' + departmentId + '/childorganization/' + item.id })
				.done(function (response) {
					var ul = $('li[data-id=' + departmentId +'] ul');
					if(ul){
						loadPersonTreeData(departmentId);
					}

					addPersonItem(item, $('.department .table-container'));
					$(evt.target).parents('tr').remove();
				});
		});
	});

	$(document).on('click', ".remove-person", function(evt){
		evt.preventDefault();
		var target = $(evt.target);
		var departmentId = target.parents('section').attr('data-department-id');
		var personId = target.parents('tr').attr('data-id');

		$.ajax({ type: 'DELETE', url: rootUrl + 'department/' + departmentId + '/childorganization/' + personId + '/remove' })
			.done(function (data) {
				target.parents('tr').remove();

				var ul = $('li[data-id=' + departmentId +'] ul');
				if(ul){
					loadPersonTreeData(departmentId);
				}
			});
	});

	// person panel
	$(document).on('click', ".add-room", function(evt){
		evt.preventDefault();
		var personId = $(evt.target).parents('section').attr('data-person-id');

		if ($('.person .table-container').find('tr:first-child select').length === 0) {
			var html = '<tr class="add-item">';
				html += '	<td>';
				html += '		<select id="building" class="input-large"></select>';
				html += '		<select id="floor" class="input-medium"></select>';
				html += '		<select id="room" class="input-small"></select>';
				html += '	</td>';
				html += '	<td>';
				html += '		<div class="pull-right">';
				html += '			<a href="#" class="save save-room margin-right5" title="Save Room Assignment"><i class="icon-ok"></i></a>';
				html += '			<a href="#" class="cancel" title="Cancel Add"><i class="icon-remove"></i></a>';
				html += '		</div>';
				html += '	</td>';
				html += '</tr>';

			var tr = $(html);
			$('.person .table-container').prepend(tr);

			$.getJSON(rootUrl + "campus/1/building", function (response) {
				var el = $("#building").empty();
				_.each(response.childFacility, function(item){
					el.append($('<option value="' + item.id + '">' + item.name + '</option>'));
				}, this);

				var currentBuilding = $('.table-container tr:last-child').attr("data-building");
				if(currentBuilding){
					$("#building").val(currentBuilding);
				}

				loadFloorData();
			});
		}
	});

	$(document).on('click', ".remove-room", function(evt){
		evt.preventDefault();
		var target = $(evt.target);
		var personId = target.parents('section').attr('data-person-id');
		var roomId = target.parents('tr').attr('data-id');

		$.ajax({ type: 'DELETE', url: rootUrl + 'room/' + roomId + '/person/' +  personId })
			.done(function (data) {
				target.parents('tr').remove();
			});
	});

	$(document).on('click', ".save-room", function(evt){
		evt.preventDefault();
		var target = $(evt.target);
		var personId = target.parents('section').attr('data-person-id');

		$.ajax({ type: 'PUT', url: rootUrl + 'room/' + $("#room").val() + "/person/" + personId })
			.done(function (response) {
				target.parents('tr').remove();
				addRoomItem(response, $('.person .table-container'));
			});
	});

	$(document).on('change', '#building', loadFloorData);
	$(document).on('change', '#floor', loadRoomData);


	// cancel
	$(document).on('click', ".cancel", function(evt){
		evt.preventDefault();
		$(evt.target).parents('tr').remove();
	});

	$(document).on('click', ".icon-pencil", function(evt){
		evt.preventDefault();
		var section = $(evt.target).parents('section');

		if ($('.person .table-container').find('tr:first-child select').length === 0) {
			var html = '<div class="control-group">';
			html += '	<label class="control-label" for="firstName">First Name</label>';
			html += '	<div class="controls">';
			html += '		<input type="text" id="firstName" name="firstName" value="' + section.attr('data-person-firstname') + '" placeholder="First Name" />';
			html += '	</div>';
			html += '</div>';
			html += '<div class="control-group">';
			html += '	<label class="control-label" for="lastName">Last Name</label>';
			html += '	<div class="controls">';
			html += '		<input type="text" id="lastName" name="lastName" value="' + section.attr('data-person-lastname') + '" placeholder="Last Name" />';
			html += '	</div>';
			html += '</div>';
			html += '<div class="control-group">';
			html += '	<label class="control-label" for="email">Email</label>';
			html += '	<div class="controls">';
			html += '		<input type="text" id="email" name="email" value="' + section.attr('data-person-email') + '" placeholder="Email" />';
			html += '	</div>';
			html += '</div>';
			html += '<div class="control-group">';
			html += '	<div class="controls">';
			html += '		<button type="submit" class="btn btn-primary update">Update</button>';
			html += '	</div>';
			html += '</div>';


			$('.personnel').empty().append($(html));
		}
	});

	$(document).on('click', ".update", function(evt){
		evt.preventDefault();
		var section = $(evt.target).parents('section');

		var person = {
			clazz: ".Person",
			id: section.attr('data-person-id'),
			firstName: $('#firstName').val(),
			lastName: $('#lastName').val(),
			email: $('#email').val()
		};

		$.ajax({ type: 'PUT', url: rootUrl + 'person/' + section.attr('data-person-id'), data: JSON.stringify(person) })
			.done(function (response) {
				showPersonDetailInfo(response);

				var li = $('li[data-id=' + person.id +']');
				if(li){
					li.find("div").html(person.firstName + " " + person.lastName);
				}
			});
	});

	// load panel 
	showCollegePanel(2);
});