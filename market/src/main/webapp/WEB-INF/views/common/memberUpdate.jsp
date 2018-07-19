<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따~ 시장 - 회원 정보 수정</title>
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/common/backgroundStyle.css">
	    
	    <style>
	    	#updateContents{
	    		margin : 0 auto;
	    		width : 600px;
	    	}
	    	
	    	#updateFormTable{
	    		text-align : center;
	    	}
	    </style>
	    
	    <script>
	    	$(document).ready(function(){
	    		$("#memberDelete").click(function(){
	    			let deleteChk = confirm("정말로 탈퇴하시겠습니까?");
	    			if(deleteChk == true){
	    				location.href = "./memberDelete.main?id=${id}";
	    				alert("${id}님 정상적으로 탈퇴되셨습니다.")
	    			}
	    		});
	    	});
	    </script>
	</head>
	
	<body>
		<header id="mainMenu"><%@ include file="./../common/mainMenu.jsp" %></header>
		
		<section>
			<div class="background">
	            <img src="./resources/images/favorite/favorite_main.png">
	            <div class="transbox">
	                <p id="p01">회원 정보 수정</p>
	                <p id="p02">회원정보를 수정하실 수 있는 공간입니다.</p>
	            </div>
        	</div>
        	
        	<div id="updateContents">
        		<form action="memberUpdate.main" method="POST">
	        		<table id="updateFormTable" class="table table-striped">
	        			<tr>
	        				<td>아이디</td>
	        				<td>${memberUpdate.id}</td>
	        			</tr>
			
	        			<c:if test="${memberUpdate.id.endsWith('(Kakao)') == false}">
	        				<tr>
	        					<td>현재 비밀번호 입력</td>
	        					<td><input type="password"></td>
	        				</tr>
	        				<tr>
	        					<td>수정할 비밀번호</td>
	        					<td><input type="password" name="password"></td>
	        				</tr>
	        			
		        			<tr>
		        				<td>수정할 비밀번호 확인</td>
		        				<td><input type="password"></td>
		        			</tr>
	        			</c:if> 
	        				
	        			<tr>
	        				<td>이름</td>
	        				<c:if test="${memberUpdate.name == null}">
	        					<td><input type="text" name="name"></td>
	        				</c:if>
	        				
	        				<c:if test="${memberUpdate.name != null}">
	        					<td>${memberUpdate.name}</td>
	        				</c:if>
	        			</tr>
	        			
	        			<tr>
	        				<td>나이</td>
	        				<c:if test="${memberUpdate.age == 0}">
	        					<td><input type="number" name="age"></td>
	        				</c:if>
	        				
	        				<c:if test="${memberUpdate.age != 0}">
	        					<td>${memberUpdate.age}</td>
	        				</c:if>
	        			</tr>
	        			
	        			<tr>
	        				<td>성별</td>
	        				<c:if test="${memberUpdate.gender == null}">
	        					<td>
	        					<input type="radio" name="gender" value="남">남
								<input type="radio" name="gender" value="여">여
								</td>
	        				</c:if>
	        				
	        				<c:if test="${memberUpdate.gender != null}">
	        					<td>${memberUpdate.gender}</td>
	        				</c:if>
	        				
	        			</tr>
	        			
	        			<tr>
	        				<td colspan="2">
								<input type="submit" class="btn" value="수정완료">
								<input type="button" class="btn" value="회원탈퇴" id="memberDelete">
	        				</td>
	        			</tr>
	        		</table>
        		</form>
        	</div>
	    </section>
	    <footer id="mainFooter"><%@ include file="./../common/mainFooter.jsp" %></footer>
	</body>
</html>