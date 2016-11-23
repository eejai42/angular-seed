
'use strict';

angular.module('myApp.Locations', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/locations', {
        templateUrl: 'AdminState/Locations/Locations.html',
        controller: 'LocationsCtrl'
    });
}])

.controller('LocationsCtrl', [function() {

}]);
                        
                    