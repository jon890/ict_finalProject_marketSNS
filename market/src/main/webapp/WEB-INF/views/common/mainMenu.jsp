<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <link rel="stylesheet" href="./resources/css/common/mainMenu.css">
	   	<script src="./resources/js/mainMenu.js"></script>
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	
	<body>
	    <nav id="mainMenuNav">
	        <ul>
	            <li id="li01"><a href="./"><img src="./resources/images/menu/sitelogo.png" id="mainMenu_logo" width="250px"></a></li>
	            <li id="li02" class="mainMenu">
	                <a href="./main.mid">광주의 시장</a>
	                <div id="div01" class="subMenu">
	                    <ul class="ul" id="ul01">
	                        <li><a href="./main.mid">동구</a></li>
	                        <li><a href="./main.mid">서구</a></li>
	                        <li><a href="./main.mid">남구</a></li>
	                        <li><a href="./main.mid">북구</a></li>
	                        <li><a href="./main.mid">광산구</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li03" class="mainMenu">
	                <a href="./main.msg">#시장스타그램</a>
	                <div id="div02" class="subMenu">
	                    <ul class="ul" id="ul02">
	                        <li><a href="./main.msg">사진공유</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li04" class="mainMenu">
	                <a href="./market.compare?weekends=701">가격비교</a>
	                <div id="div03" class="subMenu">
	                    <ul class="ul" id="ul03">
	                        <li><a href="./mart.compare?weekends=701">대형마트</a></li>
	                        <li><a href="./market.compare?weekends=701">전통시장</a></li>
	                        <li><a href="./compare.compare?weekends=701">가격비교</a></li>
	                    </ul>
	                </div>
	            </li>
	            <li id="li05" class="mainMenu">
	                <a href="./notice.favorite?pageNum=1">페이보릿</a>
	                <div id="div04" class="subMenu">
	                    <ul class="ul" id="ul04">
	                        <li><a href="./notice.favorite?pageNum=1">공지사항</a></li>
	                        <li><a href="./hotPlace.favorite">핫플레이스</a></li>
	                        <li><a href="./festival.favorite">축제정보</a></li>
	                        <li><a href="./nightMarket.favorite">야시장정보</a></li>
	                        <li><a href="./help.favorite?pageNum=1">고객센터</a></li>
	                    </ul>
	                </div>
	            </li>
	            
				<c:if test="${id!=null}">
		 			<li id="li06">${id}님 환영합니다!</li>
		 			<li id="li07"><a href="./logout.main">로그아웃</a></li>
		 		</c:if>
		 
		 		<c:if test="${id==null}">
		 			<li id="li06"><a href="./login.main">로그인</a></li>
		 			<li id="li07"><a href="./register.main">회원가입</a></li>
		 		</c:if>  
	        </ul>
	    </nav>
	</body>
</html>