$(function(){
	$("body").append("<div id='glayLayer'></div><div id='overLayer'></div>");
	$("#glaryLayer").click(function(){
		$(this).hide()
		$("#overLayer").hide();
	});
	$("#overLayer").click(function(){
		$(this).hide()
		$("#glayLayer").hide();
	});
	$("a.modal").click(function(){
		$("#glayLayer").show();
		$("#overLayer").show().html("<img src='"+$(this).attr("href")+"'/>");
		return false;
	});
});