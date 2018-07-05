<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 축제정보</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <script src="./resources/js/favorite/favoriteMenu.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    
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
	        .card{
	        	width:400px;
	        	magin:0 auto;
	        	display:inline-block;
	        }
    	</style>	
	</head>

	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	        	<img src="./resources/images/favorite/favorite_main.png" />
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
			    <p id="p">축제정보</p>
	            <div class="card" style="width:400px">
	                <div class="card-body">
	                    <h4 class="card-title">John Doe</h4>
	                    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
	                    <a href="#" class="btn btn-primary">See Profile</a>
	                </div>
	            </div>
		        <div class="card" style="width:400px">
		            <div class="card-body">
		                <h4 class="card-title">John Doe</h4>
		                <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
		                <a class="btn btn-primary" data-toggle="modal" data-target="#myModal">See Profile</a>
		            </div>
		        </div>
	        </div>
	        <!-- The Modal -->
	        <div class="modal fade" id="myModal">
	            <div class="modal-dialog">
	                <div class="modal-content">
	
	                    <!-- Modal Header -->
	                    <div class="modal-header">
	                        <h4 class="modal-title">Modal Heading</h4>
	                        <button type="button" class="close" data-dismiss="modal">&times;</button>
	                    </div>
	
	                    <!-- Modal body -->
	                    <div class="modal-body">
	                        Modal body..
	                    </div>
	
	                    <!-- Modal footer -->
	                    <div class="modal-footer">
	                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	                    </div>
	
	                </div>
	            </div>
	        </div>
	    </section>
	    
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	</body>
</html>