'use strict';
var app = angular.module('demoApp', ['ngResource']);
app.config(function ($routeProvider) {
    $routeProvider
        .when('/college/:id', {
			controller: 'CollegeEditCtrl',
			templateUrl: '../resources/angular/views/editCollege.html',
			resolve: { college: function(OrganizationLoader) { return new OrganizationLoader('college'); } }})
        .when('/department/:id', {
			controller: 'DepartmentEditCtrl',
			templateUrl: '../resources/angular/views/editDepartment.html',
			resolve: { department: function(OrganizationLoader) { return new OrganizationLoader('department'); } }})
        .when('/person/:id', {
			controller: 'PersonEditCtrl',
			templateUrl: '../resources/angular/views/editPerson.html',
			resolve: { model: function(PersonLoader) { return new PersonLoader(); } }})
        .otherwise({ redirectTo: '/college/2' });
});