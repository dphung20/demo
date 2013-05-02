'use strict';

angular.module('demoApp').factory('Campus', function ($resource) {
    return $resource('/demo/api/campus/:id/college', {id: '@id'}, {
        get: {method: 'GET'}
    });
});

angular.module('demoApp').factory('College', function ($resource) {
    return $resource('/demo/api/college/:id/department', {id: '@id'}, {
        get: {method: 'GET'}
    });
});

angular.module('demoApp').factory('Department', function ($resource) {
    return $resource('/demo/api/department/:id/employee', {id: '@id'}, {
        get: {method: 'GET'}
    });
});