<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따~ 시장 - 로그인</title>
	    <link rel="stylesheet" href="./resources/css/common/login.css">
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">	
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="./resources/js/login.js"></script>
	    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
	    <script>
	    $(document).ready(function(){
	    	$("#registerBtn").on("click", function(){
	    		$(location).attr('href', './register.main');
	    	});
	    });
	    </script>
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
	                <input type="text" class="form-control" id="inputId" placeholder="아이디를 입력해주세요" required>
	                <input type="password" class="form-control" id="inputPwd" placeholder="비밀번호를 입력해주세요" required>
		            <input type="submit" value="로그인" id="loginBtn" class="btn btn-secondary">
		            <p id="msg"></p>
		        </div>
		        
		        <div id="loginBtns">
		        	<input type="button" value="회원가입" id="registerBtn" class="btn btn-outline-secondary">
		        	<br>
		        	<a id="custom-login-btn" href="javascript:loginWithKakao()"><img src="./resources/images/menu/kakao_account_login_btn_medium_narrow_ov.png"></a>
		        </div>
		    </div>
	    </section>
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	    
	    <script type="text/javascript">
	    	Kakao.init("069834a58b5e1ea06acc8264b9047a04");
	    	function loginWithKakao(){
	    		Kakao.Auth.login({
	    			success : function(authObj){
	    				Kakao.API.request({
	    				url : "/v1/user/me",
	    				success : function(res){
	    					let kakaoData = JSON.stringify(res);
		    				// 카카오에서 받은 데이터로 로그인하기
		    				$.ajax({
	    						url : "/market/loginWithKakao.main",
	    						type : "post",
	    						dataType :"json",
			    				data : {
			    					id : res.id,
			    					nickName : res.properties.nickname,
			    					profileImg : res.properties.profile_image
			    				},
			    				success : function(data){
			    					if(data.resultCode == "loginSuccess"){
			    						alert(data.id + "님 안녕하세요!");
			    						location.href = data.backUri;
			    					} else {
			    						alert("카카오 로그인에서 오류가 발생했습니다! 관리자에게 문의하세요");
			    					}
			    				}
		    				});
		    				// 카카오에서 받은 데이터로 로그인하기
	    				},
	    				fail : function(err){
	    					$("#msg").append(err);
	    				}
	    				});
	    			},
	    			fail : function(err){
	    				alert(JSON.stringfy(err));
	    			}
	    		});
	    	};
	    </script>
	</body>
</html>