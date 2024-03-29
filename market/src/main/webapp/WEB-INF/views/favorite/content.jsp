﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8" />
	    <title>아따시장 - 고객센터</title>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<script src=https://code.jquery.com/jquery-3.3.1.min.js></script>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    <style>
	       #commentList{
	       		width:1110px;
	   			height:300px;
	   			overflow:auto;
	   		}
	   		#commentBottom{
	   			position:relative;
	   		}      
	    </style>
	</head>
	
	<body>
		<header id="mainMenu">
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
		
		<section>
			
		    <div class="background">
	            <img src="./resources/images/favorite/favorite_main.png" />
	            <div class="transbox">
	                <p id="p01">고객센터</p>
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
	       
		 	    <input type='hidden' name='pageNum' value='${pageNum}'>
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
					  <tr>
					  <td colspan="2">다운로드 :</td>
					  <td colspan="2">
					  <c:if test="${article.fileStatus!=0}">
					  <c:if test="${fileList!=null}">
					  <ul>
					  <c:forEach var="file" items="${fileList}">
					  <li><a href="download.favorite?storedFname=${file.storedFname}&originFname=${file.originFname}&fileLength=${file.filelength}">${file.originFname}</a>
					  </li>
					 </c:forEach>
						</ul>
						</c:if>
						</c:if>
						</td>
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
		   
			    <table id="commentBottom">
			    	<tr>
			      	<c:if test="${id !=null}">
			    	  <td colspan="4" align="right">
			    	  <input type="button" class="btn btn-primary" id="commentWrite" value="댓글달기">
			    	  <c:if test="${id ==helpArticle.id}">
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
			     <tr>
			     <td colspan="4">
				     <textarea rows="5" cols="150" name="commentContent" 
			        id="commentContent" placeholder="댓글을 입력하세요."></textarea>
		         </td>
			     </tr>
			       	
			     </table>
	    	</div>
	
		</section>
	    
		<footer id="mainFooter">
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
	    			alert("댓글을 입력해주세요!")
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
	    					$("#commentContent").val("");
	    					showHtml(data.commentList,1);
	    				}
	    				
	    			}
	    			
	    		});
	    		}
	    	});
	    });	
	    function updateComment(obj){
	    	if("${id}"==$(obj).parent().siblings("td[class=id]").html()){
	    		alert($(obj).val());
	    		$.ajax({
	    			url:"/market/commentgetUpdate.favorite",
	    			data:{
	    				commentNum:$(obj).val()
	    			},
	    			success:function(response){
	    					console.log(response);
	    					commentUpdateForm(response);
	    			}
	    			
	    		});
	    	}else{
	    		alert("본인의 글이 아닙니다. 다시 한번 확인해주세요.");
	    	}
	    	
	    }
	    
	    function commentUpdateForm(response){
	    	
	    	$("#commentList").html("");
	    	let html = "<form action='./updateComment.favorite'>";
	    	html += "<table class='table table-hover' width='1100'>";
	    	html += "<td><input type='hidden' name='pageNum' value='${pageNum}'></td>"
	    	html += "<td><input type='hidden' name='fileStatus' value='${helpArticle.fileStatus}'></td>"
	    	html += "<td><input type='hidden' name='commentNum' value="+response.commentNum+"></td>";
	    	html += "<td><input type='hidden' name='articleNum' value="+response.articleNum+"></td>";
	    	html += "<td>"+response.id+"</td>";
	    	html += "<td><input type='text' name='commentContent' value="+response.commentContent+"></td>";
	    	html += "<td><input type='submit' class='btn btn-primary' value='저장'></td>";
	    	html += "</table>";
	    	html += "</form>";
	    	$("#commentList").html(html);
	 
	    }
	    
	     function comfirmDelete(obj){
	    	alert("${commentList.id}");
	    	if("${id}"==$(obj).parent().siblings("td[class=id]").html()){
	    		deleteComment(obj);	
	    	}else{
	    		alert("본인의 글이 아닙니다. 다시 한번 확인해주세요.");
	    	}
	     }	
	     function deleteComment(obj){
	    	let msg = confirm("댓글을 삭제합니다.");
	    	if(msg==true){
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
		    			}
		    		}
		    	});
	    	}else{
	    		return false;
	    	}
	    	
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
				html +="<td	class='id' width='100'>"+item.id+"</td>";
				html +="<td class='content' width='600'>"+item.commentContent+"</td>";
				html +="<td	width='210'>"+item.commentDate+"</td>";
				html +="<td><input type='hidden' id='commentNum' value="+item.commentNum+"></td>";
				html +="<td width='100'><button onClick='updateComment(this)' value="+item.commentNum+" class='btn btn-primary' id='updateKey'>수정</button></td>";
				html +="<td width='100'><button onClick='comfirmDelete(this)' value="+item.commentNum+" class='btn btn-primary' id='deleteKey'>삭제</button></td>";
				/* html +="<c:if test='${id!="+item.id+"}'><td width='100'><button onClick='deleteComment(this)' disabled='diabled' value="+item.commentNum+" class='btn btn-primary' id='deleteKey'>삭제</button></td></c:if>";
				html +="<c:if test='${id=="+item.id+"}'><td width='100'><button onClick='deleteComment(this)' value="+item.commentNum+" class='btn btn-primary' id='deleteKey'>삭제</button></td></c:if>"; */
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