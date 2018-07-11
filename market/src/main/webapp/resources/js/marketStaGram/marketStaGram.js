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
		writeFormReset();
	});

	$("#writeFormReset").click(function(){
		writeFormReset();
		$("#content").focus();
	});

	function writeFormReset(){
		$("#writeForm textarea").val("");
		$("#thumNailImgs").children("article").remove();
		$("#uploadImgs").remove();
		let recoverFileUpload = "<input type='file' name='imgname' id='uploadImgs' multiple>";
		$("#writeBtns").append(recoverFileUpload);
	}

//	$(window).click(function(event){
//	if(event.target != modal){
//	$(modal).css("display", "none");
//	}
//	});

	$(document).on("click", "#uploadbtn", function(e){
		e.preventDefault();
		$("input[type=file]").click();
	});

	let uploadImgs = [];

	$(document).on("change", "#uploadImgs", function(e){
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
		let that = $(this);
		that.parent().remove();
	});
	/* ********** 글쓰기 양식을 모달박스로 만들기 ********** */


	/* ********** 글쓰기 요청전 유효성 검사 ********** */
	$("#submitBtn").click(function(){
		if( $("#content").val() == "" ){
			$("#content").focus();
			return false;
		}

		if( $("input[type='file']").val() == "" ){
			alert("이미지를 업로드 해주세요!");
			return false;
		}
	});
	/* ********** 글쓰기 요청전 유효성 검사 ********** */


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
				html += "<span id='likeNum' title='좋아요'>";
				html += "<img src='./resources/images/marketStaGram/dislikebtn.png' title='좋아요'>" + data.likeNum + "개"
				html += "</span>";
				html += "<span id='commentNum' title='댓글'>";
				html += "<img src='./resources/images/marketStaGram/commentbtn.png' title='댓글'>" + data.commentNum + "개";
				html += "</span>";
				html += "</article>";
				that.append(html);
				//console.log("마우스 진입");
			}
		})	
	});

	$(document).on("click", ".articleOverlap", function(){
		let that = $(this);
		location.href = "./read.msg?articleNum=" + that.parent("article").attr("articleNum");
	});

	$(document).on("mouseleave",".article",function(){
		let that = $(this);
		that.children("article").remove();
		//console.log("마우스 나감");
	});
	/* ********** 글 호버링 시 좋아요와 댓글개수 가져오기 ********** */



	/* ********** 해쉬태그 검색 기능 ********** */
	$(document).on("click", "#searchBtn", function(){
		$.searchFunc();
	});

	$("#keyword").keydown(function(event){
		if(event.keyCode == 13){
			$.searchFunc();
		}
	});

	$.searchFunc = function(){
		let keyword = $("#keyword");
		if( $("#searchResult") != null ){
			$("#searchResult").children().remove();
			$("#searchResult").remove();
		}
		if(keyword.val() == ""){
			keyword.focus();
		} else if (keyword.val() == "#"){
			keyword.focus();
		} else {
			$.ajax({
				url : "/market/search.msg",
				data : {
					keyword : keyword.val()
				},
				dataType : "json",
				type : "GET",
				success : function(data){
					let html = "";

					if(data == ""){
						html += "<ul id='searchResult'>";
						html += "<li><span class=\"noResult\">검색결과가 없습니다!</span></li>";
						html += "</ul>";
						$("#keywordBox").append(html);
					} else {
						$.each(data, function(index, keywordInfo){
							html += "<ul id='searchResult'>";
							html += "<li><span class=\"keyword\">" + keywordInfo.keyword + "</span>"
							html += "<span class=\"keywordTotalCount\"> 게시물 수\t" + keywordInfo.keywordTotalCount + "</span></li>";
							html += "</ul>";
							$("#keywordBox").append(html);
						});
					}
				}
			});
		}
	};

	$(window).click(function(event){
		if(event.target != $("#searchResult")){
			$("#searchResult").remove();
		};

		$(document).on("click", ".keyword", function(){
			$.ajax({
				url : "/market/searchResult.msg",
				dataType : "json",
				traditional : true,
				data : {
					keyword : $(".keyword").html(),
				},
				success(searchResult){
					location.href = "./searchArticle.msg?articleNums=" + searchResult;
				}
			});
		});
		/* ********** 해쉬태그 검색 기능 ********** */
	});
});