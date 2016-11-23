
'use strict';

angular.module('myApp.Story', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/story', {
        templateUrl: 'GameState/Story/Story.html',
        controller: 'StoryCtrl'
    });
}])

.controller('StoryCtrl', [function() {

}]);
                        
                    