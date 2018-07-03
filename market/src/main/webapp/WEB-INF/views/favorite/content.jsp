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
	    <script src=https://code.jquery.com/jquery-3.3.1.min.js></script>
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
	        
	       #commentList{
	   			width:1110px;
	   			height:300px;
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
       
 		<input type="hidden" name="pageNum" value="${pageNum}" id="market">                 
	    <input type="hidden" name="depth" value="${helpArticle.depth}">
	    <input type="hidden" name="groupId" value="${helpArticle.articleNum}">
        <table class="table table-hover">
            <thead>
            <tr>
 			 <td>글쓴이 :</td> <td>${helpArticle.id}</td> 			 
 			 <td>조회수 :</td> <td>${helpArticle.hit}</td>
 			</tr>
 			<tr>	 
			 <td>제목 : </td><td>${helpArticle.title}</td>
			 <td>날짜 : </td><td>${helpArticle.writeDate}</td>
		 	</tr>
            
            </thead>
            <tbody>
            <tr>			 
			  <td colspan="4">${helpArticle.content}</td>
	     	</tr>
	     	</tbody>
	     	</table>
	     	
	    	<div id="commentList">
	    	
	    	</div>
	    <table>
	    	<tr>
	      	<c:if test="${id !=null}">
	    	  <td colspan="4" align="right">
	    	  <c:if test="${id ==helpArticle.id}">
	    	  <input type="button" value="comment 읽기(${helpArticle.commentCount})" onclick="getComment(1,event)" id="commentRead" class="btn btn-primary">
	    	  <input type="button" class="btn btn-primary" id="commentWrite" value="댓글달기">
	    	  <input type="button" class="btn btn-primary" value="수정하기" onclick="document.location.href='/market/update.favorite?articleNum=${helpArticle.articleNum}&pageNum=${pageNum}&fileStatus=${helpArticle.fileStatus}'">
	    	  <input type="button" class="btn btn-primary" value="삭제하기" onclick="document.location.href='/market/delete.favorite?articleNum=${helpArticle.articleNum}&pageNum=${pageNum}'">
	    	  </c:if>
	    	  <c:if test="${id !=helpArticle.id}">
	    	  <input type="button" class="btn btn-primary" value="수정하기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="삭제하기" disabled="disabled">
	    	  </c:if>
	    	  <input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/help.favorite?pageNum=${pageNum}'">
	    	  </td>
	      </c:if>
	      		    	
	      <c:if test="${id ==null}">
	    	  <td colspan="4" align="right">
	    	  <input type="button" class="btn btn-primary" value="수정하기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="삭제하기" disabled="disabled">
	    	  <input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/help.favorite?pageNum=${pageNum}'">
	    	  </td> 
	      </c:if>      	 	      	 
	     </tr>  	
	     </table>	 	
            
       
        <div id="commentBottom">
        <textarea rows="5" cols="150" name="commentContent" 
        id="commentContent" placeholder="댓글을 입력하세요."></textarea>
        </div>
    
        
    </div>

        
    <!-- http://bigfat.tistory.com/83 -->
    </section>
    
     <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
	 <%@ include file="./../common/mainFooter.jsp" %>
	</footer>
    <script type="text/javascript">
    
    $(document).ready(function(){
    	
    	$.ajaxSetup({
    		type :"POST",
    		async :true,
    		dataType:"json",
    		error: function(hum){
    			alert("error html =" + hum.statusText);
    		}
    	});
    	$("#commentWrite").on("click",function(){
    		event.preventDefault();
    		let commentContent =$("#commentContent").val();
    		if(commentContent.length==0||commentContent==null){
    			alert("내용을 입력해주세요.");
    			$("#commentContent").focus();
    		}else{
    		$.ajax({
    			url:"/market/commentWrite.favorite",
    			data:{
    				commentContent:$("#commentContent").val(),
    				articleNum:"${helpArticle.articleNum}"
    			},
    			success:function(data){
    				if(data.result==1){
    					alert("댓글입력성공!!");
    					$("#commentContent").val("");
    					showHtml(data.commentList,1);
    				}
    				
    			}
    			
    		});
    		}
    	});
    });	
    function getComment(commPageNum,event){
		event.preventDefault();
		$.ajax({
			url:"/market/commentRead.favorite",
			data:{
				articleNum:"${helpArticle.articleNum}",
				//숫자와 문자연산에서 +제외하고는 숫자 우선  ex 1*10 10 
				commentRow:commPageNum*10
			},
			success:function(data){
				showHtml(data,commPageNum);
			}
		});
	}
	function showHtml(data,commPageNum){
		let html="<table class='table table-hover' width='1100'>"; 
		$.each(data,function(index,item){ 
			html +="<tr>"; 
			html +="<td width='100'>"+(index+1)+"</td>";
			html +="<td	width='100'>"+item.id+"</td>";
			html +="<td width='700'>"+item.commentContent+"</td>";
			html +="<td	width='210'>"+item.commentDate+"</td>";
			html +="</tr>"; 
		});
		 html +="</table>"; 
		commPageNum=parseInt(commPageNum);
		if("${article.commentCount}">commPageNum*10){
			nextPageNum=commPageNum+1;
			html+="<br/><input type='button' onclick='getComment(nextPageNum,event)' value='다음comment보기'<br>";
		}
		
		$("#commentList").html(html);
		$("#commentContent").val("");
		$("#commentContent").focus();
		
	}

	
</script>
</body>
</html>