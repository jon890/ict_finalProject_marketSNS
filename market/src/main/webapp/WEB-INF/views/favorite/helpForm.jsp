<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - 고객센터</title>
	    
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <link rel="stylesheet" href="./resources/css/favorite/helpForm.css">
	    <script src=https://code.jquery.com/jquery-3.3.1.min.js></script>
	    <script type="text/javascript">
		    $("input[type=submit]").on("click",function(event){
				
				let title = $("#title").val().trim();
				
				let content= $("#content").val().trim();
				
				if(title==null || title.length==0){
					alert("제목을 입력하세요.");
					return false;
				}
				if(content==null||content.length==0){
					alert("내용을 입력하세요.");
					return false;
				}
	
			});
	   </script>
	   <style>
	   	 
	   </style>
	</head>
	
	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	            <img src="./resources/images/favorite/favorite.png" />
	            <div class="transbox">
	                <p id="p01">고객센터</p>
	                <p id="p02">고객의 소리를 담아드립니다</p>
	            </div>
        	</div>
        	<br>
		    <form action="./write.favorite" method="post" enctype="multipart/form-data">
		    <div class="container">
			    <div id="div">
			        <div id="div01">
			            <span id="span01">아따~ 시장</span>에서
			            <br>궁금하신 사항을
			            <br><span id="span02">문의하는 공간</span>입니다.
			            <br><br>담당자가 확인 후
			            <br>신속하게 답변해 드리겠습니다.
			        </div>
			        <div id="div02">
			            <table>
			                <tr>
			                	<td id="td01">아이디</td>
			                    <td>${id}</td>
			                </tr>
			                <tr>
				                 <td id="td01">제목</td>
				                 <td id="td02"><input type="text" id="title" name="title"/></td>
			                </tr>
			                <tr>
			                    <td id="td01">내용</td>
			                    <td id="td02"><textarea name="content" id="content"></textarea></td>
			                </tr>
			                  <tr>
							  <td colspan="2">
							 	<input type="file" name = "fname" multiple ="multiple" value="파일첨부">
							  </td>
						    </tr>  
			                
			            </table> 
			        </div>
			    </div>
			    <div id="div02">
			        <input type="submit" value="완료" class="faba"/>
			        <input type="reset" value="취소" class="faba"/>	        
			    </div>
		    </div>
		    </form>
		 </section>
	     
	     <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	</body>
</html>