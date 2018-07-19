<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따~ 시장 - #시장스타그램 검색</title>   
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    <link rel="stylesheet" href="./resources/css/marketStaGram/marketStaGram.css">

	    <style>
	    	#searchTitle{
	    		margin : 0 auto;
	    		font-family : NanumSquareRoundB;
	    		text-align : center;
	    	}
			#searchTitle p{
				font-size : 40px;
			}
			#backBtn{
			    width : 145px;
			    height : 45px;
			    background : gray;
			    color : white;
			    font-weight : bold;
			    border-radius : 3px;
			    border : 1px solid rgb(0,77,0);
			    cursor : pointer;
			}
			
			#keyword{
				color : green;
			}
	    </style>
	</head>
	
	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
		
		    <div class="background">
	            <img src="./resources/images/marketStaGram/background.png">
	            <div class="transbox">
	                <p id="p01">#시장스타그램</p>
	                <p id="p02">광주 전통시장의 사진을 공유해보세요</p>
	            </div>
        	</div>
        	
        	<div id="searchTitle">
        		<p><span id="keyword">${keyword}</span>에 대한 검색결과 입니다</p>
        		<input type="button" id="backBtn" value="뒤로 돌아가기">
        	</div>
        	
		    <div id="articles">
			    <c:forEach var="img" items="${imgList}">
			    	<article class="article" articleNum="${img.articleNum}">
			    		<a href="read.msg?articleNum=${img.articleNum}"><img src="./resources/uploadImgs/${img.storedImgName}"></a>					
			    	</article>
			    </c:forEach>   
		    </div> 
		</section>
		
		<script>
			$(document).ready(function(){
				$("#backBtn").click(function(){
					history.back();
				});
				
				/* $(document).scroll(function(){
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
				}); */

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
				});
			});
		</script>
	</body>
</html>