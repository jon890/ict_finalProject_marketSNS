<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/compare/comparePrice.css">
	    
	    
	    <style>
	        div.background{
	            width:100%;
	            height:300px;
        	}

	        div.background img{
	            width:100%;
	            height: 300px;
	            /*opacity: 1;*/
	            z-index:1;
	        }
	
	        div.transbox p{
	            margin: 3%;
	            font-weight: bold;
	            color: white;
	            text-align:center;
	            z-index:2;
	            top:-300px;
	            position:relative;
	        }
	
	        #p01{
	            font-size:50px;
	            color:red;
	        }
	
	        #p02{
	            font-size:20px;
	        }
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
	      
	      </style>
	      
<title>가격비교</title>
</head>
<body>
<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
		
		<section>
		    <div class="background">
	            <img src="./resources/images/favorite/favorite_main.png" />
	            <div class="transbox">
	                <p id="p01">가격비교</p>
	                <p id="p02">전통시장과 대형마트의 가격을 비교해 드립니다</p>
	            </div>
        	</div>
		   <div id="wrapper">
		  
				<ul class="nav nav-tabs nav-justified" role="tablist">
		             <li class="nav-item">
		                <a href="market.compare" class="btn btn-primary">전통시장가격</a>
		            </li>
		            <li class="nav-item">
		                <a href="mart.compare" class="btn btn-primary">대형마트가격</a>
		            </li>
		            <li class="nav-item">
		                <a href="compare.compare" class="btn btn-primary">전통시장vs대형마트</a>
		            </li>
		       </ul>
		  
	<!-- Single button -->
	<div class="btn-group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
		  주별로 보기 <span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
		  <li><a href="#">6월1주</a></li>
		  <li><a href="#">6월2주</a></li>
		  <li><a href="#">6월3주</a></li>
		</ul>
	  </div>
	<div class="btn-group">
			<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
			  품목별 보기 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
			  <li><a href="#">곡류</a></li>
			  <li><a href="#">육류</a></li>
			  <li><a href="#">어류</a></li>
			  <li><a href="#">과일</a></li>
			  <li><a href="#">채소</a></li>
			  <li><a href="#">식료품</a></li>
			  <li><a href="#">유류</a></li>
			  <li><a href="#">세제</a></li>
			</ul>
		  </div>
	
	<table class="table table-striped">
			<thead>
			  <tr>
				<th>품목/이름</th>
				<th>대인시장</th>
				<th>말바우시장</th>
				<th>양동시장</th>
				<th>시장평균가</th>
				<th>마트평균가</th>
				<th>이마트</th>
				<th>롯데마트</th>
				<th>홈플러스</th>
			  </tr>
			</thead>
			<tbody>
	
			<tr>
			<c:forEach var="compare" items="${comparePriceList}">
			<td><c:out value="${compare.goodsName}"/></td>
			<td><c:out value="${compare.daeInPrice}"/></td>
			<td><c:out value="${compare.malbawooPrice}"/></td>
			<td><c:out value="${compare.yangdongPrice}"/></td>
			<td><c:out value="${compare.avgMarket}"/></td>
			<td><c:out value="${compare.avgMart}"/></td>
		    <td><c:out value="${compare.emartPrice}"/></td>
			<td><c:out value="${compare.homePlusPrice}"/></td>
			<td><c:out value="${compare.lotteMartPrice}"/></td>
			</tr>
			</c:forEach>
			</tbody>
		  </table>
	</div>	
	</section>    
		    

<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
</body>
</html>