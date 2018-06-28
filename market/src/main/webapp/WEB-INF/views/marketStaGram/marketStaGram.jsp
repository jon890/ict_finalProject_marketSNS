<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 마켓스타그램</title>
	    
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/marketStaGram/marketStaGram.css">
	    <script src="./resources/js/marketStaGram/marketStaGram.js"></script>
	    
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
        	
        	 <div id="writeBtnDiv">
        	 	<input type="button" value="글쓰기" id="writeBtn">
        	 </div>
        	 
        	 <div id="writeFormModal" class="modal">
        	 	<form action="./write.msg" method="post" enctype="multipart/form-data">
        	 
	        	 	<div class="modal-content">
	        	 		<!-- X버튼을 눌러서 닫기 버튼 만들기 -->
	        	 		<span class="close">&times;</span>
	        	 		
	        	 		<div id="writeForm">
	        	 			<p>게시물 작성</p>
	        	 			<textarea rows="10" cols="110" name="content"></textarea>
	        	 		</div>
	        	 		<div id="thumNailImgs">
	        	 			<p>미리보기 이미지</p>
	        	 		</div>
	        	 		
	        	 		<div id="writeBtns">
	       	 				<input type="hidden" name="id" value="${id}">
	        	 			<input type="file" name="imgname" id="uploadImgs" multiple>
	        	 			<img src="./resources/images/marketStaGram/uploadbtn.png" id="uploadbtn">
	        	 			<input type="submit" value="게시">
	        	 		</div>
	        	 	</div>
	        	 	
				</form>
        	 </div>
		    
		    <div id="articles">
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/aa.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/bb.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/cc.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/dd.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/ee.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/ff.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/gg.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/hh.jpg">
			    </article>
			    
			    <article class="article">
			    	<img src="./resources/images/marketStaGram/ii.jpg">
			    </article>
		    </div> 
		</section>
	</body>
</html>