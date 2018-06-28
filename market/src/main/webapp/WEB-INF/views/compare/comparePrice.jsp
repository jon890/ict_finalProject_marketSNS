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
	        div.background {
	            background: url(./resources/images/favorite/favorite_main.png) repeat;
	            border: 2px solid black;
	            height:300px;
	            opacity:0.7;
	        }
	
	        div.transbox {
	            margin: 30px;
	            background-color: #ffffff;
	            border: 1px solid black;
	            opacity: 0.7;
	            filter: alpha(opacity=60); /* For IE8 and earlier */
	        }
	
	        div.transbox p {
	            margin: 3%;
	            font-weight: bold;
	            color: #000000;
	            text-align:center;
	        }
	        #p01{
	            font-size:50px;
	        }
	
	        #p02{
	            font-size:20px;
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
		        <div class="transbox">
		            <p id="p01"><ins>comparePrice</ins></p>
		            <p id="p02">전통시장 가격과 대형마트의 가격을 제공해 드립니다</p>
		        </div>
		    </div>
		   <div id="wrapper">
				<ul class="nav nav-pills" role="tablist">
		            <li class="nav-item">
		                <a class="nav-link active" data-toggle="pill" href="#home">전통시장가격</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link active" data-toggle="pill" href="#menu1">대형마트가격</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link active" data-toggle="pill" href="#menu2">전통시장vs대형마트</a>
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
				<th>품목/전통시장명</th>
				<th>대인시장(동구)</th>
				<th>양동시장(서구)</th>
				<th>말바우시장(북구)</th>
				<th>무등시장(남구)</th>
				<th>하남월곡시장(광산구)</th>
			  </tr>
			</thead>
			<tbody>
			  <tr>
			  <c:forEach var="market" items="${marketPriceList}">
				<td><c:out value="${market.price}"/></td>
			 </c:forEach>
			  </tr>
			</tbody>
		  </table>
	</div>	    
		    

		<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
</body>
</html>