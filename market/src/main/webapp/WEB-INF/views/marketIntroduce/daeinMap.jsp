<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <title>OOO - 대인시장 찾아오는 길</title>
	    <link rel="stylesheet" href="./resources/css/marketIntroduce/map.css">
	    <script src=https://code.jquery.com/jquery-3.3.1.min.js></script>
	</head>
	
	
	<body>
	
	<div id = "map" style="width: 1080px; height: 350px;"></div>
		
		<div class="contact_area">
			<h3>대인시장 찾아오는 길</h3>
			<div class="station_wayout">
				<h4 class="tit_findway">지하철역</h4>
				<ul class="list_wayout">
					<li>
					<a href="http://map.daum.net?subwayId=KJS310300" target="_blank" class="link_station" data-logtarget data-logevent="waytogo,subway"><em>금남로4가역
					</em><img src="resources/images/marketIntroduce/ic_sw51.png">  | 3번 출구 <b>도보8분</b></a></li>
				</ul>
			</div>
			
			<div class="station_ride">
				<h4 class="tit_findway">버스정류장</h4>
				<div class="bus-box">
					<div class="bus"><a href="http://map.daum.net?busStopId=52002" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>대인시장(서)-상행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석02 | 진월07<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 봉선37 | 금남58<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 지원52 | 두암81 | 지원152<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq3.png"> 마을715</a></div>
					<div class="bus"><a href="http://map.daum.net?busStopId=52586" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>대인시장(서)-하행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석02<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 봉선37 | 금남58<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 지원52 | 대촌70 | 두암81 | 지원152 | 대촌170<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq3.png"> 마을715</a></div>
					<div class="bus"><a href="http://map.daum.net?busStopId=51999" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>대인시장(동)-상행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석06<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 문흥39 | 운림54 | 송정98<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 석곡87 | 지원151 | 용전184 | 419 | 518 </a></div>	
					<div class="bus"><a href="http://map.daum.net?busStopId=52586" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>대인시장(동)-하행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 좌석06<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 문흥39 | 운림54 | 송정98<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 석곡87 | 지원151 | 용전184 | 419 | 518</a></div>	
				</div>
			</div>
			
		</div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=829b550ef1d187e3eb8b49c2475f7f76"></script>
		<!-- <script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new daum.maps.LatLng(35.153411,126.918099), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
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
		
		</script> -->
		
		<script>

		
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		/* 나주식당 - 35.1535322,126.9180352,
		에이맥스미술 - 35.152343, 126.918534, 
		오른쪽 위 -35.155650, 126.923437
		왼쪽 아래 - 35.152337, 126.913049(금남분식) */
		 options = { 
	        center: new daum.maps.LatLng(35.153411,126.918099), // 지도의 중심좌표
	    }; 
		
		var map = new daum.maps.Map(mapContainer, options);
		
		map.setLevel(3, {anchor: new daum.maps.LatLng(35.153411,126.918099)});
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
		
		
		
		var points = [
		    new daum.maps.LatLng(35.155650, 126.923437),
		    new daum.maps.LatLng(35.1535322,126.9180352),
		    new daum.maps.LatLng(35.152337, 126.913049)
		];

		// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
		var bounds = new daum.maps.LatLngBounds();    

		var i
		for (i = 0; i < points.length; i++) {		    
		    // LatLngBounds 객체에 좌표를 추가합니다
		    bounds.extend(points[i]);
		}
		map.setBounds(bounds);
		map.setLevel(3);
		map.setCenter(new daum.maps.LatLng(35.154895, 126.912787));
		/* function setBounds() {
		    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
		    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
		   
		    map.setCenter(new daum.maps.Coords(481049,460428).toLatLng());
		    map.setLevel(3);
		    map.setBounds(bounds);
		   
		} */
		
		/* $(window).on("load",setBounds()); */
		
		
		</script>
		
	
	
		
	</body>
</html>
