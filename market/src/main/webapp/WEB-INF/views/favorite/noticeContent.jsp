<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>OOO - 공지사항 글쓰기</title>
		<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<script src=https://code.jquery.com/jquery-3.3.1.min.js></script>
		<link rel="stylesheet" href="./resources/css/common/common.css">
		<link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
		<link rel="stylesheet" href="./resources/css/favorite/noticeContent.css">
	</head>
	
	<body>
		<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp"%>
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
			<div class="container">
				<input type="hidden" name="pageNum" value="${pageNum}">
				<table class="table">
					<thead>
						<tr>
							<td>글쓴이</td>
							<td colspan="3" class="td01">${noticeContent.id}</td>
						</tr>
						<tr>
							<td>제목</td>
							<td class="td01">${noticeContent.title}</td>
							<td>날짜</td>
							<td class="td01">${noticeContent.writeDate}</td>
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
					<tr>
						<td colspan="4" align="right">
							<c:if test="${id == noticeContent.id}">
								<c:if test="${adminChk == 1}">
								<input type="button" class="btn btn-primary" value="수정하기"
									onclick="document.location.href='/market/noticeUpdate.favorite?articleNum=${noticeContent.articleNum}&pageNum=${pageNum}'">
								<input type="button" class="btn btn-primary" value="삭제하기"
									onclick="document.location.href='/market/noticeDelete.favorite?articleNum=${noticeContent.articleNum}&pageNum=${pageNum}'">
								</c:if>
							</c:if>
						</td>

						<td colspan="4" align="right">
							<input type="button" class="btn btn-primary" value="목록으로"
							onclick="document.location.href='/market/notice.favorite?pageNum=${pageNum}'">
						</td>
					</tr>
				</table>
			</div>
		</section>
	
		<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp"%>
		</footer>
	</body>
</html>