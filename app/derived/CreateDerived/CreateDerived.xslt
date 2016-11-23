<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes" />
    <xsl:param name="root" />
    <xsl:variable name="active-states" select="//AppState[StateType != 'AbstractState' and ShowMenuNav = 'TRUE']" />
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/StaticData">
        <FileSet>
            <FileSetFiles>
                <FileSetFile>
                    <RelativePath>../../Index.html</RelativePath>
                    <OverwriteMode>Always </OverwriteMode>
                    <xsl:element name="FileContents" xml:space="preserve">&lt;!DOCTYPE html>
&lt;!--[if lt IE 7]>      &lt;html lang="en" ng-app="myApp" class="no-js lt-ie9 lt-ie8 lt-ie7"> &lt;![endif]-->
&lt;!--[if IE 7]>         &lt;html lang="en" ng-app="myApp" class="no-js lt-ie9 lt-ie8"> &lt;![endif]-->
&lt;!--[if IE 8]>         &lt;html lang="en" ng-app="myApp" class="no-js lt-ie9"> &lt;![endif]-->
&lt;!--[if gt IE 8]>&lt;!-->
<html lang="en" ng-app="myApp" class="no-js">
&lt;!--&lt;![endif]-->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>My AngularJS App</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bower_components/html5-boilerplate/dist/css/normalize.css" />
    <link rel="stylesheet" href="bower_components/html5-boilerplate/dist/css/main.css" />
    <link rel="stylesheet" href="app.css" />
    <script src="bower_components/html5-boilerplate/dist/js/vendor/modernizr-2.8.3.min.js"></script>

</head>
<body>
  <ul class="menu">
  <xsl:for-each select="$active-states">
    <li>&lt;a href="#!<xsl:value-of select="Url"/>"><xsl:value-of select="Name"/>&lt;/a></li>
    </xsl:for-each>
  </ul>



   &lt;!--[if lt IE 7]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
  &lt;![endif]-->
    <div ng-view=""></div>

    &lt;!-- In production use:
  &lt;script src="//ajax.googleapis.com/ajax/libs/angularjs/x.x.x/angular.min.js">&lt;/script>
  -->
  
      <script src="bower_components/angular/angular.js"></script>
  <script src="bower_components/angular-route/angular-route.js"></script>


<xsl:for-each select="$active-states">
      <xsl:text>&lt;script src="</xsl:text><xsl:value-of select="StateType"/><xsl:text>/</xsl:text><xsl:value-of select="Name"/>/<xsl:value-of select="Name"/><xsl:text>.js">&lt;/script></xsl:text>
  </xsl:for-each>


  <script src="app.js"></script>
  <script src="components/version/version.js"></script>
  <script src="components/version/version-directive.js"></script>
  <script src="components/version/interpolate-filter.js"></script>

</body>
</html>

                     </xsl:element>
                </FileSetFile>
                <xsl:for-each select="$active-states">
                    <FileSetFile>
                        <RelativePath>
                            <xsl:text>../../</xsl:text><xsl:value-of select="StateType"/><xsl:text>/</xsl:text><xsl:value-of select="Name"/>/<xsl:value-of select="Name"/><xsl:text>.html</xsl:text>
                        </RelativePath>
                        <OverwriteMode>Never</OverwriteMode>
                        <FileContents>
<div>
    <h1>
        State: <xsl:value-of select="Name"/>
    </h1>
</div>
                        </FileContents>
                    </FileSetFile>
                    <FileSetFile>
                        <RelativePath>
                            <xsl:text>../../</xsl:text><xsl:value-of select="StateType"/><xsl:text>/</xsl:text><xsl:value-of select="Name"/>/<xsl:value-of select="Name"/><xsl:text>.js</xsl:text>
                        </RelativePath>
                        <OverwriteMode>Never</OverwriteMode>
                        <FileContents>
'use strict';

angular.module('myApp.<xsl:value-of select="Name" />', ['ngRoute'])

.config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('<xsl:value-of select="Url" />', {
        templateUrl: '<xsl:value-of select="StateType"/><xsl:text>/</xsl:text><xsl:value-of select="Name" />/<xsl:value-of select="Name" />.html',
        controller: '<xsl:value-of select="Name" />Ctrl'
    });
}])

.controller('<xsl:value-of select="Name" />Ctrl', [function() {

}]);
                        
                    </FileContents>
                    </FileSetFile>
                    <FileSetFile>
                        <RelativePath>
                            <xsl:text>../../</xsl:text><xsl:value-of select="StateType"/><xsl:text>/</xsl:text><xsl:value-of select="Name"/>/<xsl:value-of select="Name"/><xsl:text>_test.js</xsl:text>
                        </RelativePath>
                        <OverwriteMode>Never</OverwriteMode>
                        <FileContents>
'use strict';

describe('myApp.<xsl:value-of select="Name" /> module', function() {

  beforeEach(module('myApp.<xsl:value-of select="Name" />'));

  describe('<xsl:value-of select="Name" /> controller', function(){

    it('should ....', inject(function($controller) {
      //spec body
      var <xsl:value-of select="Name" />Ctrl = $controller('<xsl:value-of select="Name" />Ctrl');
      expect(<xsl:value-of select="Name" />Ctrl).toBeDefined();
    }));

  });
});
                        </FileContents>
                    </FileSetFile>
                </xsl:for-each>
                <FileSetFile>
                    <RelativePath>../../app.js</RelativePath>
                    <OverwriteMode>Always</OverwriteMode>
                    <FileContents>
'use strict';

// Declare app level module which depends on views, and components
angular.module('myApp', [
  'ngRoute',
  <xsl:for-each select="$active-states">
      <xsl:text>'myApp.</xsl:text><xsl:value-of select="Name"/><xsl:text>',</xsl:text>
  </xsl:for-each>
  'myApp.version'
]).
config(['$locationProvider', '$routeProvider', function($locationProvider, $routeProvider) {
  $locationProvider.hashPrefix('!');

  $routeProvider.otherwise({redirectTo: '/dashboard'});
}]);
</FileContents>
                </FileSetFile>

            </FileSetFiles>
        </FileSet>
    </xsl:template>
</xsl:stylesheet>
