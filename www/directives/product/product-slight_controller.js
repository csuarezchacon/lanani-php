(function () {
	angular.module('WebLanani').controller('productSlightController', ['$scope', function ($scope) {
		var vm = this;
		vm.product = $scope.product;
		vm.imagSrc = function() {
			vm.product.imag = vm.product.imag_src ? vm.product.imag_src : 'blank.png';
		}
		vm.imagBkg = function() {
			vm.product.imag = vm.product.imag_bkg ? vm.product.imag_bkg : vm.product.imag_src;
		}
	}]);
}) ()
