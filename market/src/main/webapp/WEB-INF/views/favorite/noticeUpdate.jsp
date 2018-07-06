<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
		<title>아따시장 - 공지사항</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    
	    <style>
	        #p{
	            font-size:30px;
	            text-align:center;
	        }
	
	        table.table-bordered{
	            width:700px;
	            margin:0 auto;
	            font-size:20px;
	        }
	
	        .th01{
	            width:30%;
	            font-weight:400;
	        }
	        
	        #th02{
	        	text-align:left;
	        }
	
	        div.container {
	            text-align:center;
	        }
	
	        .btn-primary{
	            margin:10px;
	        }
	        
	        input[type=text]{
	        	border:none;
	        	width:100%;
	        }
	        
	        textarea{
	        	width:100%;
	        	border:none;
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
	                <p id="p01">공지사항</p>
	                <p id="p02">우리 사이트의 공지사항을 알려드립니다</p>
	            </div>
        	</div>
        	
		    <br>
		    <form action="noticeUpdate.favorite" method="post">
			    <input type="hidden" name="pageNum" value="${pageNum}">
			    <input type="hidden" name="articleNum" value="${noticeContent.articleNum}">
		        <div class="container">
		            <p id="p">수정하기</p>
		            <table class="table table-bordered">
		                <tr>
		                    <th class="th01">제목</th>
		                    <th id="th02"><input type="text" name="title" value="${noticeContent.title}"></th>
		                </tr>
		                <tr>
		                    <td class="th01">아이디</td>
		                    <td id="th02">${id}</td>
		                </tr>
		                <tr>
		                    <td class="th01">내용</td>
		                    <td><textarea name="content" id="content">${noticeContent.content}</textarea></td>
		                </tr>
		            </table>
		        </div>
		        <div class="container">
		            <input type="submit" class="btn btn-primary" value="작성완료"/>
		            <input type="reset" class="btn btn-danger" value="취소"/>
		        </div>
	        </form>
	    </section>
	
	    <footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
	
</html>