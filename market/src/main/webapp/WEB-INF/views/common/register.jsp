<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - 회원가입</title>
	    <link rel="stylesheet" href="./resources/css/common/register.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="./resources/js/register.js"></script>
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
	                <p id="p01">회원가입</p>
	                <p id="p02">회원가입을 환영합니다</p>
	            </div>
        	</div>
        	
        	<br>
			<div id="regContainer">
				<p id="regTitle">회원가입</p>
					<form action="./register.main" method="post">
						<div id="regNotNull">
							<p id="notNullTitle">아래 항목은 필수사항입니다!<p>
							<p class="input">아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요" size="15" maxlength="15" autofocus required>
									  <input type="button" value="아이디 중복확인"></p>
							
							<p class="input">비밀 번호 : <input type="password" name="password" placeholder="비밀번호를 입력하세요" required></p>
							<p class="input">비밀 번호 확인 : <input type="password" placeholder="비밀번호를 다시 입력하세요" id="pwdChk" required>   
								<span id="password_check"></span>
							</p>
						</div>
						
						<div id="regOptional">
							<p id="optionalTitle">다음의 항목은 선택사항입니다.<p>
							<p class="input">이름 : <input type="text" name="name" placeholder="이름을 입력하세요" maxlength="5"></p>
							<p class="input">나이 : <input type="number" name="age" placeholder="나이를 입력하세요" min="1" max="99" value="20"></p>
							<p class="input">성별 : <input type="radio" name="gender" value="남">남
									 <input type="radio" name="gender" value="여">여</p>	
						</div>
						 
						<div id="regBtns">
							<input type="submit" value="회원가입">
							<input type="reset" value="초기화">
						</div>
					</form>  
		  	</div>
	  	</section>
	  	
	  	<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
	 		<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
</html>