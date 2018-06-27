<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 회원가입</title>
	    <link rel="stylesheet" href="./resources/css/common/register.css">
	</head>
	
	<body>
		<div id="regContainer">
			<p id="regTitle">회원가입</p>
				<form action="./register.main" method="post">
					<div id="regNotNull">
						<p id="notNullTitle">아래 항목은 필수사항입니다!<p>
						<p class="input">아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요">
								  <input type="button" value="아이디 중복확인"></p>
						
						<p class="input">비밀 번호 : <input type="password" name="password" placeholder="비밀번호를 입력하세요"></p>
						<p class="input">비밀 번호 확인 : <input type="password" placeholder="비밀번호를 다시 입력하세요"></p>
					</div>
					
					<div id="regOptional">
						<p id="optionalTitle">다음의 항목은 선택사항입니다.<p>
						<p class="input">이름 : <input type="text" name="name" placeholder="이름을 입력하세요"></p>
						<p class="input">나이 : <input type="number" name="age" placeholder="나이를 입력하세요"></p>
						<p class="input">성별 : <input type="radio" name="gender" value="남">남
								 <input type="radio" name="gender" value="여">여</p>	
					</div>
					 
					<div id="regBtns">
						<input type="submit" value="회원가입">
						<input type="reset" value="초기화">
					</div>
				</form>  
	  	</div>    
	</body>
</html>