<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8" />
	    <title>아따시장 - 핫플레이스</title>
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
	         .imgHot{
	        	width:300px;
	        	height:350px;
	        }
    	</style>
	</head>

	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	        	<img src="./resources/images/favorite/hotplace.png" />
	        	<div class="transbox">
	            	<p id="p01">HOT PLACE</p>
	            	<p id="p02">직접 가본 핫한 장소를 알려드립니다!</p>
	        	</div>
        	</div>
		    <div class="container">
		    	<ul class="nav nav-pills" role="tablist">
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="notice">공지사항</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link active" data-toggle="pill" id="hotPlace">핫플레이스</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="festival">축제정보</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="nightMarket">야시장정보</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="help">고객센터</a>
			        </li>
			    </ul>
			    <p id="p">핫플레이스</p>
	           <div class="contents">
			<div class="web">
				<div class="table_list">
					<table>
						<colgroup>
							<col width="300px">
							<col width="300px">
							<col width="480px">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<img src="resources/images/favorite/시장통닭입구.JPG" class="imgHot">
								</td>
								<td>
									<img src="resources/images/favorite/시장통닭.JPG" class="imgHot">
								</td>
								<td class="left">
									<h3>양동시장</h3>
									<span>수일통닭<br> </span>
									<span>가격 : 18,000원 - 후라이드<br> </span>
									<span> 19,000원 - 양념<br></span>
									<span> 19,000원 - 양념반 후라이드반<br> </span>
									<span>한줄평 : 통닭치고 비싸지만 장닭이라 양이 푸짐하고 옛날 치킨 맛이다.<br>
												바로 앞에 양동통닭도 있으니 둘 다 체험해보길 추천!
									</span>
								</td>
								
							</tr>
							<tr>
								<td>
									<img src="resources/images/favorite/독일맥주입구.JPG" class="imgHot">
								</td>
								<td>
									<img src="resources/images/favorite/독일맥주.JPG" class="imgHot">
								</td>
								<td class="left">
									<h3>대인시장 </h3>
									<span>독일맥주 </span>
									<span>가격 : 4,000원 (3종류 - 밀 /흑 /연인)<br> </span>
									<span>한줄평 : 야시장의 여러음식을 사서 맥주와 함께 먹을 수 있다.<br>
										   맥주집안에는 안주가 없으니 꼭 사서 가는걸 추천!
									</span>
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