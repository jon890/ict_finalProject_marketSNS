<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 대인시장 먹을거리</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/store.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	
	<body>
		<div class="contents">
			<div class="web">
				<div class="table_list">
					<table>
						<colgroup>
							<col width="280px">
							<col width="500px">
							<col width="200px">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/순두부청년.JPG">
									<img class="storeimg" src="./resources/images/marketIntroduce/순두부청년.JPG" ></a>
								</td>
								<td class="left">
									<h3>순두부청년</h3>
									<span>순두부아이스크림<br></span>
									<span>구수한 두부 땟갈 좋은 아이스크림으로 돌아왔다.<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									순두부 아이스크림 3000원<br>
									토핑 아이스크림 3500원<br>(제주밀차, 초코, 건대추, 단호박, 자색고구마, 딸기)</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/1000냥장터국수.JPG">
									<img class="storeimg" src="./resources/images/marketIntroduce/1000냥장터국수.JPG" ></a>
								</td>
								<td class="left">
									<h3>1000냥 장터국수</h3>
									<span>장터국수,비빔국수,부추전,순대,떡볶이<br></span>
									<span>너무 저렴해서 미안해도 가게 되는 가성비 맛집<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									장터국수	1000원<br>
									비빔국수	2000원<br>
									부추전	2000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/불꼬챙이.JPG">
									<img class="storeimg" src="./resources/images/marketIntroduce/불꼬챙이.JPG" ></a>
								</td>
								<td class="left">
									<h3>불꼬챙이</h3>
									<span>삼둥이<br></span>
									<span>삼겹살과 야채, 소스, 불 맛있을 수 밖에 없는 조합<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									삼뚱이 5000원<br>
									(매운맛, 순한맛)<br>
									치즈토핑 추가 1000원</span>
								</td>
								<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/영광식당.jpg">
									<img class="storeimg" src="./resources/images/marketIntroduce/영광식당.jpg" ></a>
								</td>
								<td class="left">
									<h3>영광식당</h3>
									<span>국밥,국수, 서비스 모둠순대<br></span>
									<span>시장의 정을 느낄 수 있는 국밥집</span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									국밥 보통	6000원<br>
									국밥 특	7000원<br>
									국수		5000원</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
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
