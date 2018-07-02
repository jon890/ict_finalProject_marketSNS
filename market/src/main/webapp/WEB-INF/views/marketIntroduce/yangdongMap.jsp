<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<div id="map" style="width:100%;height:400px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=829b550ef1d187e3eb8b49c2475f7f76"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(35.154107, 126.902091), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(35.154107, 126.902091); 

// 마커를 생성합니다
var marker = new daum.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">양동시장 <br><a href="http://map.daum.net/link/map/양동시장,35.154107, 126.902091" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/양동시장!,35.154107, 126.902091" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new daum.maps.LatLng(35.154107, 126.902091); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new daum.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>
<div class="contact_area">
	<h3>양동시장 찾아가는 길</h3>
	<div class="station_wayout">
		<h4 class="tit_findway">지하철역</h4>
		<ul class="list_wayout">
			<li><em>
			<a href="http://map.daum.net?subwayId=KJS330050" target="_blank" class="link_station" data-logtarget data-logevent="waytogo,subway">양동시장역</a>
			</em><img src="resources/images/marketIntroduce/ic_sw51.png">  | 2번 출구 <b>도보2분</b></li>
		</ul>
	</div>
	<div class="station_ride">
		<h4 class="tit_findway">버스정류장</h4>
		<div class="bus-box">
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51985" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장역(북)-상행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 첨단30 | 송암31 | 봉선37 | 금남36 | 금남59 |160 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 매월61 | 유덕65 |송암72 | 임곡89 <br></div>
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51986" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장역(북)-하행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 첨단30 | 송암31 | 금호36 | 봉선37 | 금남59 | 160 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 매월61 | 유덕65 | 송암72 | 임곡89 <br>		
			<img src="resources/images/marketIntroduce/sym_bus_sq3.png"> 마을760</div>
			
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51502" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장-상행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 송암31 | 금남59 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 매월61 | 유덕65 | 대촌71 | 진월79 | 진월177 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq20.png"> 101 | 102 | 103 | 104 | 105 | 106 | 107 </div>	
			
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51503" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장-하행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 송암31 | 금남59 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 매월61 | 유덕65 | 대촌71 | 진월79 | 진월177 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq20.png"> 101 | 102 | 103 | 104 | 105 | 106 | 107 | 108 | 109 </div>	
			
			<div class="bus"><em><a href="http://map.daum.net?busStopId=53500" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장역(천변)-상행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 대촌71 | 용전84 | 송정99 | 진월177 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq20.png"> 101 | 102 | 103 | 104 | 105 | 106 | 107 </div>
			<div class="bus"><em><a href="http://map.daum.net?busStopId=BS119436" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장역(천변)-하행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 대촌69 | 대촌71 | 용전84 | 송정99 | 진월177 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq3.png"> 마을760 </div>
			
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51983" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장역(남)-상행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 송정19 | 문흥39 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 지원56 | 대촌69 | 진월79 | 송정99 <br></div>
			<div class="bus"><em><a href="http://map.daum.net?busStopId=51984" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop">양동시장역(남)-하행</a></em><br>
			<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 송정19 | 문흥39 <br>
			<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 지원56 | 대촌69 | 진월79 | 송정99 <br></div>
			
		</div>
	</div>
</div>
</body>
</html>
    