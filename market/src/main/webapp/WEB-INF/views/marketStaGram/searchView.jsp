<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - #시장스타그램 검색</title>   
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="./resources/js/marketStaGram/marketStaGram.js"></script>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/marketStaGram/marketStaGram.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    
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
			});
		</script>
	</body>
</html>