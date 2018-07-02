<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="./resources/css/common/common.css">
    <meta charset="utf-8">
    
    <title>마커에 인포윈도우 표시하기</title>
<style>
	.contact_area{
		position:relative;
		height:600px;
		z-index:10;
		margin:-62px 35px 0;
		padding: 33px 35px 0px;
		border:1px solid rgba(0,0,0,0.06);
		box-shadow: 0 0 6px rgba(0,0,0,0.03);
		background:#fff;
		background-clip:padding-box;
	}
	.station_wayout{
		boder-top: 1px solid #f2f2f2;
		padding-bottom:13px;
	}
	ul{
		list-style: none;
	}
	
	.tit_findway{
		padding: 13px 0 3px;
	}
	.bus-box{
		
	}
	.bus{
		float: left;
		width:45%;
		margin-right:15px;
		margin-bottom:15px;
	}
	a{
		color : #000;
		text-decoration: none;
	}
</style>
</head>
<body>

<div id = "map" style="width: 100%; height: 400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=829b550ef1d187e3eb8b49c2475f7f76"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(35.153411,126.918099), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(35.153411,126.918099); 

// 마커를 생성합니다
var marker = new daum.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">대인시장 <br><a href="http://map.daum.net/link/map/대인시장,35.153411,126.918099" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/대인시장!,35.153411,126.918099" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new daum.maps.LatLng(35.153411,126.918099); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
<div class="contact_area">
	<h3>대인시장 찾아가는 길</h3>
	<div class="station_wayout">
		<h4 class="tit_findway">지하철역</h4>
		<ul class="list_wayout">
			<li><em>
			<a href="http://map.daum.net?subwayId=KJS310300" targer="_blank" class="link_station" data-logtarget data-logevent="waytogo,subway">금남로4가역</a>
			</em><img src="resources/images/marketIntroduce/ic_sw51.png">  | 3번 출구 <b>도보8분</b></li>
		</ul>
	</div>
	<div class="station_ride">
		<h4 class="tit_findway">버스정류장</h4>
		<div class="bus-box">
			<div class="bus"><em><a href="http://map.daum.net?busStopId=52002" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">대인시장(서)-상행</em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석02 | 진월07<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 봉선37 | 금남58<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 지원52 | 두암81 | 지원152<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq3.png"> 마을715</div>
			<div class="bus"><em><a href="http://map.daum.net?busStopId=52586" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">대인시장(서)-하행</em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석02<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 봉선37 | 금남58<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 지원52 | 대촌70 | 두암81 | 지원152 | 대촌170<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq3.png"> 마을715</div>
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51999" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">대인시장(동)-상행</em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석06<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 문흥39 | 운림54 | 송정98<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 석곡87 | 지원151 | 용전184 | 419 | 518 </div>	
			<div class="bus"><em><a href="http://map.daum.net?busStopId=52586" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">대인시장(동)-하행</em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석06<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 문흥39 | 운림54 | 송정98<br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 석곡87 | 지원151 | 용전184 | 419 | 518</div>	
		</div>
	</div>
</div>
</body>
</html>
