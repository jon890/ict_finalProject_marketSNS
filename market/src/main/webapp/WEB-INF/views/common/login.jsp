<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - 로그인</title>
	    <link rel="stylesheet" href="./resources/css/common/login.css">
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">	
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="./resources/js/login.js"></script>

	</head>
	
	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	            <img src="./resources/images/favorite/favorite_main.png">
	            <div class="transbox">
	                <p id="p01">로그인</p>
	                <p id="p02">로그인 하시면 다양한 서비스를 즐기실 수 있습니다</p>
	            </div>
        	</div>
        	  	
		    <div id="loginContainer">
		    	<p id="loginTitle">로그인</p><br>
		        <div id="loginDiv01">
	                <input type="text" id="inputId" placeholder="아이디를 입력해주세요..." required>
	                <input type="password" id="inputPwd" placeholder="비밀번호를 입력해주세요..." required>
		            <input type="submit" value="로그인" id="loginBtn">
		            <p id="msg"></p>
		        </div>
		        
		        <div id="loginBtns">
		        	<a href="register.main">회원가입</a>
		        </div>
		    </div>
		    
	    </section>
	    
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	</body>
</html>