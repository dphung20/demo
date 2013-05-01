'use strict';

angular.module('demoApp', [])
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