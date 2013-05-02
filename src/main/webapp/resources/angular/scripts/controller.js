'use strict';

angular.module('demoApp')
	.controller('IndexCtrl', function ($scope, Campus, College, Department) {
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
			}
		};
	});

angular.module('demoApp')
	.controller('EditCtrl', function ($scope, Campus, College, Department) {
		// information from parent controller saved in $scope.editData
		// add directive
		// trash directive

		$scope.remove = function (data, index) {
			if (data.clazz === '.Department') {
				Department.delete({id: data.id}, function (response) {
					$scope.editData.childOrganization.splice(index, 1);
				});
			}
		};

		$scope.save = function (data) {
			
		};
	});