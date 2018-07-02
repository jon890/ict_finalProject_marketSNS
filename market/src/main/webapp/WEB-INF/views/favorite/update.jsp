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
	        		 <a class="btn btn-default" href="./helpForm.favorite">글쓰기</a>
	        	</div>
        	</c:if>
        	
        	<c:if test="${id == null}">
        		<div id="writeBtnDiv">
	        		<a href="./login.main">비 회원은 글을 쓸 수 없습니다</a>
	        	</div>  	
        	</c:if>
	 
		
		<form action="/market/update.favorite" method="post">
		<input type="hidden" name="articleNum" value="${articleNum}">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<input type="hidden" name="fileStatus" value="${fileStatus}">
		<%-- <input type="hidden" name="fileCount" value="${fileCount}"> --%>
        <table class="table table-hover">
            <thead>
            <tr>
 			 <th>글쓴이 :</th> <td>${id}</td> 
 			</tr>
 			<tr>	 
			 <th>제목 : </th><td><input type="text" id="title" name="title" value="${helpArticle.title}"/></td>
		 	</tr>
            
            </thead>
            <tbody>
            <tr>			 
			  <td colspan="4"><textarea cols="150" name="content" id="content">${helpArticle.content}</textarea></td>
	     	</tr>
	     	 <tr>
	      <c:if test="${id !=null}">
	    	  <td colspan="4" align="right">	    	
	    	  <input type="submit" class="btn btn-primary" value="저장하기">
	    	  <c:if test="${id ==helpArticle.id}">
	    	  <input type="button" class="btn btn-primary" value="수정하기" onclick="document.location.href='/market/update.favorite?articleNum=${helpArticle.articleNum}&pageNum=${pageNum}&fileStatus=${HelpArticle.fileStatus}'">
	    	  <input type="button" class="btn btn-primary" value="삭제하기" onclick="document.location.href='/market/delete.favorite?articleNum=${helpArticle.articleNum}&pageNum=${pageNum}'">
	    	  </c:if>
	    	  <c:if test="${id !=helpArticle.id}">
	    	  <input type="button" class="btn btn-primary" value="수정하기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="삭제하기" disabled="disabled">
	    	  </c:if>
	    	  <input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/help.favorite?pageNum=1'">
	    	  </td>
	      </c:if>
	      		    	
	      <c:if test="${id ==null}">
	    	  <td colspan="4" align="right">
	    	  <input type="submit" class="btn btn-primary" value="답글달기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="수정하기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="삭제하기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/help.favorite?pageNum=1'">
	    	  </td>   
	      </c:if>      	 	      	 
	     </tr>
	     	
	     	
	     	 	
            </tbody>
        </table>
      </form>
    </div>

        
    <!-- http://bigfat.tistory.com/83 -->
    </section>
    
     <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
	 <%@ include file="./../common/mainFooter.jsp" %>
	</footer>
    
</body>
</html>