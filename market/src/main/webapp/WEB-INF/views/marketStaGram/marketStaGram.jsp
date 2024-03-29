<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따~ 시장 - #시장스타그램</title>   
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
   	    <link rel="stylesheet" href="./resources/css/common/common.css">
   	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
   	    <link rel="stylesheet" href="./resources/css/marketStaGram/marketStaGram.css">
	    <script src="./resources/js/marketStaGram/marketStaGram.js"></script>
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
        	
        	<div id="btnDiv">
       			<span id="keywordBox"><input type="text" id="keyword" placeholder="# 해쉬태그를 이용하여 검색"></span>
       			<a id="searchBtn"><img src="./resources/images/marketStaGram/searchbtn.png"></a>
        		<c:if test="${id != null}">
	        		<input type="button" value="글쓰기" id="writeBtn">	
        		</c:if>
        		<c:if test="${id == null}">
	        		<a href="./login.main">비 회원은 글을 쓸 수 없습니다</a> 	
        		</c:if>
        	</div>
        	 
        	 <div id="writeFormModal" class="modal">
        	 	<form action="./write.msg" method="post" enctype="multipart/form-data">
        	 
	        	 	<div class="modal-content">
	        	 		<!-- X버튼을 눌러서 닫기 버튼 만들기 -->
	        	 		<span class="close">&times;</span>
	        	 		
	        	 		<div id="writeForm">
	        	 			<p>게시물 작성</p>
	        	 			<textarea rows="10" cols="100" name="content" id="content"></textarea>
	        	 		</div>
	        	 		<div id="thumNailImgs">
	        	 			<p>미리보기 이미지</p>
	        	 		</div>
	        	 		
	        	 		<div id="writeBtns">
	       	 				<input type="hidden" name="id" value="${id}">
	       	 				<input type="button" id="writeFormReset" value="초기화">
	        	 			<input type="file" name="imgname" id="uploadImgs" multiple>
	        	 			<img src="./resources/images/marketStaGram/uploadbtn.png" id="uploadbtn">
	        	 			<input type="submit" id="submitBtn" value="게시">
	        	 		</div>
	        	 	</div>
	        	 	
				</form>
        	 </div>
		    
		    <div id="articles">

			    <c:forEach var="img" items="${imgList}">
			    	<article class="article" articleNum="${img.articleNum}">
			    		<a href="read.msg?articleNum=${img.articleNum}"><img src="./resources/uploadImgs/${img.storedImgName}"></a>					
			    	</article>
			    </c:forEach>   
		    </div>
		</section>
	</body>
</html>