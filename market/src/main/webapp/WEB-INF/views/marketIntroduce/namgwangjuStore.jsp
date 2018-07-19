<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 남광주시장 먹을거리</title>
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
									<a class="modal" href="./resources/images/marketIntroduce/조개굽는O-bar.jpg">
									<img class="storeimg" src="./resources/images/marketIntroduce/조개굽는O-bar.jpg" ></a>
								</td>
								<td class="left">
									<h3>조개 굽는  O-bar</h3>
									<span>치즈키조개관자구이<br></span>
									<span>치즈와 키조개의 고소함의 향연~!<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									치즈관자구이 7000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/삼겹살김밥.jpg">
									<img class="storeimg" src="./resources/images/marketIntroduce/삼겹살김밥.jpg" ></a>
								</td>
								<td class="left">
									<h3>삼겹살김밥</h3>
									<span>삼겹살김밥<br></span>
									<span>김밥에도 삼겹살시대가 왔다~!<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									삼겹살김밥 4000원</span>
								</td>
							</tr>
							<tr>
								<td>
									<a class="modal" href="./resources/images/marketIntroduce/보리밥뷔페.jpg">
									<img class="storeimg" src="./resources/images/marketIntroduce/보리밥뷔페.jpg" ></a>
								</td>
								<td class="left">
									<h3>보리밥뷔페</h3>
									<span>보리밥<br></span>
									<span>8천원의 건강하고 든든한 한식 뷔페<br></span>
								</td>
								<td>
									<span><b>-주요메뉴-</b><br>
									보리밥뷔페  8000원</span>
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