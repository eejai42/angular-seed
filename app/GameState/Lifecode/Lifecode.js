
'use strict';

angular.module('myApp.Lifecode', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/lifecode', {
        templateUrl: 'GameState/Lifecode/Lifecode.html',
        controller: 'LifecodeCtrl'
    });
}])

.controller('LifecodeCtrl', [function() {

}]);
                        
                    