<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	                                    <th id="th02">위치</th>
	                                    <th id="th03">이용시간</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td>남광주야시장</td>
	                                    <td>광주 동구 제봉로17번길 9-9</td>
	                                    <td>07:00 ~ 20:00 / 야시장운영 금,토 일몰후 ~ 23:00</td>
	                                </tr>
	                                <tr>
	                                    <td>양동시장</td>
	                                    <td>광주 서구 천변좌로 238</td>
	                                    <td>07:00 ~ 21:00</td>
	                                </tr>
	                                <tr>
	                                    <td>무등시장</td>
	                                    <td>광주 남구 군분로 27</td>
	                                    <td>08:00 ~ 20:00</td>
	                                </tr>
	                                <tr>
	                                    <td>말바우시장</td>
	                                    <td>광주 북구 서방로81번길 27</td>
	                                    <td>08:00 ~ 20:00</td>
	                                </tr>
	                                <tr>
	                                    <td>1913 송정역시장</td>
	                                    <td>광주 광산구 송정로8번길 13</td>
	                                    <td>주중 11:00 ~ 22:00 / 금,토,일 11:00 ~ 23:00 / 주류판매점 ~ 24:00</td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <div id="menu1" class="container tab-pane fade">
	                    <br>
	                    <h3>동구</h3>
	                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	                </div>
	                <div id="menu2" class="container tab-pane fade">
	                    <br>
	                    <h3>서구</h3>
	                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	                </div>
	                <div id="menu3" class="container tab-pane fade">
	                    <br>
	                    <h3>남구</h3>
	                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	                </div>
	                <div id="menu4" class="container tab-pane fade">
	                    <br>
	                    <h3>북구</h3>
	                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
	                </div>
	                <div id="menu5" class="container tab-pane fade">
	                    <br>
	                    <h3>광산구</h3>
	                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
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