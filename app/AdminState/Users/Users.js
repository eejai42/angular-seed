
'use strict';

angular.module('myApp.Users', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/users', {
        templateUrl: 'AdminState/Users/Users.html',
        controller: 'UsersCtrl'
    });
}])

.controller('UsersCtrl', [function() {

}]);
                        
                    