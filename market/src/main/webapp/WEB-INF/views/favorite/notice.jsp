<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    
	    <!-- 부트스트랩 및 jQuery 로드 -->
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	    
	    
	    <style>
	        .container{
	            width : 1080px;
	            margin : 0 auto;
	        }
	
	        #p{
	            font-size : 30px;
	            text-align : center;
	            margin : 40px;
	        }
	
	        #th01{
	            width : 15%;
	        }
	
	        #th02{
	            width : 50%;
	        }
	
	        #th03{
	            width : 20%;
	        }
	
	        #th04{
	            width : 15%;
	        }
	    </style>
	</head>


	<body>
	    <div class="container">
	        <p id="p">공지사항</p>
	        <table class="table table-hover">
	        
	            <thead>
	                <tr>
	                    <th id="th01">번호</th>
	                    <th id="th02">제목</th>
	                    <th id="th03">글쓴이</th>
	                    <th id="th04">등록일</th>
	                </tr>
	            </thead>
	            
	            <tbody>
	                <tr>
	                    <td>1</td>
	                    <td>Doe</td>
	                    <td>john</td>
	                    <td>2018.06.27</td>
	                </tr>
	                <tr>
	                    <td>2</td>
	                    <td>Moe</td>
	                    <td>mary</td>
	                    <td>2018.06.27</td>
	                </tr>
	                <tr>
	                    <td>3</td>
	                    <td>Dooley</td>
	                    <td>july</td>
	                    <td>2018.06.27</td>
	                </tr>
	            </tbody>
	        </table>
	    </div>
	
	    <div class="container">
	        <ul class="pagination justify-content-center">
	            <li class="page-item"><a class="page-link" href="javascript:void(0);">Previous</a></li>
	            <li class="page-item"><a class="page-link" href="javascript:void(0);">1</a></li>
	            <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
	            <li class="page-item"><a class="page-link" href="javascript:void(0);">Next</a></li>
	        </ul>
	    </div>
	</body>
	
</html>