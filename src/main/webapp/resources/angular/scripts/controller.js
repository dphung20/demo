'use strict';

angular.module('demoApp')
    .controller('IndexCtrl', function ($scope, Campus) {
        $scope.college = Campus.get({id: '1'});
    });