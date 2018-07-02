<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
	    <meta charset="utf-8" />
	    <title>OOO - 광주의 시장</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="./resources/css/common/common.css">
	    <link rel="stylesheet" href="./resources/css/marketIntroduce/marketMain.css">
	    
	</head>
	
	
	<body>
	
    	<header id="mainMenu">
			<!-- mainMenu.jsp 파일 include -->
			<%@ include file="./../common/mainMenu.jsp" %>
		</header>
	
	    <section>
	        <div class="background">
	            <img src="./resources/images/marketIntroduce/marketIntroduce_main.png" />
	            <div class="transbox">
	                <p id="p01"><ins>광주의 시장</ins></p>
	                <p id="p02">광주전통시장의 지역시장정보를 제공해 드립니다</p>
	            </div>
	        </div>
	        <br>
	        <div class="container">
	            <ul class="nav nav-pills" role="tablist">
	                <li class="nav-item">
	                    <a class="nav-link active" data-toggle="pill" href="#home">전체</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" data-toggle="pill" href="#menu1">동구</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" data-toggle="pill" href="#menu2">서구</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" data-toggle="pill" href="#menu3">남구</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" data-toggle="pill" href="#menu4">북구</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" data-toggle="pill" href="#menu5">광산구</a>
	                </li>
	            </ul>
	
	            <!-- Tab panes -->
	            <div class="tab-content">
	                <div id="home" class="container tab-pane active">
	                    <br>
	                    <div class="container">
	                        <table class="table table-striped">
	                            <thead>
	                                <tr>
	                                    <th id="th01">이름</th>
	                                    <th id="th02">개설주기</th>
	                                    <th id="th03">이용시간</th>
	                                    <th id="th04">주소</th>
	                                    <th id="th05">전화번호</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="market" items="${marketList}">
	                            		<tr>
	                            			<td>${market.marketName}</td>
	                            			<td>${market.marketOpening}</td>
	                            			<td>${market.marketHours}</td>
	                            			<td>${market.marketAddress}</td>
	                            			<td>${market.marketPhone}</td>	                            			
	                            	</c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <!-- 동구만 출력 -->
	                <div id="menu1" class="container tab-pane fade">
	                    <br>
	                    <div class="container">
	                        <table class="table table-striped">
	                            <thead>
	                                <tr>
	                                    <th id="th01">이름</th>
	                                    <th id="th02">개설주기</th>
	                                    <th id="th03">이용시간</th>
	                                    <th id="th04">주소</th>
	                                    <th id="th05">전화번호</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="market" items="${marketList}">
										<c:if test="${market.marketName.equals('대인시장')}">
											<tr>
												<td><a href="./daein.mid">${market.marketName}</a></td>
												<td>${market.marketOpening}</td>
												<td>${market.marketHours}</td>
												<td>${market.marketAddress}</td>
												<td>${market.marketPhone}</td>
											</tr>
										</c:if>
									</c:forEach>
									
                            	    <c:forEach var="market" items="${marketList}">
										<c:if test="${market.marketName.equals('남광주시장')}">
											<tr>
												<td><a href="./namgwangju.mid">${market.marketName}</a></td>
												<td>${market.marketOpening}</td>
												<td>${market.marketHours}</td>
												<td>${market.marketAddress}</td>
												<td>${market.marketPhone}</td>
											</tr>
										</c:if>
									</c:forEach>
                            	                            	
	                            	<c:forEach var="market" items="${marketList}">
	                            	<c:if test="${market.marketLoc.equals('동구')}">
	                            		<c:if test="${!market.marketName.equals('대인시장') && !market.marketName.equals('남광주시장')}">
	                            		<tr>
	                            			<td>${market.marketName}</td>
	                            			<td>${market.marketOpening}</td>
	                            			<td>${market.marketHours}</td>
	                            			<td>${market.marketAddress}</td>
	                            			<td>${market.marketPhone}</td>
	                            		</tr>
	                            		</c:if>
	                            	</c:if>                           			
	                            	</c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <div id="menu2" class="container tab-pane fade">
	                    <br>
	                    <div class="container">
	                        <table class="table table-striped">
	                            <thead>
	                                <tr>
	                                    <th id="th01">이름</th>
	                                    <th id="th02">개설주기</th>
	                                    <th id="th03">이용시간</th>
	                                    <th id="th04">주소</th>
	                                    <th id="th05">전화번호</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="market" items="${marketList}">
										<c:if test="${market.marketName.equals('양동시장')}">
											<tr>
												<td><a href="./yangdong.mid">${market.marketName}</a></td>
												<td>${market.marketOpening}</td>
												<td>${market.marketHours}</td>
												<td>${market.marketAddress}</td>
												<td>${market.marketPhone}</td>
											</tr>
										</c:if>
									</c:forEach>
	                            
	                            	<c:forEach var="market" items="${marketList}">
	                            	<c:if test="${market.marketLoc.equals('서구')}">
	                            		<c:if test="${!market.marketName.equals('양동시장')}">
	                            		<tr>
	                            			<td>${market.marketName}</td>
	                            			<td>${market.marketOpening}</td>
	                            			<td>${market.marketHours}</td>
	                            			<td>${market.marketAddress}</td>
	                            			<td>${market.marketPhone}</td>
	                            		</tr>
	                            		</c:if>
	                            	</c:if>	                            			
	                            	</c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <div id="menu3" class="container tab-pane fade">
	                    <br>
	                    <div class="container">
	                        <table class="table table-striped">
	                            <thead>
	                                <tr>
	                                    <th id="th01">이름</th>
	                                    <th id="th02">개설주기</th>
	                                    <th id="th03">이용시간</th>
	                                    <th id="th04">주소</th>
	                                    <th id="th05">전화번호</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="market" items="${marketList}">
	                            	<c:if test="${market.marketLoc.equals('남구')}">
	                            		<tr>
	                            			<td>${market.marketName}</td>
	                            			<td>${market.marketOpening}</td>
	                            			<td>${market.marketHours}</td>
	                            			<td>${market.marketAddress}</td>
	                            			<td>${market.marketPhone}</td>
	                            		</tr>
	                            	</c:if>	                            			
	                            	</c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <div id="menu4" class="container tab-pane fade">
	                    <br>
	                    <div class="container">
	                        <table class="table table-striped">
	                            <thead>
	                                <tr>
	                                    <th id="th01">이름</th>
	                                    <th id="th02">개설주기</th>
	                                    <th id="th03">이용시간</th>
	                                    <th id="th04">주소</th>
	                                    <th id="th05">전화번호</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="market" items="${marketList}">
										<c:if test="${market.marketName.equals('말바우시장')}">
											<tr>
												<td><a href="./malbawoo.mid">${market.marketName}</a></td>
												<td>${market.marketOpening}</td>
												<td>${market.marketHours}</td>
												<td>${market.marketAddress}</td>
												<td>${market.marketPhone}</td>
											</tr>
										</c:if>
									</c:forEach>
	                            
	                            	<c:forEach var="market" items="${marketList}">
	                            	<c:if test="${market.marketLoc.equals('북구')}">
	                            		<c:if test="${!market.marketName.equals('말바우시장')}">
	                            		<tr>
	                            			<td>${market.marketName}</td>
	                            			<td>${market.marketOpening}</td>
	                            			<td>${market.marketHours}</td>
	                            			<td>${market.marketAddress}</td>
	                            			<td>${market.marketPhone}</td>
	                            		</tr>
	                            		</c:if>
	                            	</c:if>	                            			
	                            	</c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <div id="menu5" class="container tab-pane fade">
	                    <br>
	                    <div class="container">
	                        <table class="table table-striped">
	                            <thead>
	                                <tr>
	                                    <th id="th01">이름</th>
	                                    <th id="th02">개설주기</th>
	                                    <th id="th03">이용시간</th>
	                                    <th id="th04">주소</th>
	                                    <th id="th05">전화번호</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="market" items="${marketList}">
										<c:if test="${market.marketName.equals('1913송정역시장')}">
											<tr>
												<td><a href="./seongjung.mid">${market.marketName}</a></td>
												<td>${market.marketOpening}</td>
												<td>${market.marketHours}</td>
												<td>${market.marketAddress}</td>
												<td>${market.marketPhone}</td>
											</tr>
										</c:if>
									</c:forEach>
	                            	<c:forEach var="market" items="${marketList}">
	                            	<c:if test="${market.marketLoc.equals('광산구')}">
	                            		<c:if test="${!market.marketName.equals('1913송정역시장')}">
	                            		<tr>
	                            			<td>${market.marketName}</td>
	                            			<td>${market.marketOpening}</td>
	                            			<td>${market.marketHours}</td>
	                            			<td>${market.marketAddress}</td>
	                            			<td>${market.marketPhone}</td>
	                            		</tr>
	                            		</c:if>
	                            	</c:if>	                            			
	                            	</c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </section>
	 
		<footer id="mainFooter">
			<!-- mainFooter.jsp 파일 include -->
			<%@ include file="./../common/mainFooter.jsp" %>
		</footer>
	</body>
</html>