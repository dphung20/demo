'use strict';
app.controller('TreeCtrl', function ($scope, $location, Organization) {
	$scope.campus = Organization.get({orgType: 'campus', id: 1 });

	$scope.expand = function (data) {
		if (typeof data.childOrganization === 'undefined') {
			Organization.get({id: data.id, orgType: $scope.orgType(data.clazz)}, function(org){
				data.childOrganization = org.childOrganization;
			});
		}
	};
	$scope.orgType = function(value){
		return value.toLowerCase().substr(1, value.length);
	};
});

app.controller('CollegeEditCtrl', function ($scope, college, Organization) {
	$scope.college = college;

	$scope.save = function () {
		Organization.addChild({id: $scope.college.id, orgType: 'college'}, {name: $scope.department.name, clazz: '.Department'}, function (college) {
			$scope.college = college;
			$scope.add.show = false;
		});
	};
	$scope.remove = function (data) {
		$scope.college.$removeChild({id: $scope.college.id, orgType: 'college', childId: data.id});
	};
});

app.controller('DepartmentEditCtrl', function ($scope, department, Organization) {
	$scope.department = department;

	$scope.save = function (item) {
		Organization.addChild({id: $scope.department.id, orgType: 'department', childId: item.id}, {}, function (department) {
			$scope.department = department;
			$scope.add.show = false;
		});
	};
	$scope.remove = function (data) {
		$scope.department.$removeChild({id: $scope.department.id, orgType: 'department', childId: data.id});
	};
});

app.controller('PersonEditCtrl', function ($scope, model, Organization, Person) {
	$scope.model = model;

	$scope.save = function (item) {
		Organization.addChild({id: $scope.select.room, orgType: 'room', childType: 'person', childId: $scope.model.person.id}, {}, function (response) {
			$scope.model.rooms.push(response);
			$scope.add.show = false;
		});
	};
	$scope.remove = function (data) {
		Organization.removeChild({id: data.id, orgType: 'room', childType: 'person', childId: $scope.model.person.id}, function (response) {
			var index = $scope.model.rooms.indexOf(data);
			$scope.model.rooms.splice(index, 1);
		});
	};

	$scope.update = function () {
		Person.update({id: $scope.model.person.id}, $scope.model.person);
	};

	$scope.editable = function () {
		$scope.revertData = {};
		angular.copy($scope.model, $scope.revertData);
	};

	$scope.revert = function () {
		angular.copy($scope.revertData, $scope.model);
	};
});