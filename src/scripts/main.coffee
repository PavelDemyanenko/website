site = angular.module "app", [
  "ngAnimate",
  "ngRoute",
  require("./services").name,
  require("./directives").name,
  require("./pages/home").name,
  require("./pages/about").name,
  require("./pages/contact").name
]

site.config ($routeProvider) ->

  $routeProvider.when("/",
    templateUrl: "pages/home.html"
    controller: "homeCtrl"
  ).when("/about",
    templateUrl: "pages/about.html"
    controller: "aboutCtrl"
  ).when "/contact",
    templateUrl: "pages/contact.html"
    controller: "contactCtrl"

  return

