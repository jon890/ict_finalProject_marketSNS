$(document).ready(function(){	
	
	$("#loginBtn").click(function(){
		$.loginFunc();
	});
	
	$("#inputPwd").keydown(function(event){
		if(event.keyCode == 13){
			$.loginFunc();
		}
	});
	
	$.loginFunc = function(){
		
		if( $("#inputId").val() == ""){
			$("#msg").html("아이디를 입력하세요");
			$("#inputId").focus();
		} else if( $("#inputPwd").val() == ""){
			$("#msg").html("비밀번호를 입력하세요");
			$("#inputPwd").focus();
		} else {
			$.ajax({
				url : "/market/login.main",
				type : "POST",
				data : {
					id : $("#inputId").val(),
					password : $("#inputPwd").val()
				},
				success : function(data){
					if(data == "idError"){
						$("#msg").html("해당하는 회원을 찾을 수 없습니다.");
					} else if(data == "pwdError"){
						$("#msg").html("비밀번호가 다릅니다.");
					} else if(data == "success"){
						//history.back();
					} else {
						alert("서버 오류가 발생했습니다.");
					}
				}
			});
		}
	}
});