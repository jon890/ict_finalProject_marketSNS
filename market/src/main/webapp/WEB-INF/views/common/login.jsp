<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 로그인</title>
	    <link rel="stylesheet" href="./resources/css/common/login.css">
	</head>
	
	<body>
	
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
	    
	</body>
</html>