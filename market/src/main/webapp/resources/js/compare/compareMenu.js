$(document).ready(function(){
	$("#market").on("click", function(){
		$(location).attr('href', './market.compare?weekends=701');
	});
	$("#mart").on("click", function(){
		$(location).attr('href', './mart.compare?weekends=701');
	});
	$("#compare").on("click", function(){
		$(location).attr('href', './compare.compare?weekends=701');
	});
});