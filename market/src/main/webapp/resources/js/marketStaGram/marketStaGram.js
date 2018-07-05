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
		let imgIndex = 0;
		
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
				imgHtml += "<span class='thumDelBtn' id='imgIndex";
				imgHtml += imgIndex + "'>&times;</span>";
				imgHtml += "</article>";
				$("#thumNailImgs").append(imgHtml);
				imgIndex++;
			}
			reader.readAsDataURL(f);
		});
	});	
	
	$(document).on("click", ".thumDelBtn", function(imgIndex){
		uploadImgs.splice(imgIndex, 1);
		alert(uploadImgs);
		alert($("input[type='file']").val());
		let that = $(this);
		that.parent().remove();
	})
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
						html += "<article class='article' articleNum='" + img.articleNum + "'>";
						html += "<a href='read.msg?articleNum=" + img.articleNum + "'>";
						html += "<img src='./resources/uploadImgs/" + img.storedImgName + "'>";
						html += "</a>";
						html += "</article>";
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
	
	
	
	/* ********** 글 호버링 시 좋아요와 댓글개수 가져오기 ********** */
//	$(".article").on("mouseenter", function(){
//	동적으로 생성된 태그 -> append등을 이용한 태그는 아래와 같은 형식으로 사용해야 이벤트가 적용된다.
	$(document).on("mouseenter",".article",function(){
		let that = $(this);
		$.ajax({
			url : "/market/getInfo.msg",
			data : {
				articleNum : that.attr("articleNum")
			},
			success : function(data){
				let html = "";
				html += "<article class='articleOverlap'>";
				html += "<span id='likeNum'><img src='./resources/images/marketStaGram/dislikebtn.png'>" + data.likeNum + "개</span>";
				html += "<span id='commentNum'><img src='./resources/images/marketStaGram/commentbtn.png'>" + data.commentNum + "개</span>";
				html += "</article>";
				that.append(html);
			}
		})	
	});
	
	$(document).on("mouseleave",".article",function(){
		let that = $(this);
		that.children("article").remove();
	});

	$(document).on("click", ".articleOverlap", function(){
		let that = $(this);
		location.href = "./read.msg?articleNum=" + that.parent("article").attr("articleNum");
	});
	/* ********** 글 호버링 시 좋아요와 댓글개수 가져오기 ********** */
});