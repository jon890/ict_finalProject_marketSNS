<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>noticeContent</title>
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
	   			overflow:auto;
	   		}
	   		#commentBottom{
	   			position:relative;
	   			margin:0 auto;
	   		}
	   	
	      	.table{
	      		width:700px;
	      		margin:0 auto;
	      	}
	      	
	      	.table .td01{
	      		width:30%;
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
	                <p id="p01"><ins>공지사항</ins></p>
	                <p id="p02">공지사항을 확인해주세요</p>
	            </div>
        	</div>
	<br>
    <div class="container">
    	<input type="hidden" name="pageNum" value="${pageNum}">
        <table class="table">
            <thead>
	            <tr>
	 			 	<td>글쓴이</td> <td colspan="3" class="td01">${noticeContent.id}</td>
	 			</tr>
	 			<tr>	 
				 	<td>제목</td><td class="td01">${noticeContent.title}</td>
				 	<td>날짜</td><td class="td01">${noticeContent.writeDate}</td>
		 		</tr>
            </thead>
            <tbody>
	            <tr>
	            	<td>내용</td>			 
				  	<td colspan="3" class="td01">${noticeContent.content}</td>
		     	</tr>
	     	</tbody>
	    </table>
	    <table id="commentBottom">
	    	<%-- <tr>
	    		<td>
	    	  		<input type="button" class="btn btn-primary" value="수정하기" onclick="document.location.href='/market/noticeUpdate.favorite?articleNum=${noticeContent.articleNum}'">
	    	  		<input type="button" class="btn btn-primary" value="삭제하기" onclick="document.location.href='/market/noticeDelete.favorite?articleNum=${noticeContent.articleNum}'">
	    	  		<input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/notice.favorite'">
	    	  	</td>
	    	</tr> --%>
	    	<tr>
		      	<c:if test="${id !=null}">
		    	  	<td colspan="4" align="right">
			    	  <c:if test="${id ==noticeContent.id}">
			    	  	<input type="button" class="btn btn-primary" value="수정하기" onclick="document.location.href='/market/noticeUpdate.favorite?articleNum=${noticeContent.articleNum}&pageNum=${pageNum}'">
			    	  	<input type="button" class="btn btn-primary" value="삭제하기" onclick="document.location.href='/market/noticeDelete.favorite?articleNum=${noticeContent.articleNum}&pageNum=${pageNum}'">
		    		  </c:if>
		    	  
					  <c:if test="${id !=noticeContent.id}">
			    	  	<input type="button" class="btn btn-primary" value="수정하기" disabled="disabled">
			    	  	<input type="button" class="btn btn-primary" value="삭제하기" disabled="disabled">
					  </c:if>
					 <input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/notice.favorite?pageNum=${pageNum}'">
			    	 </td>
		      	</c:if>
		      		    	
		      <c:if test="${id ==null}">
		    	  <td colspan="4" align="right">
		    	  	<input type="button" class="btn btn-primary" value="수정하기" disabled="disabled">
		    	  	<input type="button" class="btn btn-primary" value="삭제하기" disabled="disabled">
		    	  	<input type="button" class="btn btn-primary" value="목록으로" onclick="document.location.href='/market/notice.favorite?pageNum=${pageNum}'">
		  		  </td> 
		      </c:if>      	 	      	 
		     </tr>
		     
		     <!-- <tr>
		     <td colspan="4">
			     <textarea rows="5" cols="150" name="commentContent" 
		        id="commentContent" placeholder="댓글을 입력하세요."></textarea>
	         </td>
	     </tr> -->
	     </table>
    </div>

        
    <!-- http://bigfat.tistory.com/83 -->
    </section>
    
     <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
	 <%@ include file="./../common/mainFooter.jsp" %>
	</footer>
    <script type="text/javascript">
    
    $(document).ready(function(){
    	
    	/* $("#commentRead").on("load",function(){
    		getComment(1,event);
    	});  */
    	$(window).on("load",getComment(1,event));
   
    	$.ajaxSetup({
    		type :"POST",
    		async :true,
    		dataType:"json",
    		error: function(){
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
    
     function deleteComment(obj){
    	let tr = $(obj).parent().parent();
    	tr.remove();
    	alert($(obj).val());
    	$.ajax({
    		url:"/market/commentDelete.favorite",
    		data:{
    			commentNum:$(obj).val()
    		},
    		success:function(data){
    			if(data.result=1){
    				alert("댓글삭제성공");
    			}
    		}
    		
    	});
    }
    
    
    function getComment(commPageNum,event){
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
			html +="<td width='600'>"+item.commentContent+"</td>";
			html +="<td	width='210'>"+item.commentDate+"</td>";
			html +="<td	width='100'>"+item.commentNum+"</td>";
			html +="<c:if test='${id=="+item.id+"}'>";
			html +="<td width='100'><button onClick='deleteComment(this)' value="+item.commentNum+" class='btn btn-primary' id='deleteKey'>삭제</button></td>";
			html +="</c:if>"
			html +="<c:if test='${id!="+item.id+"}'>";
			html +="<td width='100'><button onClick='deleteComment(this)' value="+item.commentNum+" class='btn btn-primary' disabled='disabled' id='deleteKey'>삭제</button></td>";
			html +="</c:if>"
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