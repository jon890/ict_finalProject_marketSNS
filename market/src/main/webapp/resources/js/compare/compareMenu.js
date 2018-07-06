$(document).ready(function(){
	$("#market").on("click", function(){
		$(location).attr('href', './market.compare');
	});
	$("#mart").on("click", function(){
		$(location).attr('href', './mart.compare');
	});
	$("#compare").on("click", function(){
		$(location).attr('href', './compare.compare');
	});
});