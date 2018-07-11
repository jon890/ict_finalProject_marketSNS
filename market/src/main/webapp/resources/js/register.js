$(document).ready(function () {
	/* ********** 유효성 검사 ********** */
    $("input:text[name='id']").keyup(function (event) {
        var idCheck = $(this).val();
        $(this).val(idCheck.replace(/[^a-z0-9]*$/, ''));
    });

    $("#pwdChk").keyup(function (event) {
        if ($("input:password[name='password']").val() != $("#pwdChk").val()) {
            $("span[id=password_check]").text('');
            $("span[id=password_check]").html("비밀번호가 다릅니다");
            $("#pwdChk").css("border","solid red");
        } else {
            $("span[id=password_check").text('');
            $("span[id=password_check").html("비밀번호가 일치합니다!");
            $("#pwdChk").css("border","solid 1px gray");
        }
    });

    $("input:text[name='name']").keyup(function (event) {
        var nameCheck = $(this).val();
        $(this).val(nameCheck.replace(/^[a-zA-Z0-9`~!@#$%^&*()-_+={}[\]\|;:'",./<>?]/, ''));
    });

    $("input[type=number]").keydown(function (event) {
        var ageCheck = $(this).val();
        $(this).val(ageCheck.replace(/^[0-9]+[0-9]/, ''));
        if (ageCheck < 0 || ageCheck > 99) {
            $(this).val() == '';
        }
    });
    /* ********** 유효성 검사 ********** */
    
    /* ********** 아이디 중복 체크 ********** */
    $.ajaxSetup({
    	type : "POST",
    	async : true,
    	dataType : "json",
    	error : function(xhr){
    		alert("error html = " + xhr.statusText);
    	}
    });
    
	function idCheck(){
		if($("input[name=id]").val().length != 0){
    		$.ajax({
                url : "./registerIdCheck.main",
                data : {
                    id : $("input[name=id]").val()
                },
                success : function(result){
                    if(result == 1){
                    	$("input[name=id]").css("border","solid 1px gray");
                    	$("span[id=id_check]").html("사용 가능한 아이디입니다");
                    	return true;
                    }
                    else{
                    	$("input[name=id]").css("border","solid red");
                    	$("span[id=id_check]").html("사용할 수 없는 아이디입니다");
                    	$("input[name=id]").val("");
                    	return false;
                    }
                }
            });
		}
		else{
			$("input[name=id]").css("border","solid red");
        	$("span[id=id_check]").html("아이디를 입력해주세요");
        	return false;
		}	//공백도 확인!
	}
	/* ********** 아이디 중복 체크 ********** */
	
    	
	function pwdCheck(){
		if($("input:password[name='password']").val() != $("#pwdChk").val()){
			return false;
		} else if($("input:password[name='password']").val() == null){
			return false;
		} else{
			return true;
		}
	}
	
	$("#idCheck").on("click", function(){
		idCheck();
	});
    
    $("input[type=submit]").on("click", function(){
    	if(idCheck()){
    		return true;
    	}
    	if(!pwdCheck()){
    		alert("비밀번호를 다시 확인해주세요!")
    		return false;
    	}
    	alert($("input[name=id]").val() + "님 회원가입에 성공하셨습니다!")
    });
});