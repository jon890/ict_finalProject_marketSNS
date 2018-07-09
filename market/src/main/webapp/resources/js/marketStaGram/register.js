$(document).ready(function () {
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
});