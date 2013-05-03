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

// TODO
// person to room page
// /:collegeId/:departmentId/:personId
// edit person page


// buildings
    //api/campus/:campusId/building
// floors
    //api/building/:buildingId/floor
// rooms
    //api/floor/:floorId/room

// save room to person
    //api/room/:roomId/add/:personId