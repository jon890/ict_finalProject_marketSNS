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
	    <script src="./resources/js/favorite/favoriteMenu.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    
	    <style>
	        #p{
	            font-size:30px;
	            text-align:center;
	            padding-top:10px;
	        }
	        
	        hr{
	            border:1px solid gray;
	        }
	
	        .btn, #writeBtn{
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
	                <p id="p01"><ins>Favorite</ins></p>
	                <p id="p02">광주전통시장의 문화정보를 제공해 드립니다</p>
	            </div>
        	</div>
        	<br>
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
			        <c:if test="${id != null}">
			        	<c:if test="${adminChk == 1}">
			        		 <a href="./noticeForm.fovorite" id="writeBtn">글쓰기</a>
			        	</c:if>
		        	</c:if>
		        	
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
			                <c:forEach var="notice" items="${noticeList}">
			                	<tr>
			                		<td>${notice.articleNum}</td>
			                		<td><a href="./noticeContent.favorite?articleNum=${notice.articleNum}&pageNum=${pageNum}">${notice.title}</a></td>
			                		<td>${notice.id}</td>
			                		<td>${notice.writeDate}</td>
			                	</tr>
			                </c:forEach>
			            </tbody>
			        </table>
			    </div>
			
			    <div class="container">
			        <ul class="pagination justify-content-center">
             			${pageCode}
        			</ul>
			    </div>
	    </section>
	    
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
</html>