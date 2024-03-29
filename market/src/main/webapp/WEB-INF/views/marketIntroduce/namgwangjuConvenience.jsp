<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 남광주시장 편의시설</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/convenience.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	
	<body>
		<div class="contents">
			<div>
				<h2>남광주시장 안내도</h2>
				<a href="resources/images/marketIntroduce/남광주시장안내도.jpg" class="modal">
				<img class="roughmap"
					src="resources/images/marketIntroduce/남광주시장안내도.jpg"></a>
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
									<td><span>*남광주시장 광장주차장 - 60대<br></span> <span>학동55번지<br></span>
										<span>15분당 300원, 상가이용시 45분 무료쿠폰<br></span> <span>*남광주시장
											지하주차장 - 71대<br>
									</span> <span>학동55번지<br></span> <span>15분당 300원, 상가이용시 45분
											무료쿠폰<br>
									</span></td>
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
									<td><span>시장 내 남광주새마을금고 본점<br></span> <span>둥문건너편
											광주은행365 남광주지점<br>
									</span> <span>동문건너편 농협 무등지점</span></td>
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
									<td><span>만남의 광장<br></span> <span>제1주차장 내부</span></td>
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
									<td><span>만남의 광장<br></span> <span>고객쉼터(협동조합)<br></span>
									</td>
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