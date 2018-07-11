<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <link rel="stylesheet" href="./resources/css/common/mainFooter.css">    
	</head>
	
	<body>
        <img src="./resources/images/menu/sitelogo.png" id="mainFooter_logo" width="300px">
        <select onchange="javascript:handleSelect(this)">
            <option>바로가기</option>
            <option value="http://www.gwangju.go.kr/">광주광역시청</option>
            <option value="http://www.donggu.kr/">광주동구청</option>
            <option value="http://www.seogu.gwangju.kr/">광주서구청</option>
            <option value="https://www.namgu.gwangju.kr/">광주남구청</option>
            <option value="http://www.bukgu.gwangju.kr/">광주북구청</option>
            <option value="http://www.gwangsan.go.kr/">광주광산구청</option>
        </select>
        <h4 class="footerCont">자바기반 금융 SW 및 보안개발자 양성과정 9기</h4>
        <h4 class="footerCont">Copyright © 3조 프로마켓러 All Rights Reserved.</h4>
		<script>
			function handleSelect(optionItem) {
			    window.open("_blank").location = optionItem.value;
			}
	    </script>
	</body>
</html>