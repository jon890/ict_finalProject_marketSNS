<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 말바우시장 먹을거리</title>
		<link rel="stylesheet" href="./resources/css/marketIntroduce/store.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
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
									<a class="modal" href="./resources/images/marketIntroduce/초원팥죽.jpg" >
									<img class="storeimg" src="./resources/images/marketIntroduce/초원팥죽.jpg" ></a>
								</td>
								<td class="left">
									<h3>초원팥죽</h3>
									<span>팥죽,바지락칼국수,콩물국수<br></span>
									<span>저렴한 3천원으로 건강한 팥죽을 선사합니다.<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									팥죽		3000원<br>
									동지죽	4000원<br>
									바지락칼국수5000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/득량만횟집.jpg" >
									<img class="storeimg" src="./resources/images/marketIntroduce/득량만횟집.jpg"></a>
								</td>
								<td class="left">
									<h3>득량만횟집</h3>
									<span>전어,숭어,광어,대하 등<br></span>
									<span>저렴한 가격에 싱싱한 횟를 먹고 싶다면 와<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									숭어	10000원<br>
									전어	10000원<br>
									탕 별도 5000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/제비집.jpg" >
									<img class="storeimg" src="./resources/images/marketIntroduce/제비집.jpg"></a>
								</td>
								<td class="left">
									<h3>제비집</h3>
									<span>아구찜<br></span>
									<span>저렴한 아구찜으로 소문난 맛집이다.<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									아구찜	20000~35000원<br>
									병어회	20000원<br>
									전어구이	15000원</span>
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
