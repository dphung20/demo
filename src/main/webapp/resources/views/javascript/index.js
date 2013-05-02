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

	// load tree data
	$.getJSON(rootUrl + 'campus/1/college', function (response) {
		var ul = $('<ul></ul>').appendTo(".treeview");
		_.each(response.childOrganization, function(item){
			addTreeItem(item, ul);
		});
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

		// show panel of selected item
		if (type === '.College') {
			$.getJSON(rootUrl + 'college/' + id + '/department', function (response) {
				var el = $(".college");
				el.find(".panel-header").append(response.name);

				_.each(response.childOrganization, function(item){
					var html = '<tr data-id="' + item.id + '" data-type="' + item.clazz + '">';
						html += '<td><a href="#">' + item.name + '</a></td>';
						html += '<td><a href="#"  class="pull-right remove" title="Remove Item"><i class="icon-remove"></i></a></td>';
						html += '</tr>';
					el.find("tbody").append(html);
				});

				el.removeClass("hidden");
			});
		} else if (type === '.Department') {
			$.getJSON(rootUrl + 'department/' + id + '/employee', function (response) {
			});

			$(".department").removeClass("hidden");
		} else if (type === '.Person') {
			$.getJSON(rootUrl + 'person/' + id + '/room', function (response) {
			});

			$(".person").removeClass("hidden");
		}
	});
});