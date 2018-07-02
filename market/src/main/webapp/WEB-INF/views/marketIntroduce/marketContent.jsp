<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>marketContent</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        div.background{
            width:100%;
            height:300px;
        }

        div.background img{
            width:100%;
            height:300px;
            /*opacity:0.7;*/
            z-index:1;
        }

        div.transbox p {
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
            margin:60px;
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

        a.nav-link{
            color:black;
        }
    </style>
</head>
<body>
    <header>

    </header>

    <section>
        <div class="background">
            <img src="./../img/favorite_main.png" />
            <div class="transbox">
                <p id="p01"><ins>마트 정보</ins></p>
                <p id="p02">광주전통시장의 시장정보를 제공해 드립니다</p>
            </div>
        </div>
        <br>
        <div class="container">
            <!--<p>Favorite</p>
            <!-- Nav pills -->
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="pill" href="#home">개요와 역사</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="pill" href="#menu1">상점</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="pill" href="#menu2">볼거리</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="pill" href="#menu3">찾아오는 길</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="pill" href="#menu4">편의시설</a>
                </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div id="home" class="container tab-pane active">
                    <br>
                    <h3>개요와 역사</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
                <div id="menu1" class="container tab-pane fade">
                    <br>
                    <h3>상점</h3>
                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
                <div id="menu2" class="container tab-pane fade">
                    <br>
                    <h3>볼거리</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                </div>
                <div id="menu3" class="container tab-pane fade">
                    <br>
                    <h3>찾아오는 길</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                </div>
                <div id="menu4" class="container tab-pane fade">
                    <br>
                    <h3>편의시설</h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                </div>
            </div>
        </div>
    </section>

    <footer>

    </footer>
</body>
</html>