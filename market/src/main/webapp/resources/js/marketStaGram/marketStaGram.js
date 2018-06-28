$(document).ready(function(){
	
	/* ********** 글쓰기 양식을 모달박스로 만들기 ********** */
	let modal = $("#writeFormModal");
	let btn = $("#writeBtn");
	let span = $(".close")[0];
	
	$(btn).click(function(){
		$(modal).css("display", "block");
	});
	
	$(span).click(function(){
		$(modal).css("display", "none");
	});
	
	
//	모달 박스 밖을 클릭하면 창이 안보이게 하기
//	$(window).click(function(event){
//		if(event.target == modal){
//			$(modal).css("display", "none");
//		}
//	});
	
	/* ********** 글쓰기 양식을 모달박스로 만들기 ********** */
	
	
});