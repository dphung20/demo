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

angular.module('demoApp').directive('demoAddroom', function (Campus, Building, Floor, Room) {
	return {
		restrict: 'A',
		templateUrl: '/demo/resources/angular/templates/addRoomDirective.html',
		link: function postLink(scope, element, attrs, controller) {
			scope.select = {};

			Campus.getBuildings({id: '1'}, function (buildings) {
				scope.buildings = buildings.childFacility;
				if (typeof scope.editData.response.rooms !== 'undefinded') {
					scope.select.building = scope.editData.response.rooms[0].building.id;
				} else {
					scope.select.building = buildings.childFacility[0].id;
				}
				Building.getFloors({id: scope.select.building}, function (floors) {
					scope.floors = floors.childFacility;
					scope.select.floor = floors.childFacility[0].id
					Floor.getRooms({id: scope.select.floor}, function (rooms) {
						scope.rooms = rooms.childFacility;
						scope.select.room = rooms.childFacility[0].id;
					});
				});
			});

			scope.$watch('select.building', function (newValue, oldValue) {
				if (newValue !== oldValue) {
					Building.getFloors({id: newValue}, function (floors) {
						scope.floors = floors.childFacility;
						scope.select.floor = floors.childFacility[0].id
						Floor.getRooms({id: floors.childFacility[0].id}, function (rooms) {
							scope.rooms = rooms.childFacility;
							scope.select.room = rooms.childFacility[0].id;
						});
					});
				}
			});

			scope.$watch('select.floor', function (newValue, oldValue) {
				if (newValue !== oldValue) {
					Floor.getRooms({id: newValue}, function (rooms) {
						scope.rooms = rooms.childFacility;
						scope.select.room = rooms.childFacility[0].id;
					});
				}
			});
		}
	};
});
