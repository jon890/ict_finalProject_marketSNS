<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 양동시장 개요</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/history.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
	</head>
	
	<body>
		<div class="marketName">
			<h2>양동시장</h2>
		</div>
		<div class="marketImg">
			<a class="modal" href="resources/images/marketIntroduce/양동시장.jpg">
			<img src="resources/images/marketIntroduce/양동시장.jpg"></a>
		</div>
		<div class="marketSummary ">
			<table>
				<tr>
					<th class="marketTitle">주소</th>
					<td class="marketContent">광주광역시 서구 천변좌로238</td>
				</tr>
				<tr>
					<th class="marketTitle">전화</th>
					<td class="marketContent">062-366-0884</td>
				</tr>
				<tr>
					<th class="marketTitle">홈페이지</th>
					<td class="marketContent"><a href="https://yangdongmarket.modoo.at" target="_blank">https://yangdongmarket.modoo.at/</a></td>
				</tr>
				<tr>
					<th class="marketTitle">인기상품</th>
					<td class="marketContent">홍어,건어물,통닭,의류,가구,커텐 등</td>
				</tr>
				<tr>
					<th class="marketTitle">이용시간</th>
					<td class="marketContent">07:00 ~ 21:00</td>
				</tr>
				<tr>
					<th class="marketTitle">휴일</th>
					<td class="marketContent">첫째·셋째주 일요일(4월 ~ 9월)</td>
				</tr>
				<tr>
					<th class="marketTitle">주차시설</th>
					<td class="marketContent">446면/유료(30분당 700원,지상30분무료,지하90분무료)</td>
				</tr>
			</table>
			
		</div>
		
		<div class="market">
			<h3>기본정보</h3>
			<span>대인시장은 광주의 번화가에 자리하고 있으며 문화의 예술이 접목된 시장으로 유명하다. 비어 있던 점포에 예술작품이 전시되고 그를 기회로 예술이 동거하는 시장으로 거듭났다. 현재 예술가와 상인들이 함께 거주하는 공간이 되어 예술야시장 등을 개최하며 사람들의 발길을 끌고 있다.</span>
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