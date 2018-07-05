<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8" />
	    <title>OOO - 고객센터</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<script src="./resources/js/favorite/favoriteMenu.js"></script>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    <style>
	         .container{
	        	width:1080px;
	        	magin:0 auto;
	        }
	        #writeBtnDiv{
	        	width:100%;
	        	height:50px;
	        }
	        
	       	#writeBtnDiv < a{
	       		float:right;
	       	}
	       	nav{
		       	margin:0 auto;
		       	text-align:center;
	       	}
	       	.pagination{
	       		margin:0 auto;
	       		font-size:20px;
	       		font-weight:bold;
	       		text-align:center;
	       	} 
	    </style>
	</head>
	
	
	<body>
	
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
		
		    <div class="background">
	            <img src="./resources/images/favorite/favorite_main.png" />
	            <div class="transbox">
	                <p id="p01">고객센터</p>
	                <p id="p02">고객의 소리를 담아드립니다</p>
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
		                <a class="nav-link" data-toggle="pill" id="festival">축제정보</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" data-toggle="pill" id="nightMarket">야시장정보</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link active" data-toggle="pill" id="help">고객센터</a>
		            </li>
				</ul>
	    		<c:if test="${id != null}">
		        	<div id="writeBtnDiv">
		        		 <a class="btn btn-primary" href="./helpForm.favorite">글쓰기</a>
		        	</div>
	        	</c:if>
	        	
	        	<c:if test="${id == null}">
	        		<div id="writeBtnDiv">
		        		<a href="./login.main">비 회원은 글을 쓸 수 없습니다</a>
		        	</div>  	
	        	</c:if>
	        	
	 			<b>글목록(전체 글:${totalCount})</b>
	       		<table class="table table-hover">
		            <thead>
		                <tr>
		                    <th id="th01">번호</th>
		                    <th id="th02">제목</th>
		                    <th id="th03">글쓴이</th>
		                    <th id="th04">등록일</th>
		                    <th id="th05">조회수</th>
		                </tr>
		            </thead>
		            <tbody>
		            	<c:forEach var="helpArticle" items="${helpArticleList}">
							<tr>
								<td width="50"><c:out value="${helpArticle.articleNum}" /></td>
								<td width="250"><c:if test="${helpArticle.depth > 0}">
										<img src="resources/img/re.png"
											width="${10 * helpArticle.depth}" height="16">
										<img src=" ">
									</c:if> <c:if test="${article.depth == 0}">
										<img src="resources/img/re.png" width="0" height="16">
									</c:if> <a
									href="/market/content.favorite?articleNum=${helpArticle.articleNum}&pageNum=${pageNum}&fileStatus=${helpArticle.fileStatus}">
										${helpArticle.title} 
										<c:if test="${helpArticle.commentCount!=0 }">
											<span style="color: red">(${helpArticle.commentCount})</span>
										</c:if>
								</a> <c:if test="${article.hit >= 20}">
										<img src="images/image3.png" border="0" height="16">
									</c:if></td>
								<td width="100">${helpArticle.id}</td>
								<td width="100">${helpArticle.writeDate}</td>
								<td width="50">${helpArticle.hit}</td>
							</tr>
						</c:forEach>
		            </tbody>
	        	</table>
	    	</div>
	    	
			<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				${pageCode}
			 </ul>
			</nav>
	    </section>   
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>   
	</body>
</html>