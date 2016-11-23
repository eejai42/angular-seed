
'use strict';

angular.module('myApp.Characters', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/characters', {
        templateUrl: 'AdminState/Characters/Characters.html',
        controller: 'CharactersCtrl'
    });
}])

.controller('CharactersCtrl', [function() {

}]);
                        
                    