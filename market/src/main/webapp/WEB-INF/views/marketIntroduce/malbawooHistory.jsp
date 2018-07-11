<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 말바우시장 개요</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/history.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
	</head>
	
	
	<body>
		<div class="marketName">
			<h2>말바우시장</h2>
		</div>
		<div class="marketImg">
			<a class="modal" href="resources/images/marketIntroduce/말바우시장.jpg">
			<img src="resources/images/marketIntroduce/말바우시장.jpg"></a>
		</div>
		<div class="marketSummary ">
			<table>
				<tr>
					<th class="marketTitle">주소</th>
					<td class="marketContent">광주광역시 북구 서방로81번길 27</td>
				</tr>
				<tr>
					<th class="marketTitle">전화</th>
					<td class="marketContent">062-262-4802</td>
				</tr>
				<tr>
					<th class="marketTitle">홈페이지</th>
					<td class="marketContent"><a href="https://malbawoomarket.modoo.at" target="_blank">https://malbawoomarket.modoo.at/</a></td>
				</tr>
				<tr>
					<th class="marketTitle">인기상품</th>
					<td class="marketContent">팥죽,생기름,들기름,한과,선물용과일,반찬가게</td>
				</tr>
				<tr>
					<th class="marketTitle">이용시간</th>
					<td class="marketContent">08:00 ~ 20:00</td>
				</tr>
				<tr>
					<th class="marketTitle">휴일</th>
					<td class="marketContent">없음</td>
				</tr>
				<tr>
					<th class="marketTitle">주차시설</th>
					<td class="marketContent">126면/유료(30분당 400원, 구매시 50%할인권)</td>
				</tr>
			</table>
			
		</div>
		<div class="market">
			<h3>기본정보</h3>
			<span>말바우는 김덕령 장군이 말을 훈련할 때 말이 어찌나 힘껏 바위 위로 발굽을 내디뎠던지 바위가 말 발굽모양으로 음푹 패였다고 해서 붙여진 이름이며, 주변에 시장이 형성되면서 말바우시장이라고 자연스럽게 불리어지게 되었다.<br>
			장날은 매월 2,4,7,9일에 서는 정기 시장으로, 담양, 곡성, 화순 등 주변 시골에서 농민들이 직접 재배한 생산품을 가지고 와서 물건을 파는 전통과 명성이 깊은 시장이다.</span>
		</div>
	</body>
	<script>
		$(function(){
			$("body").append("<div id='glayLayer'></div><div id='overLayer'></div>");
			
			$("#glaryLayer").click(function(){
				$(this).hide()
				$("#overLayer").hide();
			});
			
			$("#overLayer").click(function(){
				$(this).hide()
				$("#glayLayer").hide();
			});
			
			$("a.modal").click(function(){
				$("#glayLayer").show();
				$("#overLayer").show().html("<img src='"+$(this).attr("href")+"'/>");
				return false;
			});
			
		
		});
		</script>
</html>