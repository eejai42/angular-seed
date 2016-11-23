
'use strict';

angular.module('myApp.Hunt', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/hunts/hunt', {
        templateUrl: 'AdminState/Hunt/Hunt.html',
        controller: 'HuntCtrl'
    });
}])

.controller('HuntCtrl', [function() {

}]);
                        
                    