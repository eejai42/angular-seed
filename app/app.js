
'use strict';

// Declare app level module which depends on views, and components
angular.module('myApp', [
  'ngRoute',
  'myApp.Story','myApp.Leaderboard','myApp.Lifecode','myApp.Redeem','myApp.Dashboard','myApp.Settings','myApp.Logout','myApp.Cities','myApp.Characters','myApp.Locations','myApp.Hunts','myApp.Users',
  'myApp.version'
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

  $routeProvider.otherwise({redirectTo: '/dashboard'});
}]);
