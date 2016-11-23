
'use strict';

angular.module('myApp.Dashboard', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/dashboard', {
        templateUrl: 'SystemState/Dashboard/Dashboard.html',
        controller: 'DashboardCtrl'
    });
}])

.controller('DashboardCtrl', [function() {

}]);
                        
                    