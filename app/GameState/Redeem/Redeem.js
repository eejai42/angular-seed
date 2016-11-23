
'use strict';

angular.module('myApp.Redeem', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/redeem', {
        templateUrl: 'GameState/Redeem/Redeem.html',
        controller: 'RedeemCtrl'
    });
}])

.controller('RedeemCtrl', [function() {

}]);
                        
                    