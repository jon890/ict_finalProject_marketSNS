<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 페이보릿</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
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
	
	        #p01{
	            font-size:50px;
	        }
	
	        #p02{
	            font-size:20px;
	        }
	
	        .nav-item{
	            width:20%;
	            text-align:center;
	            font-size:20px;
	            font-weight:bold;
	        }
	
	        .nav-link{
	            color:black;
	        }
	        
	        iframe{
	        	border : none;
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
		            <p id="p01"><ins>Favorite</ins></p>
		            <p id="p02">광주전통시장의 문화정보를 제공해 드립니다</p>
		        </div>
		    </div>
		    <br>
		    <div class="container">
		        <!--<p>Favorite</p>
		        <!-- Nav pills -->
		        <ul class="nav nav-pills" role="tablist">
		            <li class="nav-item">
		                <a class="nav-link active" data-toggle="pill" href="#home">공지사항</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" data-toggle="pill" href="#menu1">핫플레이스</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" data-toggle="pill" href="#menu2">축제정보</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" data-toggle="pill" href="#menu3">야시장정보</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" data-toggle="pill" href="#menu4">고객센터</a>
		            </li>
		        </ul>
		
		        <!-- Tab panes -->
		        <div class="tab-content">
		            <div id="home" class="container tab-pane active">
		                <br>
		                <iframe src="notice.favorite" width="100%" height="1080px"></iframe>
		            </div>
		            <div id="menu1" class="container tab-pane fade">
		                <br>
		                <h3>핫플레이스</h3>
		                <p>TEST1</p>
		            </div>
		            <div id="menu2" class="container tab-pane fade">
		                <br>
		                <h3>축제정보</h3>
		                <p>TEST1</p>
		            </div>
		            <div id="menu3" class="container tab-pane fade">
		                <br>
		                <h3>야시장정보</h3>
		                <p>TEST1</p>
		            </div>
		            <div id="menu4" class="container tab-pane fade">
		                <br>
		                <h3>고객센터</h3>
		                <p>TEST1</p>
		                <iframe src="notice.html" width="100%" height="1080px"></iframe>
		            </div>
		        </div>
		    </div>
		</section>
	    
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
</html>