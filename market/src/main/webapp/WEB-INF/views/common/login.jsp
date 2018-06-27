<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>login</title>
	    <link rel="stylesheet" href="./resources/css/login.css">
	</head>
	
	<body>
	
	    <div id="div01">
	        <br><p id="p">로그인</p><br>
	        
	        <div id="div02">
	        	
	        	<form action="./login.main" method="post">
	        
		            <div id="div03">
		                <input type="text" class="input" name="id" placeholder="아이디">
		                <div id="clear"></div>
		                <input type="password" class="input" name="password" placeholder="비밀번호">
		            </div>
		            
		            <input type="submit" value="로그인" id="submit">
		            <div id="clear"></div>
	            
	            </form>
	            
	        </div>
	        
	    </div>
	    
	</body>
</html>