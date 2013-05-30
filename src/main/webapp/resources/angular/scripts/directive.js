'use strict';
app.directive('demoTypeahead', function () {
	return {
		require: 'ngModel',
		link: function postLink(scope, element, attrs, controller) {
			element.typeahead({
				name: 'person',
				remote: '../api/person/find?search=%QUERY'
			}).on('typeahead:selected', function (event, item) {
				scope.save(item);
			});
		}
	};
});

app.directive('demoAddroom', function (Organization) {
	return {
		templateUrl: '/demo/resources/angular/templates/addRoomDirective.html',
		link: function postLink(scope, element, attrs, controller) {
			scope.select = {};

			Organization.get({ id: 1, orgType: 'campus', childType: 'childfacility' }, function (buildings) {
				scope.buildings = buildings.childFacility;
				if (typeof scope.model.rooms !== 'undefinded') {
					scope.select.building = scope.model.rooms[0].building.id;
				} else {
					scope.select.building = buildings.childFacility[0].id;
				}
			});

			scope.$watch('select.building', function (newValue, oldValue) {
				if (newValue) {
					scope.loadFloor(newValue);
				}
			});

			scope.$watch('select.floor', function (newValue, oldValue) {
				if (newValue) {
					scope.loadRoom(newValue);
				}
			});

			scope.loadFloor = function(id){
				Organization.get({ id: id, orgType: 'building', childType: 'childfacility' }, function (floors) {
					scope.floors = floors.childFacility;
					scope.select.floor = floors.childFacility[0].id;
				});
			};

			scope.loadRoom = function(id){
				Organization.get({ id: id, orgType: 'floor', childType: 'childfacility' }, function (rooms) {
					scope.rooms = rooms.childFacility;
					scope.select.room = rooms.childFacility[0].id;
				});
			};
		}
	};
});