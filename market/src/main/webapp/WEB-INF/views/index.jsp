<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>OOO에 오신것을 환영합니다.</title>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/index.css">
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="./resources/js/index.js"></script>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script>
			function moveToMain2(){
				location.href = "#main2";
			}
		</script>
	</head>


    <body>

		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./common/mainMenu.jsp" %>
		</header>

		
		<section id="container">
			<article>
				<div id="mainVideoDiv">
					<video loop muted autoplay id="mainVideo">
						<source src="./resources/videos/main.mp4">
					</video>
					
					<div id="mainVideoFilter">
						<p>GWANGJU MARKET SNS</p>
						<div id="mainVideoClickHere">
						<img src="./resources/images/clickhere.png" onclick="moveToMain2()">
						</div>
					</div>
				</div>
			</article>

			<article>
				<div id="main2">
					<div id="main2Background"></div>
						<p id="main2Title">축제 및 행사 <p>
						<!-- 부트스트랩 테마 적용 -->
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						  </ol>
						  <div class="carousel-inner">
						    <div class="carousel-item active">
						      <img class="d-block w-100" src="./resources/images/menu/1.png" alt="첫번째 슬라이드">
						    </div>
						    <div class="carousel-item">
						      <img class="d-block w-100" src="./resources/images/menu/2.png" alt="두번째 슬라이드">
						    </div>
						    <div class="carousel-item">
						      <img class="d-block w-100" src="./resources/images/menu/3.png" alt="세번째 슬라이드">
						    </div>
						  </div>
						  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="sr-only">이전</span>
						  </a>
						  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="sr-only">다음</span>
						  </a>
						</div>							`````
						<!-- 부트스트랩 테마 적용 -->
					</div>
			</article>

			<article>
				<div id="main3">

					<div class="btnBox">
						<div class="btnBoxTitle"><h2>공지사항</h2></div>
						<ul>
							<!-- DB에서 공지 뿌리기  -->
							<li><a>공지1...</a></li>
							<li><a>공지2...</a></li>
							<li><a>공지3...</a></li>
							<li><a>공지4...</a></li>
							<li><input type="button" value="더 보기 >"></li>
						</ul>
					</div>

					<div class="btnBox">
						<div class="btnBoxTitle"><h2>고객센터</h2></div>
						<ul>
							<!-- DB에서 고객센터 글 뿌리기  -->	
							<li><a>질문1...</a></li>
							<li><a>질문2...</a></li>
							<li><a>질문3...</a></li>
							<li><a>질문4...</a></li>
							<li><input type="button" value="더 보기 >"></li>
						</ul>
					</div>

					<div class="btnBox">
						<div class="btnBoxTitle2"><h2>가격비교</h2></div>
					</div>
					<div class="btnBox">
						<div class="btnBoxTitle2"><h2>시장스타그램</h2></div>
					</div>
				</div>
			</article>

		</section>

		<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./common/mainFooter.jsp" %>
		</footer>
    </body>
</html>