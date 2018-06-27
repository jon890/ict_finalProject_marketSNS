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
	    
	
	    <style>
	        div.background {
	            background: url(./resources/images/favorite/favorite_main.png) repeat;
	            border: 2px solid black;
	            height:300px;
	            opacity:0.7;
	        }
	
	        div.transbox {
	            margin: 30px;
	            background-color: #ffffff;
	            border: 1px solid black;
	            opacity: 0.7;
	            filter: alpha(opacity=60); /* For IE8 and earlier */
	        }
	
	        div.transbox p {
	            margin: 3%;
	            font-weight: bold;
	            color: #000000;
	            text-align:center;
	        }
	    </style>
	</head>
	
	<body>
		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
		
		<section>
		    <div class="background">
		        <div class="transbox">
		            <p id="p01"><ins>마켓스타그램</ins></p>
		            <p id="p02">광주 전통시장 사진을 공유해보세요</p>
		        </div>
		    </div>
		    
		    <article>
		    </article>
		    
		    <article>
		    </article>
		    
		</section>
	    
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
</html>