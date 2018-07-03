<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>OOO - 대인시장</title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
		
		<style>
			iframe{
				border : none;
			}
		</style>
	</head>
	
	
	<body>
		<header>
			<%@include file="./../common/mainMenu.jsp"%>
		</header>
		
		<section>
			<div class="background">
				<img src="./resources/images/favorite/favorite_main.png" />
				<div class="transbox">
					<p id="p01">대인시장</p>
					<p id="p02">"예술이 공존하는 문화관광시장"</p>
				</div>
			</div>
	
			<div class="container">
				<ul class="nav nav-pills" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="pill" href="#home">개요</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#menu1">먹거리</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#menu2">볼거리</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#menu3">찾아오는 길</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						href="#menu4">편의시설</a></li>
				</ul>
	
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						<br>
						<iframe src="daeinHistory.mid" width="100%" height="1080px"></iframe>
					</div>
					<div id="menu1" class="container tab-pane fade">
						<br>
						<h3>먹거리</h3>
						<iframe src="daeinStore.mid" width="100%" height="1080px"></iframe>
					</div>
					<div id="menu2" class="container tab-pane fade">
						<br>
						<h3>볼거리</h3>
						<iframe src="daeinSightsee.mid" width="100%" height="1080px"></iframe>
					</div>
					<div id="menu3" class="container tab-pane fade">
						<br>
						<h3>찾아오는 길</h3>
						<iframe src="daeinMap.mid" width="100%" height="1080px"></iframe>
					</div>
					<div id="menu4" class="container tab-pane fade">
						<br>
						<h3>고객센터</h3>
						<p>TEST1</p>
					</div>
				</div>
			</div>
		</section>
		
		<footer>
			<%@include file="./../common/mainFooter.jsp"%>
		</footer>
		
	</body>
</html>