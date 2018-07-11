<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>아따~ 시장 - 핫플레이스</title>
		<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<script src="./resources/js/favorite/favoriteMenu.js"></script>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
		<link rel="stylesheet" href="./resources/css/marketIntroduce/sightsee.css">
		<style>
		#p {
			font-size: 30px;
			text-align: center;
			padding-top: 10px;
		}
		
		.container {
			width : 1080px;
			margin : 0 auto;
		}
		
		.imgHot {
			width : 300px;
			height : 350px;
		}
		</style>
	</head>

	<body>
		<header id="mainMenu"><%@ include
				file="./../common/mainMenu.jsp"%></header>
	
		<section>
			<div class="background">
				<img src="./resources/images/favorite/hotplace.png" />
				<div class="transbox">
					<p id="p01">핫 플레이스</p>
					<p id="p02">직접 가본 핫한 장소를 알려드립니다!</p>
				</div>
			</div>
	
			<div class="container">
				<ul class="nav nav-pills" role="tablist">
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						id="notice">공지사항</a></li>
					<li class="nav-item"><a class="nav-link active"
						data-toggle="pill" id="hotPlace">핫플레이스</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						id="festival">축제정보</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						id="nightMarket">야시장정보</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="pill"
						id="help">고객센터</a></li>
				</ul>
				<br>
			<div class="contents">
				<div class="table_list">
					<table>
						<colgroup>
							<col width="300px">
							<col width="300px">
							<col width="480px">
						</colgroup>
						<tbody>
							<tr>
								<td><img src="resources/images/favorite/독일맥주입구.JPG" class="imgHot"></td>
								<td><img src="resources/images/favorite/독일맥주.JPG" class="imgHot"></td>
								<td class="left">
									<h3>대인시장</h3> 
								<span>독일맥주 </span> <span>가격 : 4,000원 (3종류 - 밀 /흑 /연인)<br></span>
								<span>한줄평 : 야시장의 여러음식을 사서 맥주와 함께 먹을 수 있다.<br> 맥주집안에는 안주가 없으니 꼭 사서 가는걸 추천!</span>
								</td>
							</tr>
							<tr>
								<td><img src="resources/images/favorite/조개굽는오바.JPG" class="imgHot"></td>
								<td><img src="resources/images/favorite/조개굽는오바조개.JPG" class="imgHot"></td>
								<td class="left">
								<h3>남광주시장</h3>
								<span>조개 굽는 O-bar<br></span>
								<span>가격 : 7,000원 - 양갱조각롤케익<br></span>
								<span>한줄평 : 야시장의 음식 중에 아주 비싼편에 속해 부담이 가나 화려한 불쇼와 고소한 치즈와 해산물은 일품이다..<br>
								치즈로 한 요리이기 때문에 최대한 빨리 먹는 것을 추천~!</span>
								</td>
							</tr>
	
							<tr>
								<td><img src="resources/images/favorite/시장통닭입구.JPG" class="imgHot"></td>
								<td><img src="resources/images/favorite/시장통닭.JPG" class="imgHot"></td>
								<td class="left">
								<h3>양동시장</h3>
								<span>수일통닭<br></span>
								<span>가격 : 18,000원 - 후라이드<br></span>
								<span> 19,000원 - 양념<br></span>
								<span> 19,000원 - 양념반 후라이드반<br></span>
								<span>한줄평 : 통닭치고 비싸지만 장닭이라 양이 푸짐하고 옛날 치킨 맛이다.<br>
								 바로 앞에 양동통닭도 있으니 둘 다 체험해보길 추천!
								</span>
								</td>
							</tr>
	
							<tr>
								<td><img src="resources/images/favorite/초원팥죽입구.JPG" class="imgHot"></td>
								<td><img src="resources/images/favorite/초원팥죽국수.JPG" class="imgHot"></td>
								<td class="left">
								<h3>말바우시장</h3>
								<span>초원팥죽 <br></span>
								<span>가격 : 3,000원 - 팥죽<br></span>
								<span>5,000원 - 바지락칼국수<br></span>
								<span>5,000원 - 콩물국수<br></span>
								<span>한줄평 : 저렴한 가격에 든든한 팥칼국수를 먹을 수 있다.<br> 
								팥칼국수 말고도 바지락칼국수, 콩물국수도 맛있으니 다른 국수도 추천~!
								</span>
								</td>
							</tr>
							<tr>
								<td><img src="resources/images/favorite/갱소년소개.JPG" class="imgHot"></td>
								<td><img src="resources/images/favorite/갱소년.JPG" class="imgHot"></td>
								<td class="left">
								<h3>1913송정역시장</h3>
								<span>갱소년 <br></span>
								<span>가격 : 3,300원 - 양갱조각롤케익<br></span>
								<span>4,800원 - 양갱모듬팩_8구<br></span>
								<span>4,800원 - 양갱요거트<br></span>
								<span>한줄평 : 수제디저트 특성상 가격은 부담스러우나 정갈하고 예쁜 특별한 양갱을 먹을 수 있다.<br>
								양갱의 종류도 많고 여러종류 디저트류로도 판매하며 선물셋트도 많은 선물용으로 추천~!
								</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			</div>
		</section>
		<footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp"%></footer>
	</body>
</html>