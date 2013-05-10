'use strict';

describe('Controller: IndexCtrl', function () {

	beforeEach(function(){
		this.addMatchers({
			toEqualData: function(expected) {
				return angular.equals(this.actual, expected);
			}
		});
	});

	beforeEach(module('demoApp'));

	var $scope, ctrl, mockBackend;
	var campusData = {"clazz":".Campus","id":"1","name":"University of California, Davis","childOrganization":[{"clazz":".College","id":"2","name":"College of Agricultural and Environmental Sciences"},{"clazz":".College","id":"3","name":"College of Biological Sciences"},{"clazz":".College","id":"4","name":"College of Engineering"},{"clazz":".College","id":"5","name":"College of Letters and Science"}]};
	var collegeItem = {};
	var departmentItem = {};

	beforeEach(inject(function ($rootScope, $controller, _$httpBackend_) {
		mockBackend = _$httpBackend_;
		$scope = $rootScope.$new();

		mockBackend.when('GET', '/demo/api/campus/1/college').respond(campusData);

		ctrl = $controller('IndexCtrl', {
			$scope: $scope
		});
	}));

	it('should create campus model with 6 colleges fetched from resource', function () {
		expect($scope.campus).toEqualData({});
		mockBackend.flush();
		expect($scope.campus).toEqualData(campusData);
	});
});