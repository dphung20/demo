'use strict';
app.factory('Organization', function ($resource) {
    return $resource('../api/:orgType/:id/:childType/:childId', {id: '@id', childType: 'childorganization'}, {
        get: {method: 'GET' },
        addChild: { method: 'PUT' },
        removeChild: { method: 'DELETE' }
    });
});

app.factory('OrganizationLoader', function($route, $q, Organization){
    return function(orgType){
        var delay = $q.defer();
        Organization.get({ id: $route.current.params.id, orgType: orgType}, function(organization){ delay.resolve(organization); });
        return delay.promise;
    };
});

app.factory('Person', function ($resource) {
    return $resource('../api/person/:id/:childType', {id: '@id', childType: 'childorganization'}, {
        get: {method: 'GET', params: { childType: 'room'}}
    });
});

app.factory('PersonLoader', function($route, $q, Person){
    return function(orgType){
        var delay = $q.defer();
        Person.get({ id: $route.current.params.id}, function(person){ delay.resolve(person); });
        return delay.promise;
    };
});