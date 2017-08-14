(function () {
	angular.module('WebLanani').controller('productSlightController', ['$scope', function ($scope) {
		var vm = this;
		vm.product = $scope.product;
	}]);
}) ()