
'use strict';

angular.module('myApp.Cities', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/cities', {
        templateUrl: 'AdminState/Cities/Cities.html',
        controller: 'CitiesCtrl'
    });
}])

.controller('CitiesCtrl', [function() {

}]);
                        
                    