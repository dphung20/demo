'use strict';

angular.module('demoApp').directive('demoTypeahead', function (Department) {
	return {
		restrict: 'A',
		require: 'ngModel',
		link: function postLink(scope, element, attrs, controller) {
			element.typeahead({
				name: 'person',
				remote: '/demo/api/person/find?search=%QUERY'
			}).on('typeahead:selected', function (event, item) {
				Department.addEmployee({id: scope.editData.id, personId: item.id}, {}, function (response) {
					scope.save(response);
				});
			});
		}
	};
});

angular.module('demoApp').directive('demoAddroom', function () {
	return {
		restrict: 'A',
		templateUrl: '/demo/resources/angular/templates/addRoomDirective.html',
		link: function postLink(scope, element, attrs, controller) {

		}
	};
});
