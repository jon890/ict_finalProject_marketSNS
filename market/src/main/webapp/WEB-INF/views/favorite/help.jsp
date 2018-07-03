<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>help</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
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
	        }
	
	        #p02{
	            font-size:20px;
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
	        #writeBtnDiv{
	        	width:100%;
	        	height:50px;
	        }
	        
	       	#writeBtnDiv < a{
	       		float:right;
	       	} 
	       	.pagination{
	       		font-size:20px;
	       		font-weight:bold;
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
	                <p id="p01"><ins>고객센터</ins></p>
	                <p id="p02">고객의 소리를 담아드립니다</p>
	            </div>
        	</div>

    <div class="container">
    
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

    <div class="container">
        <ul class="pagination justify-content-center">
             ${pageCode}
        </ul>
    </div>
    
    <!-- http://bigfat.tistory.com/83 -->
    </section>
    
     <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
	 <%@ include file="./../common/mainFooter.jsp" %>
	</footer>
    
</body>
</html>