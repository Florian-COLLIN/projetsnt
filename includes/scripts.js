$(document).ready(function() {
	$('.dropright a').on("click", function(e) {
		e.stopPropagation();
		e.preventDefault();

		if (!$(this).next('div').hasClass('show')) {
			$(this).next('div').addClass('show');
		}
		else {
			$(this).next('div').removeClass('show');
		}

	});
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});

function enableSearch() {
 	document.getElementById("searchForm").style.display = "flex";
}

function disableSearch() {
 	document.getElementById("searchForm").style.display = "none";
}
