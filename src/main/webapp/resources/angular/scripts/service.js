'use strict';

angular.module('demoApp').factory('Campus', function ($resource) {
    return $resource('/demo/api/campus/:id/:college', {id: '@id'}, {
        get: {method: 'GET', params: {college: 'college'}}
    });
});

angular.module('demoApp').factory('College', function ($resource) {
    return $resource('/demo/api/college/:id/:department', {id: '@id'}, {
        get: {method: 'GET', params: {department: 'department'}}
    });
});

angular.module('demoApp').factory('Department', function ($resource) {
    return $resource('/demo/api/department/:id/:employee/:personId/:remove', {id: '@id', personId: '@personId'}, {
        get: {method: 'GET', params: {employee: 'employee'}},
        post: {method: 'POST'},
        delete: {method: 'DELETE'},
        addEmployee: {method: 'PUT', params: {employee: 'employee'}},
        removeEmployee: {method: 'PUT', params: {employee: 'employee', remove: 'remove'}}
    });
});