<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 대인시장 볼거리</title>	
		<link rel="stylesheet" href="./resources/css/marketIntroduce/sightsee.css">	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<body>
	
		<div class="contents">
			<div class="web">
				<div class="table_list">
					<table>
						<colgroup>
							<col width="310px">
							<col width="310px">
							<col width="375px">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/동명동카페의거리.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/동명동카페의거리.jpg"></a>
								</td>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/동명동카페의거리2.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/동명동카페의거리2.jpg"></a>
								</td>
								<td>
										<h3>동명동 카페의 거리</h3>
										<span>동명동은 원래 광주의 부호들이 모여 사는 동네였다.
											그러나 아파트가 주거문화를 대체한 후 이사를 가는 집이 많아서 예전의 활기를 잃고 말았다.<br>
											그 후 학원들이 여기에 집중되면서 아이들 교육에 바쁜 엄마들을 위한 카페가 하나둘 생기기 시작했다.
											이 카페들이 점차 차별성을 확보하기 위해 외관,내부 인터레어, 음료의 맛을 추구하면서 다양한 카페들이 들어서기 시작했다.
											아시아문화전당이 완공되면서 젊은 층들이 카페를 중심으로 활동을 펼치면서 점차 카페 거리가 형성되어 독특한 풍취를 자랑하고 있다. </span>
								</td>
									
							</tr>
							<tr>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/지산유원지_리프트.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/지산유원지_리프트.jpg"></a>
								</td>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/지산유원지_모노레일.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/지산유원지_모노레일.jpg"></a>
								</td>
								<td>
										<h3>지산유원지</h3>
										<span>무등산 향로봉 기슭에 자리한 총 34만5천여 평의 유원지로 1978년에 문을 열었다.
									향로봉에는 전망대인 팔각정이 있어 시내 전체를 내려다볼 수 있으며, 전망대와 유원지에는 리프트카가 운행된다.<br>
									보트장 허니문카 골프 연습장을 비롯한 각종 스포츠 오락시설이 갖추어져 있다. <br></span>
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
