<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
				<h2>말바우시장 안내도</h2>
				<a href="resources/images/marketIntroduce/말바우시장_안내도.jpg" class="modal">
				<img class="roughmap"
					src="resources/images/marketIntroduce/말바우시장_안내도.jpg" alt="안내도"></a>
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
									<td><span>*말바우시장 제1주차장 - 76대<br></span> <span>우산동
											190-1<br>
									</span> <span>30분 무료, 15분당 200원, 상가이용시 50% 할인 쿠폰<br></span> <span>*말바우시장
											제2주차장 - 48대<br>
									</span> <span>우산동 127-7<br></span> <span>30분 무료, 15분당 200원,
											상가이용시 50% 할인 쿠폰<br>
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
									<td><span>할머니장터골목 근처 금남새마을금고 말바우점<br></span> <span>바위1로
											건너편 광주은행 문화동지점<br>
									</span> <span>다이소 말바우시장점 건너편 두암신협본점</span></td>
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
									<td><span>만남의 광장<br></span> 
									<span>고객쉼터(협동조합)<br></span>
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