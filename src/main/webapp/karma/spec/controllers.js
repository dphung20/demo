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
	var collegeItem = {clazz: ".College", id: "2", name: "College of Agricultural and Environmental Sciences"};
	var collegeData = {"clazz":".College","id":"2","name":"College of Agricultural and Environmental Sciences","childOrganization":[{"clazz":".Department","id":"6","name":"Agricultural Plant Biology"},{"clazz":".Department","id":"7","name":"Agricultural and Resource Economics"},{"clazz":".Department","id":"8","name":"Animal Science"}]};
	var departmentItem = {clazz: ".Department", id: "7", name: "Agricultural and Resource Economics"};
	var departmentData = {"clazz":".Department","id":"7","name":"Agricultural and Resource Economics","childOrganization":[{"clazz":".Person","id":"88","firstName":"Noah","lastName":"Crain"},{"clazz":".Person","id":"87","firstName":"Ingeborg","lastName":"Sebastian"},{"clazz":".Person","id":"89","firstName":"Mayra","lastName":"Wawrzyniak"}]};

	beforeEach(inject(function ($rootScope, $controller, _$httpBackend_) {
		mockBackend = _$httpBackend_;
		$scope = $rootScope.$new();

		mockBackend.when('GET', '/demo/api/campus/1/college').respond(campusData);
		mockBackend.when('GET', '/demo/api/college/2/department').respond(collegeData);
		mockBackend.when('GET', '/demo/api/department/7/employee').respond(departmentData);

		ctrl = $controller('IndexCtrl', {
			$scope: $scope
		});
	}));

	it('should create campus model with 6 colleges fetched from resource', function () {
		expect($scope.campus).toEqualData({});
		mockBackend.flush();
		expect($scope.campus).toEqualData(campusData);
	});

	it('should expand with college data get college information', function () {
		$scope.expand(collegeItem);
		expect(collegeItem.childOrganization).not.toBeDefined();
		mockBackend.flush();
		expect(collegeItem.childOrganization).toEqualData(collegeData.childOrganization);
	});

	it('should expand with department data get department information', function () {
		$scope.expand(departmentItem);
		expect(departmentItem.childOrganization).not.toBeDefined();
		mockBackend.flush();
		expect(departmentItem.childOrganization).toEqualData(departmentData.childOrganization);
	});
});