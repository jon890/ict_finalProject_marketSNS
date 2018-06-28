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

	$(function(){
		$("#uploadbtn").click(function(e){
			e.preventDefault();
			$("input[type=file]").click();
		});
	});
	
	let uploadImgs = [];
	
	$("#uploadImgs").on("change", function(e){
		let imgs = e.target.files;
		let imgsArr = Array.prototype.slice.call(imgs);
		
		imgsArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지 파일만 선택할 수 있습니다");
				return;
			}
			
			uploadImgs.push(f);
			
			let reader = new FileReader();
			reader.onload = function(e){
				let imgHtml = "<img src=\"" + e.target.result + "\">";
				$("#thumNailImgs").append(imgHtml);
			}
			reader.readAsDataURL(f);
		});
	});
	/* ********** 글쓰기 양식을 모달박스로 만들기 ********** */

});