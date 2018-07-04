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
		$("#writeForm textarea").val("");
		$("#thumNailImgs").children().remove();
	});
	
	
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
				let imgHtml = "";
				imgHtml += "<article class='thumNailImgArticles'>";
				imgHtml += "<img src=\"" + e.target.result + "\">";
				imgHtml += "<span class='thumDelBtn'>&times;</span>";
				imgHtml += "</article>";
				$("#thumNailImgs").append(imgHtml);
			}
			reader.readAsDataURL(f);
		});
	});
	
	$(".thumDelBtn").click(function(){
		alert("여기를 눌렀습니다");
	});
	/* ********** 글쓰기 양식을 모달박스로 만들기 ********** */
	
	
	
	
	/* ********** 무한 스크롤 기능 ********** */
	let pageNum = 2;
	
	$(document).scroll(function(){
		let maxHeight = $(document).height();
		let currentScroll = $(window).scrollTop() + $(window).height();
		if ( maxHeight <= currentScroll){
			$.ajax({
				url : "/market/list.msg",
				data : {
					pageNum : pageNum
				},
				success : function(data){
					let html = "";
					$.each(data, function(index, img){
						html += "<article class='article'>";
						html += "<a href='read.msg?articleNum=" + img.articleNum + "'>"
						html += "<img src='./resources/uploadImgs/" + img.storedImgName + "'>"
						html += "</a>"
						html += "</article>"
					});
					$("#articles").append(html);
					pageNum++;
					let height = $(document).scrollTop();
				    $('html, body').animate({scrollTop : height+200}, 200);
				}
			});
		}
	});
	/* ********** 무한 스크롤 기능 ********** */
});