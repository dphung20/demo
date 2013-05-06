'use strict';

angular.module('demoApp').controller('IndexCtrl', function ($scope, $location, Campus, College, Department, Person) {

	var locationStack = [];
	$scope.template = {treeView: '/demo/resources/angular/templates/treeView.html'};
	$scope.campus = Campus.get({id: '1'});

	$scope.expand = function (data) {
		if (typeof data.childOrganization === 'undefined') {
			if (data.clazz === '.College') {
				College.get({id: data.id}, function (response) {
					data.childOrganization = response.childOrganization;
				});
			} else if (data.clazz === '.Department') {
				Department.get({id: data.id}, function (response) {
					data.childOrganization = response.childOrganization;
				});
			}
		}
	};

	$scope.edit = function (data) {
		$location.url('/');
		if (data.clazz === '.College') {
			$scope.template.editView = '/demo/resources/angular/templates/editCollege.html';
			if (typeof data.childOrganization === 'undefined') {
				College.get({id: data.id}, function (response) {
					data.childOrganization = response.childOrganization;
				});
			}
		} else if (data.clazz === '.Department') {
			$scope.template.editView = '/demo/resources/angular/templates/editDepartment.html';
			if (typeof data.childOrganization === 'undefined') {
				Department.get({id: data.id}, function (response) {
					data.childOrganization = response.childOrganization;
				});
			}
		} else if (data.clazz === '.Person') {
			$scope.template.editView = '/demo/resources/angular/templates/editPerson.html';
			if (typeof data.childOrganization === 'undefined') {
				Person.get({id: data.id}, function (response) {
					data.response = response;
				});
			}
		}
		$scope.editData = data;
	};
});

angular.module('demoApp').controller('CollegeEditCtrl', function ($scope, Department) {

	$scope.remove = function (data) {
		Department.delete({id: data.id}, function (response) {
			var index = $scope.editData.childOrganization.indexOf(data);
			$scope.editData.childOrganization.splice(index, 1);
		});
	};

	$scope.save = function () {
		var postData = {name: $scope.new.department, clazz: '.Department'};
		Department.post({id: $scope.editData.id}, postData, function (response) {
			$scope.editData.childOrganization.push(response);
			$scope.add.show = false;
			$scope.new.department = '';
		});
	};
});

angular.module('demoApp').controller('DepartmentEditCtrl', function ($scope, Department) {

	$scope.remove = function (data) {
		Department.removeEmployee({id: $scope.editData.id, personId: data.id}, {}, function (repsonse) {
			var index = $scope.editData.childOrganization.indexOf(data);
			$scope.editData.childOrganization.splice(index, 1);
		});
	};

	$scope.save = function (data) {
		$scope.editData.childOrganization = data.childOrganization;
		$scope.add.show = false;
		$scope.new.person = '';
	};
});

angular.module('demoApp').controller('PersonEditCtrl', function ($scope, Room, Person) {
	
	$scope.remove = function (data) {
		Room.removePerson({id: data.id, personId: $scope.editData.id}, {}, function (response) {
			var index = $scope.editData.response.rooms.indexOf(data);
			$scope.editData.response.rooms.splice(index, 1);
		});
	};

	$scope.save = function () {
	    Room.addPerson({id: $scope.select.room, personId: $scope.editData.id}, {}, function (response) {
	    	$scope.editData.response.rooms.push(response);
	    	$scope.add.show = false;
	    });
	};

	$scope.update = function () {
		var data = $scope.editData.response.person;
		data.firstName = $scope.editData.firstName;
		data.lastName = $scope.editData.lastName;
		Person.put({id: data.id}, data);
	};
});



