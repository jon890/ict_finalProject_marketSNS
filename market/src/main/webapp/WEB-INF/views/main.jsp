<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="resources/css/mainMenu.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    
    <script>
        $(document).ready(function(){
            $("#li01").mouseover(function(){
                $("#div01").css("display", "block");
                $("#div02").css("display", "block");
                $("#div03").css("display", "block");
                $("#div04").css("display", "block");
            });

            $("#li01").mouseout(function(){
                $("#div01").css("display", "none");
                $("#div02").css("display", "none");
                $("#div03").css("display", "none");
                $("#div04").css("display", "none");  
            });
        });
    </script>
</head>
<body>
    <nav>
        <ul>
            <li id="li01"><a href="#"><img src="resources/images/mainMenu_logo.png"></a></li>
            <li id="li02">
                <a href="#">광주의 시장</a>
                <div id="div01">
                    <ul class="ul">
                        <li><a href="#">동구</a></li>
                        <li><a href="#">서구</a></li>
                        <li><a href="#">남구</a></li>
                        <li><a href="#">북구</a></li>
                        <li><a href="#">광산구</a></li>
                    </ul>
                </div>
            </li>
            <li id="li03">
                <a href="#">시장스타그램</a>
                <div id="div02">
                    <ul class="ul">
                        <li><a href="#">사진공유</a></li>
                    </ul>
                </div>
            </li>
            <li id="li04">
                <a href="#">가격비교</a>
                <div id="div03">
                    <ul class="ul">
                        <li><a href="#">대형마트</a></li>
                        <li><a href="#">전통시장</a></li>
                        <li><a href="#">가격비교</a></li>
                    </ul>
                </div>
            </li>
            <li id="li05">
                <a href="#">페이보릿</a>
                <div id="div04">
                    <ul class="ul">
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">핫플레이스</a></li>
                        <li><a href="#">축제정보</a></li>
                        <li><a href="#">야시장정보</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                </div>
            </li>
            <li id="li06"><a href="#">로그인</a></li>
        </ul>
    </nav>

</body>
</html>