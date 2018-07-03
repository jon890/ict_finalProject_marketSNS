<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
		<title>OOO - #시장스타그램 글 읽기</title>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
		<link rel="stylesheet" href="./resources/css/marketStaGram/msgContent.css">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	</head>
	
	
	<body>
	
		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
		
		<section>
		
			<div class="background">
	            <img src="./resources/images/favorite/favorite_main.png">
	            <div class="transbox">
	                <p id="marketStagramTitle01">#시장스타그램</p>
	                <p id="marketStagramTitle02">광주 전통시장의 사진을 공유해보세요</p>
	            </div>
        	</div>
        	
			<article id="contents">
			
				<div id="imgs">
					<!-- 부트스트랩 테마 적용 -->
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">		
						<div class="carousel-inner">
							<!-- 대표 이미지 -->
							<div class="carousel-item active">
								<img class="d-block w-100" src="./resources/uploadImgs/${imgs[0]}">
							</div>
							<!-- 나머지 이미지 -->
							<c:forEach var="img" items="${imgs}" begin="1">
								<div class="carousel-item">
									<img class="d-block w-100" src="./resources/uploadImgs/${img}">
								</div>
							</c:forEach>
						</div>
							
						<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">이전</span>
						</a>
						
						<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">다음</span>
						</a>
					</div>
					<!-- 부트스트랩 테마 적용 -->
				</div>
				
				<div id="snsArticle">
					<span id="snsArticleId">
						<img src="./resources/images/marketStaGram/profile.png" width=40px height=40px>
						<span class="writerId">${snsArticle.id}</span>
					</span>
					<hr>
					<div id="snsArticleContent">
						<span class="writerId">${snsArticle.id}</span>
						<span>${snsArticle.content}</span></div>
						
					<div>
						<div id="showComment"></div>
						<input type="hidden" id="commPageNum" value="1">
					</div>
					
					<hr>
					<div id="snsArticleBtns">
						<input type="image" id="likebtn" src="./resources/images/marketStaGram/likebtn.png">	
						<input type="image" id="commentbtn" src="./resources/images/marketStaGram/commentbtn.png">
					</div>
					<div>좋아요수 : ${snsArticle.likeNum}</div>
					<div>글쓴날짜 : ${snsArticle.writeDate}</div>
					<hr>	
					<div><textarea cols="40" placeholder="댓글 달기..." name="commentContent" id="commentContent"></textarea></div>
					
					<div id="snsArticleBtns2">
						<c:if test="${id != null}">
							<c:if test="${id == snsArticle.id}">
								<input type="button" value="글 수정" onclick="document.location.href='/market/update.msg?articleNum=${snsArticle.articleNum}'">
								<input type="button" value="글 삭제" onclick="document.location.href='/market/delete.msg?articleNum=${snsArticle.articleNum}'">
							</c:if>
								
							<c:if test="${id != snsArticle.id}">
								<input type="button" value="글 수정" disabled="disabled">
								<input type="button" value="글 삭제" disabled="disabled">
							</c:if>
						</c:if>
		
						<c:if test="${id == null}">
							<input type="button" value="수정하기" disabled="disabled">
							<input type="button" value="삭제하기" disabled="disabled">
						</c:if>
						<input type="button" value="목록으로" onclick="document.location.href='/market/main.msg?'">
					</div>
					
				</div>
			</article>
		</section>
		
		<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
		
		
		
		<script>
		
			$(document).ready(function(event){
				getComment(1, event);
			});
			
			$.ajaxSetup({
				type : "POST",
				async : true,
				dataType : "json",
				error : function(xhr){
					alert("오류가 발생했습니다! 에러코드 =  " + xhr.statusText);
				}
			});

		
			$("#commentbtn").on("click", function(event){
				// 댓글내용을 입력하지 않으면 댓글쓰는 칸으로 포커스 주기
				if($("#commentContent").val() == ""){
					$("#commentContent").focus();
				}
				else{
					$.ajax({
						url : "/market/commentWrite.msg",
						data : {
							commentContent : $("#commentContent").val(),
							articleNum : "${snsArticle.articleNum}"
						},
						
						success : function(data){
							if(data.result == 1){
								$("#commentContent").val("");
								showHtml(data.commentList, 1);
							}
						}
					});	
				}
			});
			
			function showHtml(data, commPageNum){
				let html = "<div class='comments'>";
				
				$.each(data, function(index, comment){
					html += "<span class='commentId'>" + comment.id + "</span>";
					html += "<span class='commentContent'>" + comment.commentContent + "</span>";
					html += "<span class='commentDate'>" + comment.commentDate + "</span><br>";
				});
				
				html += "</div>";
				commPageNum = parseInt(commPageNum);
				
				if("${snsArticle.commentCount}" > commPageNum * 10){
					nextPageNum = commPageNum + 1;
					html += "<br> <input type='button' id='nextComments' onclick='getComment(nextPageNum, event)' value='다음 댓글 보기...'>"
				}
				$("#showComment").html(html);
				$("#commentContent").val("");
			}
			
			
			function getComment(commPageNum, event){
				$.ajax({
					url : "/market/commentRead.msg",
					data : {
						articleNum : "${snsArticle.articleNum}",
						commentRow : commPageNum * 10
					},
					success : function(data){
						showHtml(data, commPageNum);
					}
				});
			}


			$("#likebtn").on("click", function(event){
				$("#snsArticleForm").attr("action", "./like.msg");			
			});
		
		</script>
		
 
	</body>
</html>