<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아따시장 - 마트가격</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<script src="./resources/js/compare/compareMenu.js"></script>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/compare/comparePrice.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">

	    <style>
	        .nav-item{
	            width:33%;
	            text-align:center;
	            font-weight:bold;
	        }
	        #navPills{
	        	margin:0 auto;
	        }
	        #navPills ul li a{
	        	text-align:center;
	        	font-size:25px;
	        	margin:10px;
	        	padding:10px;
	        }
	        .dropdown-menu li {
	        	text-align:center;
	        }
	        span{
	      		width:100%
	      		font-size:15px;
	      		font-weight:bold;
	      		float:right;
	      	}
	        
	      </style>
	</head>
	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
			
			<section>
			
			    <div class="background">
		            <img src="./resources/images/compare/martPrice_main.png" />
		            <div class="transbox">
		                <p id="p01">대형마트</p>
		                <p id="p02">대형마트의 가격을 알려 드립니다</p>
					</div>
				</div>
				
				<div id="wrapper">
					<ul class="nav nav-pills" role="tablist">
		                <li class="nav-item">
		                    <a class="nav-link" data-toggle="pill" href="#market" id="market">전통시장가격</a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link active" data-toggle="pill" href="#mart" id="mart">대형마트가격</a>
		                </li>
						<li class="nav-item">
		                    <a class="nav-link" data-toggle="pill" href="#compare" id="compare">전통시장vs대형마트</a>
		                </li>
		            </ul>
			  
				<div class="btn-group">
				<form action="./martAgo.compare" method="POST">
					<input type="submit" class="btn btn-default" value="6월3주보기">
					<input type="hidden" name="weekends" value="603">
				</form>
				</div>
				
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					 품목별 보기 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
					  <li><a href="martCorn.compare?weekends=${weekends}">곡류</a></li>
					  <li><a href="martMeat.compare?weekends=${weekends}">육류</a></li>
					  <li><a href="martFish.compare?weekends=${weekends}">어류</a></li>
					  <li><a href="martFruit.compare?weekends=${weekends}">과일</a></li>
					  <li><a href="martVege.compare?weekends=${weekends}">채소</a></li>
					  <li><a href="martGro.compare?weekends=${weekends}">식료품</a></li>
					  <li><a href="martOil.compare?weekends=${weekends}">유류</a></li>
					  <li><a href="martCleaner.compare?weekends=${weekends}">세제</a></li>
					</ul>
				</div>
				<br>
				<span><c:out value="${weekends.replace('0','월')}"/>주차 가격</span>	
				<br>
				<span>※ 출처: 광주광역시청 홈페이지 참조</span>
				<br>
				<span><img src="./resources/images/compare/compare_icon.png" id="icon"></span>
				<br>
				<table class="table table-striped">
					<thead>
					  <tr>
						<th>품목/마트명</th>
						<th>이마트봉선점<br>(남구)</th>
						<th>홈플러스두암점<br>(북구)</th>
						<th>롯데마트수완점<br>(광산구)</th>
						<th>영암마트지산점<br>(동구)</th>
						<th>롯데마트월드컵점<br>(서구)</th>
					  </tr>
					</thead>
					
					<tbody>
					<tr>
					<c:forEach var="mart" items="${martPriceList}">
					    <td><c:out value="${mart.goodsName}"/></td>
					    <td><c:out value="${mart.emartPrice}"/></td>
					    <td><c:out value="${mart.homePlusPrice}"/></td>
					    <td><c:out value="${mart.lotteMartPrice}"/></td>
					    <td><c:out value="${mart.yeongAmMartPrice}"/></td>
					    <td><c:out value="${mart.lotteMartSouthPrice}"/></td>
					</tr>
				  	</c:forEach>
					<!-- forEach문 제대로 한거니 수정하지마세요... -->
					</tbody>
				</table>
			</div>
		</section>
			    
		<footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>	
	</body>
</html>