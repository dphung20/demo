'use strict';

angular.module('demoApp').factory('Campus', function ($resource) {
    return $resource('/demo/api/campus/:id/college', {id: '@id'}, {
        get: {method: 'GET'}
    });
});