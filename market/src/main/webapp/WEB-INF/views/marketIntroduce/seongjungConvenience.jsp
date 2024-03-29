<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 1913 송정역시장 편의시설</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/convenience.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	
	<body>
		<div class="contents">
			<div>
				<h2>1913송정역시장 안내도</h2>
				<a href="resources/images/marketIntroduce/송정역시장_안내도.JPG" class="modal">
				<img class="roughmap"
					src="resources/images/marketIntroduce/송정역시장_안내도.JPG"></a>
			</div>
			<div class="web">
				<div>
					<div>
						<h3>세부사항</h3>
						<table class="table_list">
							<colgroup>
								<col width="400px">
								<col width="200px">
								<col width="480px">
							</colgroup>
							<tbody>
								<tr>
									<td><img class="bagimg"
										src="resources/images/marketIntroduce/주차장.jpg"></td>
									<td>
										<p>
											<img class="iconimg"
												src="resources/images/marketIntroduce/parking.png"> <br>주차장
										</p>
									</td>
									<td><span>*1913송정역시장 공영주차장 - 38대<br></span> <span>송정동
											857-1<br>
									</span> <span>30분 무료, 15분당 200원, 상가이용시 50% 할인 쿠폰<br></span></td>
								</tr>
								<tr>
									<td><img class="bagimg"
										src="resources/images/marketIntroduce/은행.jpg"></td>
									<td>
										<p>
											<img class="iconimg"
												src="resources/images/marketIntroduce/money-bag.png"> <br>은행
										</p>
									</td>
									<td><span>공영주차장 건너편 광주은행 송정지점<br></span></td>
								</tr>
								<tr>
									<td><img class="bagimg"
										src="resources/images/marketIntroduce/화장실.png"></td>
									<td>
										<p>
											<img class="iconimg"
												src="resources/images/marketIntroduce/wc.png"> <br>화장실
										</p>
									</td>
									<td><span>공영주차장 뒷편<br></span> <span>후문 입구 근처</span></td>
								</tr>
								<tr>
									<td><img class="bagimg"
										src="resources/images/marketIntroduce/쉼터.jpg"></td>
									<td>
										<p>
											<img class="iconimg"
												src="resources/images/marketIntroduce/picnic-table.png">
											<br>쉼터
										<p>
									</td>
									<td><span>시장 중앙 야외쉼터</span></td>
								</tr>
							</tbody>
						</table>
					</div>
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