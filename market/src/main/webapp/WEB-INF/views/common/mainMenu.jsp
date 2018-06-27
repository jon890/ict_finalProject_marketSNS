<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>mainMenu</title>
	    <link rel="stylesheet" href="./resources/css/mainMenu.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	    <script src="./resources/js/mainMenu.js"></script>
	</head>
	
	
	<body>
	    <nav id="mainMenuNav">
	        <ul>
	            <li id="li01" class="mainMenu"><a href="#"><img src="./resources/images/mainMenu_logo.png" id="mainMenu_logo"></a></li>
	            <li id="li02" class="mainMenu">
	                <a href="#">광주의 시장</a>
	                <div id="div01" class="subMenuMenu">
	                    <ul class="ul">
	                        <li><a href="#">동구</a></li>
	                        <li><a href="#">서구</a></li>
	                        <li><a href="#">남구</a></li>
	                        <li><a href="#">북구</a></li>
	                        <li><a href="#">광산구</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li03" class="mainMenu">
	                <a href="#">시장스타그램</a>
	                <div id="div02" class="subMenu">
	                    <ul class="ul">
	                        <li><a href="#">사진공유</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li04" class="mainMenu">
	                <a href="#">가격비교</a>
	                <div id="div03" class="subMenu">
	                    <ul class="ul">
	                        <li><a href="#">대형마트</a></li>
	                        <li><a href="#">전통시장</a></li>
	                        <li><a href="#">가격비교</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li05" class="mainMenu">
	                <a href="#">페이보릿</a>
	                <div id="div04" class="subMenu">
	                    <ul class="ul">
	                        <li><a href="#">공지사항</a></li>
	                        <li><a href="#">핫플레이스</a></li>
	                        <li><a href="#">축제정보</a></li>
	                        <li><a href="#">야시장정보</a></li>
	                        <li><a href="#">고객센터</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li06" class="mainMenu"><a href="./login.main">로그인</a></li>
	        </ul>
	    </nav>
	</body>
</html>