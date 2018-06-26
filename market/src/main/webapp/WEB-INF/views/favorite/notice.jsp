<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 공지사항</title>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="/resources/css/favorite/notice.css">
	</head>
	
	<body>
	
		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
		
		<section>
		
			<article>
				<img id="noticeImg" src="./resources/images/favorite/notice.png">
				<div id="noticeTitle">
					<h1>Favorite</h1>
					<p>저희들이 엄선한 알찬 정보를 제공해드립니다!</p>
				</div>
				
			</article>
			
			<article>
			
			</article>
			
			<article>
			
			</article>
		
		
		</section>
		
		
		<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	    
	</body>
</html>