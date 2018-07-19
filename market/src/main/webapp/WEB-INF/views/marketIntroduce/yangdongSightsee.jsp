<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 양동시장 볼거리</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/sightsee.css">	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 </head>
	 
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
									<a class="modal" href="resources/images/marketIntroduce/청춘발산마을.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/청춘발산마을.jpg"></a>
								</td>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/청춘발산마을_야경.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/청춘발산마을_야경.jpg"></a>
								</td>
								<td>
										<h3>청춘발산마을</h3>
										<span>발산마을에서 광주천 건너편에는 1970년대 전남방직 공장이 있었다.일자리를 찾아 전국에서 젊은이들이 모여 들었다.비교적 저렴한 값에 집을 구하기 위해 그 들은 언덕을 올라 갔다.
										마을 주민들이었던 여공들의 안식처는 산업구조가 바뀌면서 빈집이 늘어갔다. 주변에 사원아파트가 들어서고 대규모 임대 아파트가 생기면서 다른 원주민들도 마을을 떠나갔다.<br>
										꿈을 찾아온 이들에겐 낯선 땅인 조그만 달동네 발산마을에 떠 있던 ‘별’은 고향을 떠올리고, 고단함을 이겨내고, 내일에 대한 희망을 다짐하는 상징이었다.
										젊은 예술가들은 시간이 멈춘 발산마을 골목길에 정원을 만들고 숨을 불어 넣기 시작했다.<br>
										광주천과 마을 사이에 공사장에서 쓰던 철재로 뽕뽕 브릿지라는 다리도 만들었다.
										신호윤, 최윤미 작가가 만든 이 다리는 예술을 통해 다양한 사람과 생각을 연결하는 상징성을 갖는다.
										마을 입구의 벽화 ,버려진 땅을 다듬어 만든 텃밭, 마을 곳곳의 조형물들로 인해 마을 전체는 갤러리다.
										청년들이 마을에 들어와 살아보게 하자는 공공 미술 레지던스 사업을 진행 하는 청춘빌리지를 방문하면 마을 답사와 주민 집밥먹기 등의 마을 체험과 매달 열리는 국내외 작가의 전시회에 대한 안내도 받을 수 있다. </span>
								</td>		
							</tr>
							<tr>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/기아챔피언스필드전경.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/기아챔피언스필드전경.jpg"></a>
								</td>
								<td>
									<a class="modal" href="resources/images/marketIntroduce/기아챔피언스필드내부.jpg">
									<img class="sightmg" src="resources/images/marketIntroduce/기아챔피언스필드내부.jpg"></a>
								</td>
								<td>
										<h3>기아챔피언스필드</h3>
										<span>원래는 광주 무등경기장 주경기장이었지만 2011년 경기장을 철거한 후 2012년 야구장 공사를 착공하여 2013년 12월에 지하 2층, 지상 5층, 22,244석, 최대 수용인원 27,000명 규모로 완공하였다.<br>
											관람 외야 중앙에 35mⅹ15m 규모의 대형 전광판이 설치되어 있으며 전광판 아래쪽에는 아이들을 위한 놀이시설이 구비되어 있다.</span>
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