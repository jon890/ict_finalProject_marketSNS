<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - 야시장정보</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	   	<script src="./resources/js/favorite/favoriteMenu.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
		<link rel="stylesheet" href="./resources/css/marketIntroduce/sightsee.css">
	    <style>
	        #p{
	            font-size:30px;
	            text-align:center;
	            padding-top:10px;
	        }
	        
	        .container{
	        	width:1080px;
	        	magin:0 auto;
	        }
	        
	        .imgNight{
	        	width:500px;
	        	height:350px;
	        }
	        
    	</style>
	</head>

	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	        	<img src="./resources/images/favorite/favorite_main.png" />
	        	<div class="transbox">
	            	<p id="p01">야시장 정보</p>
	            	<p id="p02">광주의 야시장 정보를 알려드립니다!</p>
	        	</div>
        	</div>
		    <div class="container">
		    	<ul class="nav nav-pills" role="tablist">
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="notice">공지사항</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="hotPlace">핫플레이스</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="festival">축제정보</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link active" data-toggle="pill" id="nightMarket">야시장정보</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="help">고객센터</a>
			        </li>
			    </ul>
			    <p id="p">야시장정보</p>
		<div class="contents">
			<div class="web">
				<div class="table_list">
					<table>
						<colgroup>
							<col width="200px">
							<col width="630px">
							<col width="100px">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<img src="resources/images/favorite/남광주야시장1.jpg" class="imgNight">
								</td>
								<td class="left">
									<h3>남광주밤기차야시장</h3>
									<span>토,일 6시반 ~ 11시까지<br> </span>
									<span><b>먹거리 :</b>삼겹살 김밥,꼬치구이,찹스테이크,조개굽는O-BAR 등 다수 </span>
								</td>
							</tr>
							<tr>
								<td>
									<img src="resources/images/favorite/대인야시장1.JPG" class="imgNight">
								</td>
								<td class="left">
									<h3>대인예술시장야시장</h3>
									<span><b>늦은 밤 토 7시 ~ 11시까지</b><br> </span>
									<span><b>7월 축제프로그램 :</b>한평갤러리(기획전,아미전), <br>
									술파는장터,아트컬렉션 샵 수작, 아트경매,두꺼B프로젝트,</span>
									<br>
									<span>유별난예술극장(공연),별장버스킹</span>
									<br>
									<span><b>먹거리 :</b>회,양꼬치,1000원 국수/파전,순대볶음<br>
										순대국밥 ,불꼬챙이(삼둥이),독일맥주집 등 다수 </span>
								</td>
								
							</tr>
							<tr>
								<td>
									<img src="resources/images/favorite/송정야시장1.jpg" class="imgNight">
								</td>
								<td class="left">
									<h3>1913 송정야시장</h3>
									<span>주말11:00~23:00<br>
									월~목11:00~22:00 (둘째, 넷째주 월요일 휴무)<br>
									금11:00~23:00<br>
									</span>
									<span><b>먹거리 :</b>또아식빵,밀밭양조장(맥주),국밥<br>
									갱소년(양갱),느린먹거리(김부각),쑥초코파이 등 다수 </span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	      
	    </section>    
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	</body>
</html>