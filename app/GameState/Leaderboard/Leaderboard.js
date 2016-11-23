
'use strict';

angular.module('myApp.Leaderboard', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/leaderboard', {
        templateUrl: 'GameState/Leaderboard/Leaderboard.html',
        controller: 'LeaderboardCtrl'
    });
}])

.controller('LeaderboardCtrl', [function() {

}]);
                        
                    