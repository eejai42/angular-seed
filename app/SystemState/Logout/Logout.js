
'use strict';

angular.module('myApp.Logout', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/logout', {
        templateUrl: 'SystemState/Logout/Logout.html',
        controller: 'LogoutCtrl'
    });
}])

.controller('LogoutCtrl', [function() {

}]);
                        
                    