<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 양동시장 먹을거리</title>
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
									<a class="modal" href="./resources/images/marketIntroduce/수일통닭.JPG">
									<img class="storeimg" src="./resources/images/marketIntroduce/수일통닭.JPG" ></a>
								</td>
								<td class="left">
									<h3>수일통닭</h3>
									<span>후라이드, 양념, 반반<br></span>
									<span>양동 닭전시장의 양대산맥~!<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									후라이드 18000원<br>
									양	념 19000원<br>
									반반치킨 19000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/영창식당.jpg">
									<img class="storeimg" src="./resources/images/marketIntroduce/영창식당.jpg" ></a>
								</td>
								<td class="left">
									<h3><b>-주요메뉴-</b></h3>
									<span>불고기백반<br></span>
									<span>한결 같은 가격 6천원에 불고기 백반을 선사합니다.<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									불고기백반	6000원<br>
									삼겹살	9000원 <br>
									대지주물럭	9000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/곰베우동.jpg">
									<img class="storeimg" src="./resources/images/marketIntroduce/곰베우동.jpg"></a>
								</td>
								<td class="left">
									<h3>곰베우동</h3>
									<span>우동, 알밥 등<br></span>
									<span>직접 우려낸 소스와 육수로 맛을 낸 우동집, 알밥도 유명한 곳입니다.<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									우동		4000원<br>
									철판볶음밥 5000원<br>
									알밥 		6000원</span>
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