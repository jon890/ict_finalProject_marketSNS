<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8" />
	    <title>hotPlace</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <script src="./resources/js/favorite/favoriteMenu.js"></script>
	    <style>
	    	/*body{
	            width:1080px;
	            margin:0 auto;
	        }*/
	        
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
	        }
	
	        #p02{
	            font-size:20px;
	        }
	        
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
	        
	        .nav-item{
	            width:20%;
	            text-align:center;
	            font-size:20px;
	            font-weight:bold;
	        }
	
	        .nav-link{
	            color:black;
	        }
    	</style>
    	
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
	            	<p id="p01">Favorite</p>
	            	<p id="p02">광주전통시장의 문화정보를 제공해 드립니다</p>
	        	</div>
        	</div>
		    <br>
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
	            <div class="card" style="width:400px">
	                <img class="card-img-top" src="./resources/images/favorite/hotPlace01.jpg" alt="Card image" style="width:100%">
	                <div class="card-body">
	                    <h4 class="card-title">John Doe</h4>
	                    <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
	                    <a href="#" class="btn btn-primary">See Profile</a>
	                </div>
	            </div>
		        <div class="card" style="width:400px">
		            <img class="card-img-top" src="./resources/images/favorite/hotPlace01.jpg" alt="Card image" style="width:100%">
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
	    
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
	
</html>