$(document).ready(function(){
	$("#notice").on("click", function(){
		$(location).attr('href', './notice.favorite?pageNum=1');
	});
	$("#hotPlace").on("click", function(){
		$(location).attr('href', './hotPlace.favorite');
	});
	$("#festival").on("click", function(){
		$(location).attr('href', './festival.favorite');
	});
	$("#nightMarket").on("click", function(){
		$(location).attr('href', './nightMarket.favorite');
	});
	$("#help").on("click", function(){
		$(location).attr('href', './help.favorite?pageNum=1');
	});
	$("#writeBtn").on("click", function(){
		$(location).attr('href', './noticeForm.favorite');
	});
	$("#writeBtn2").on("click", function(){
		$(location).attr('href', './helpForm.favorite');
	});
	$("#writeBtn3").on("click", function(){
		$(location).attr('href', './login.main');
	});
});