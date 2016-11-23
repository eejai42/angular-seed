
'use strict';

angular.module('myApp.Settings', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/settings', {
        templateUrl: 'SystemState/Settings/Settings.html',
        controller: 'SettingsCtrl'
    });
}])

.controller('SettingsCtrl', [function() {

}]);
                        
                    