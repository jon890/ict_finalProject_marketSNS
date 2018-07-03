<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 로그인</title>
	    <link rel="stylesheet" href="./resources/css/common/login.css">
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	</head>
	
	<body>
		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
		
		<section>
			<div class="background">
	            <img src="./resources/images/favorite/favorite_main.png" />
	            <div class="transbox">
	                <p id="p01">로그인</p>
	                <p id="p02">로그인 하시면 다양한 서비스를 즐기실 수 있습니다</p>
	            </div>
        	</div>
        	
        	<br>
		    <div id="loginContainer">
		        <br><p id="loginTitle">로그인</p><br>
		        
		        <div id="loginDiv01">
		        	
		        	<form action="./login.main" method="post">
		        
			            <div id="loginDiv02">
			                <input type="text" name="id" placeholder="아이디">
			                <div class="clear"></div>
			                <input type="password" name="password" placeholder="비밀번호">
			            </div>
			            
			            <input type="submit" value="로그인">
			            <div class="clear"></div>
		            </form>
		            
		        </div>
		        
		    </div>
	    </section>
	    
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
	 		<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	    
	</body>
</html>