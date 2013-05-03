'use strict';

angular.module('demoApp').controller('IndexCtrl', function ($scope, Campus, College, Department) {

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
		if (data.clazz === '.College') {
			$scope.template.editView = '/demo/resources/angular/templates/editCollege.html';
			if (typeof data.childOrganization === 'undefined') {
				College.get({id: data.id}, function (response) {
					data.childOrganization = response.childOrganization;
				});
			}
			$scope.editData = data;
		} else if (data.clazz === '.Department') {
			$scope.template.editView = '/demo/resources/angular/templates/editDepartment.html';
			if (typeof data.childOrganization === 'undefined') {
				Department.get({id: data.id}, function (response) {
					data.childOrganization = response.childOrganization;
				});
			}
			$scope.editData = data;
		}
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