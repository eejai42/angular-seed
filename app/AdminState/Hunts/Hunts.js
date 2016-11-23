
'use strict';

angular.module('myApp.Hunts', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/hunts', {
        templateUrl: 'AdminState/Hunts/Hunts.html',
        controller: 'HuntsCtrl'
    });
}])

.controller('HuntsCtrl', [function() {

}]);
                        
                    