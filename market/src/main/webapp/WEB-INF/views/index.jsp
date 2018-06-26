<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>OOO에 오신것을 환영합니다.</title>
		<link rel="stylesheet" href="./resources/css/index.css">	
		<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		
	</head>


    <body>

		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="mainMenu.jsp" %>
		</header>


		<section>
			<article>
				<div id="mainVideoDiv">
					<video loop muted autoplay id="mainVideo">
						<source src="./resources/videos/main.mp4">
					</video>
					
					<div id="mainVideoFilter"></div>
				</div>
			</article>

			<article>
				<div id="main2">
					<div id="main2Background"></div>
					<div id="main2Filter">
						<div id="main2FilterBtn">
							<input type="button" value="<">
							<input type="button" value="||">
							<input type="button" value=">">
						</div>

						<div id="main2FilterTitle">
							<p>축제 및 행사</p>
						</div>
					</div>
				</div>
			</article>

			<article>
				<div id="main3">

					<div class="btnBox">
						<div class="btnBoxTitle"><h2>공지사항</h2></div>
						<ul>
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
			<%@ include file="mainFooter.jsp" %>
		</footer>




		<script>
				let imgSrc = ["./resources/images/menu/1.png", 
							  "./resources/images/menu/2.png",
							  "./resources/images/menu/3.png"]
				let imgIndex = 0;

				function imgLoop(){
					if( imgIndex < imgSrc){
						$("#main2Filter").css("background-image", "url(imgSrc[imgIndex])");
					} else {
						imgIndex = 0;
					}
					imgIndex++;
					setTimeout(imgLoop, 5000);
				};

				setTimeout(imgLoop, 5000);
	
		</script>

    </body>
</html>