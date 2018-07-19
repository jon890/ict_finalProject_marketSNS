<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="./resources/css/marketIntroduce/history.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
		<title>아따시장 - 대인시장 개요</title>
	</head>
	
	<body>
	
		<div class="marketName">
			<h2>대인시장</h2>
		</div>
		
		<div class="marketImg">
			<a class="modal" href="resources/images/marketIntroduce/대인시장.jpg">
			<img src="resources/images/marketIntroduce/대인시장.jpg"></a>
		</div>
		
		<div class="marketSummary ">
			<table>
				<tr>
					<th class="marketTitle">주소</th>
					<td class="marketContent">광주광역시 동구 제봉로194번길 7-1</td>
				</tr>
				<tr>
					<th class="marketTitle">전화</th>
					<td class="marketContent">062-223-3001</td>
				</tr>
				<tr>
					<th class="marketTitle">홈페이지</th>
					<td class="marketContent"><a href="https://daeinmarket.modoo.at" target="_blank">https://daeinmarket.modoo.at/</a></td>
				</tr>
				<tr>
					<th class="marketTitle">인기상품</th>
					<td class="marketContent">제사용품, 폐백음식, 수산물</td>
				</tr>
				<tr>
					<th class="marketTitle">이용시간</th>
					<td class="marketContent">08:00 ~ 20:00 / 예술시장운영 토요일 19~23시</td>
				</tr>
				<tr>
					<th class="marketTitle">휴일</th>
					<td class="marketContent">첫째·셋째주 일요일</td>
				</tr>
				<tr>
					<th class="marketTitle">주차시설</th>
					<td class="marketContent">62면/유료(30분당 500원,상가이용시 1시간 무료쿠폰)</td>
				</tr>
			</table>
		</div>
		
		<div class="market">
			<h3>기본정보</h3>
			<span>대인시장은 광주의 번화가에 자리하고 있으며 문화와 예술이 접목된 시장으로 유명하다. 
			비어 있던 점포에 예술작품이 전시되고 그를 기회로 예술이 동거하는 시장으로 거듭났다.
			현재 예술가와 상인들이 함께 거주하는 공간이 되어 예술야시장 등을 개최하며 사람들의 발길을 끌고 있다.</span>
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