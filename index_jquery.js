$(document).ready(function() {
	var posAct = 150, posNew = 0;

	$(window).scroll(function () {
		posNew = $(this).scrollTop();

		if (posNew <= posAct) {
			$('#menu-lg-fx').fadeOut(100);
		} else {
			$('#menu-lg-fx').fadeIn(100);
		}
	});
});