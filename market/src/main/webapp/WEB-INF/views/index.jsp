<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>아따시장에 오신것을 환영합니다.</title>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/index.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<!-- <script>
			function moveToMain2(){
				location.href = "#main2";
			}
		</script> -->
		<script>
		$(document).ready(function() {
            $("#moveToMain2").click(function(event){
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$("#main2").offset().top}, 1000);
            });
    	});
		
		window.onload = function (){
			$(".box").each(function () {
                // 개별적으로 Wheel 이벤트 적용
                $(this).on("mousewheel DOMMouseScroll", function (e) {
                    e.preventDefault();
                    var delta = 0;
                    if (!event) event = window.event;
                    if (event.wheelDelta) {
                        delta = event.wheelDelta / 120;
                        if (window.opera) delta = -delta;
                    } else if (event.detail) delta = -event.detail / 3;
                    var moveTop = null;
                    // 마우스휠을 위에서 아래로
                    if (delta < 0) {
                        if ($(this).next() != undefined) {
                            moveTop = $(this).next().offset().top;
                        }
                    // 마우스휠을 아래에서 위로
                    } else {
                        if ($(this).prev() != undefined) {
                            moveTop = $(this).prev().offset().top;
                        }
                    }
                    // 화면 이동 0.7초(700)
                    $("html,body").stop().animate({
                        scrollTop: moveTop + 'px'
                    }, {
                        duration: 700, complete: function () {
                        }
                    });
                });
            });
		}
		</script>
	</head>


    <body>

		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./common/mainMenu.jsp" %>
		</header>

		
		<section>
			<article id="article01" class="box">
				<div id="mainVideoDiv">
					<video loop muted autoplay id="mainVideo">
						<source src="./resources/videos/main.mp4">
					</video>
					
					<div id="mainVideoFilter">
						<p>아따~ 시장에 오신것을 환영합니다</p>
						<div id="mainVideoClickHere">
						<img src="./resources/images/menu/clickhere.png" id="moveToMain2">
						</div>
					</div>
				</div>
			</article>

			<article class="box">
				<div id="main2">
					<!-- <div id="main2Background"></div> -->
						<img src="./resources/images/menu/menu2_7.jpg" width="100%" height="100%" id="main2img">
						<!-- 부트스트랩 테마 적용 -->
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						<!-- <p id="main2Title">축제 및 행사 <p> -->
						  <ol class="carousel-indicators">
						    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
						  </ol>
						  <div class="carousel-inner">
						    <div class="carousel-item active">
						      <img class="d-block w-100" src="./resources/images/menu/123.jpg" width="700px" height="400px" alt="첫번째 슬라이드">
						    </div>
						    <div class="carousel-item">
						      <img class="d-block w-100" src="./resources/images/menu/234.jpg" width="700px" height="400px" alt="두번째 슬라이드">
						    </div>
						    <div class="carousel-item">
						      <img class="d-block w-100" src="./resources/images/menu/345.png" width="700px" height="400px" alt="세번째 슬라이드">
						    </div>
						    <div class="carousel-item">
						      <img class="d-block w-100" src="./resources/images/menu/456.png" width="700px" height="400px" alt="네번째 슬라이드">
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
						</div>
						<!-- 부트스트랩 테마 적용 -->
					</div>
			</article>

			<article class="box">
				<div id="main3">
					<img src="./resources/images/menu/menu3_2.jpg" width="100%" height="100%" id="main3img">
					
					<div class="btnBox" id="box01">
						<div class="btnBoxTitle"><p>공지사항</p></div>
						<ul>
							<!-- DB에서 공지 뿌리기  -->
							<li class="main_li"><a>공지1...</a></li>
							<li class="main_li"><a>공지2...</a></li>
							<li class="main_li"><a>공지3...</a></li>
							<li class="main_li"><a>공지4...</a></li>
							<li class="li_last"><input type="button" value="더 보기 >" id="notice" onclick="document.location.href='/market/notice.favorite?pageNum=1'"></li>
						</ul>
					</div>

					<div class="btnBox" id="box02">
						<div class="btnBoxTitle"><p>고객센터</p></div>
						<ul>
							<!-- DB에서 고객센터 글 뿌리기  -->	
							<li class="main_li"><a>질문1...</a></li>
							<li class="main_li"><a>질문2...</a></li>
							<li class="main_li"><a>질문3...</a></li>
							<li class="main_li"><a>질문4...</a></li>
							<li class="li_last"><input type="button" value="더 보기 >" id="help" onclick="document.location.href='/market/help.favorite?pageNum=1'"></li>
						</ul>
					</div>
					<br>

					<div class="btnBox" id="box03">
						<div class="btnBoxTitle2" id="compare"><p>가격비교</p>
							<img src="./resources/images/menu/statistics.png" width="100%" height="100%">
						</div>
					</div>
					<div class="btnBox" id="box04">
						<div class="btnBoxTitle2" id="msg"><p>시장스타그램</p>
						<img src="./resources/images/menu/group.png" width="100%" height="100%">
						</div>
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