<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - 축제정보</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <script src="./resources/js/favorite/favoriteMenu.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    <link rel="stylesheet" href="./resources/css/marketIntroduce/sightsee.css">
	    <style>
	        .container{
	        	width : 1080px;
	        	margin : 0 auto;
	        }
	        
	         .imgFest{
	        	width : 500px;
	        	height : 350px;
	        }
	        .contents{
				background:#f2f2f2;
				width:100%;
				margin: 0px auto 0;
				padding : 15px;
				position:relative;
				box-sizing:border-box;
				display:inline-block;
			}
    	</style>	
	</head>

	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	        	<img src="./resources/images/favorite/festival.png">
	        	<div class="transbox">
	            	<p id="p01">축제정보</p>
	            	<p id="p02">전통시장 주변의 축제 정보를 알려드립니다!</p>
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
			            <a class="nav-link active" data-toggle="pill" id="festival">축제정보</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="nightMarket">야시장정보</a>
			        </li>
			        <li class="nav-item">
			            <a class="nav-link" data-toggle="pill" id="help">고객센터</a>
			        </li>
			    </ul>
			    <br>
				<div class="contents">
					<table>
						<colgroup>
							<col width="200px">
							<col width="630px">
							<col width="100px">
						</colgroup>
						<tbody>
							<tr>
								<td>
									<img src="resources/images/favorite/대촌행사1.JPG" class="imgFest">
								</td>
								<td class="left">
									<h3>[축제]대촌에서 향악과 놀자</h3>
									<span>ㆍ기간	2018-06-02 ~ 2018-12-01<br> </span>
									<span>ㆍ7월 28일 행사 진행<br></span>
									<span>ㆍ주소	광주광역시 남구 포충로 937<br> </span>
									<span>ㆍ장소	대촌전통문화커뮤니티센터<br>
									ㆍ전화  062-676-3844</span>
								</td>
							</tr>
							<tr>
								<td>
									<img src="resources/images/favorite/아트행사1.JPG" class="imgFest">
								</td>
								<td class="left">
									<h3>[축제]아트피크닉</h3>
									<span>ㆍ기간	2018-06-16 ~ 2018-11-03<br> </span>
									<span>ㆍ주소	광주 북구 하서로 52<br> </span>
									<span>ㆍ장소	광주시립미술관 옆 잔디광장<br>
									ㆍ전화	062-945-5670</span>
								</td>
							</tr>
							<tr>
								<td>
									<img src="resources/images/favorite/프린지행사1.jpg" class="imgFest">
								</td>
								<td class="left">
									<h3>[축제]광주프린지페스티벌</h3>
									<span>ㆍ기간	2018-04-07 ~ 2018-12-15<br> </span>
									<span>ㆍ주소	광주 동구 금남로 245 <br> </span>									
									<span>ㆍ장소	매주 토요일 518민주광장 및 금남로 일대<br> </span>
									<span>ㆍ전화	062-601-4914<br>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
	 		</div>
	    </section>
	    
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	</body>
</html>