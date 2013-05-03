'use strict';

angular.module('demoApp').factory('Campus', function ($resource) {
    return $resource('/demo/api/campus/:id/:param1', {id: '@id'}, {
        get: {method: 'GET', params: {param1: 'college'}},
        getBuildings: {method: 'GET', params: {param1: 'building'}}
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

angular.module('demoApp').factory('Person', function ($resource) {
    return $resource('/demo/api/person/:id/:room', {id: '@id'}, {
        get: {method: 'GET', params: {room: 'room'}}
    });
});

angular.module('demoApp').factory('Building', function ($resource) {
    return $resource('/demo/api/building/:id/:param1', {id: '@id'}, {
        getFloors: {method: 'GET', params: {param1: 'floor'}}
    });
});

angular.module('demoApp').factory('Floor', function ($resource) {
    return $resource('/demo/api/floor/:id/:param1', {id: '@id'}, {
        getRooms: {method: 'GET', params: {param1: 'room'}}
    });
});

angular.module('demoApp').factory('Room', function ($resource) {
    return $resource('/demo/api/room/:id/:param1/:personId', {id: '@id', personId: '@personId'}, {
        addPerson: {method: 'PUT', params: {param1: 'add'}}
    });
});
