<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    
	    <!-- 부트스트랩 및 jQuery 로드 -->
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    
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
	        
	        hr{
	            border:1px solid gray;
	        }
	
	        .btn{
	            float:right;
	            margin-bottom:10px;
	        }
	
	        #th01{
	            width:15%;
	        }
	
	        #th02{
	            width:50%;
	        }
	
	        #th03{
	            width:20%;
	        }
	
	        #th04{
	            width:15%;
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
	    <script>
	    	$(document).ready(function(){
	    		$("#notice").on("click", function(){
	    			$(location).attr('href', './notice.favorite');
	    		})
	    		$("#hotPlace").on("click", function(){
	    			$(location).attr('href', './hotPlace.favorite');
	    		})
	    		$("#festival").on("click", function(){
	    			$(location).attr('href', './festival.favorite');
	    		})
	    		$("#nightMarket").on("click", function(){
	    			$(location).attr('href', './nightMarket.favorite');
	    		})
	    		$("#help").on("click", function(){
	    			$(location).attr('href', './help.favorite?pageNum=1');
	    		})
	    	})
	    </script>
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
	    	<form action="./noticeForm.favorite" method="post" enctype="multipart/form-data">
		    	<div class="container">
			    	<ul class="nav nav-pills" role="tablist">
			            <li class="nav-item">
			                <a class="nav-link active" data-toggle="pill" id="notice">공지사항</a>
			            </li>
			            <li class="nav-item">
			                <a class="nav-link" data-toggle="pill" id="hotPlace">핫플레이스</a>
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
			        <p id="p">공지사항</p>
			        <input type="submit" class="btn" value="문의하기" />
			        <table class="table table-hover">
			            <thead>
			                <tr>
			                    <th id="th01">번호</th>
			                    <th id="th02">제목</th>
			                    <th id="th03">글쓴이</th>
			                    <th id="th04">등록일</th>
			                </tr>
			            </thead>
			            <tbody>
			                <tr>
			                    <td>1</td>
			                    <td>Doe</td>
			                    <td>john</td>
			                    <td>2018.06.27</td>
			                </tr>
			                <tr>
			                    <td>2</td>
			                    <td>Moe</td>
			                    <td>mary</td>
			                    <td>2018.06.27</td>
			                </tr>
			                <tr>
			                    <td>3</td>
			                    <td>Dooley</td>
			                    <td>july</td>
			                    <td>2018.06.27</td>
			                </tr>
			            </tbody>
			        </table>
			    </div>
			
			    <div class="container">
			        <ul class="pagination justify-content-center">
			            <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
			            <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
			            <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
			            <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
			        </ul>
			    </div>
		    </form>
	    </section>
	    
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
	
</html>