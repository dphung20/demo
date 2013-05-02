'use strict';

angular.module('demoApp', ['ngResource'])
    .config(function ($routeProvider) {
        $routeProvider
            .when('/', {
                templateUrl: '/demo/resources/angular/views/index.html',
                controller: 'IndexCtrl'
            })
            .otherwise({
                redirectTo: '/'
            });
    });