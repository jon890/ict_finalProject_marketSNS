<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="utf-8">
	    <title>아따시장 - 말바우시장 찾아오는 길</title>
	    <link rel="stylesheet" href="./resources/css/marketIntroduce/map.css">
	</head>
	
		<body>
		<div id="map" style="width:100%;height:350px;"></div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=829b550ef1d187e3eb8b49c2475f7f76"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new daum.maps.LatLng(35.173853, 126.920129), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new daum.maps.Map(mapContainer, mapOption);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new daum.maps.LatLng(35.173853, 126.920129); 
		
		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;">말바우시장 <br><a href="http://map.daum.net/link/map/말바우시장,35.173853, 126.920129" style="color:blue" target="_blank">큰지도보기</a> <a href="http://map.daum.net/link/to/말바우시장!,35.173853, 126.920129" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new daum.maps.LatLng(35.173853, 126.920129); //인포윈도우 표시 위치입니다
		
		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
		    position : iwPosition, 
		    content : iwContent 
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker); 
		map.setCenter(new daum.maps.LatLng(35.174933, 126.914698));
		
		/* var points = [
		    new daum.maps.LatLng(35.176044, 126.930532),
		    new daum.maps.LatLng(35.176413, 126.910308),
		    new daum.maps.LatLng(35.170308, 126.910636)
		    35.177491, 126.910108
		    35.177792, 126.911469
		];

		// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
		var bounds = new daum.maps.LatLngBounds();    

		var i
		for (i = 0; i < points.length; i++) {		    
		    // LatLngBounds 객체에 좌표를 추가합니다
		    bounds.extend(points[i]);
		}
		map.setBounds(bounds);
		map.setLevel(4); */
		
		
		/* 35.176044, 126.930532 - 무궁화아파트 근처
		35.176413, 126.910308 - 공동실습관 근처
		35.170308, 126.910636 - 보성녹차돼지	 */	 
		</script>
		<div class="contact_area">
			<h3>말바우시장 찾아오는 길</h3>
			
			<div class="station_ride">
				<h4 class="tit_findway">버스정류장</h4>
				<div class="bus-box">
					<div class="bus"><a href="http://map.daum.net?busStopId=51528" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>말바우시장(서)-상행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 송정19 | 봉선27 | 일곡28 | 일곡38 | 160<br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 금남55 | 문흥80 | 두암81 | 용봉83 | 518 </a></div>
					<div class="bus"><a href="http://map.daum.net?busStopId=51529" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>말바우시장(서)-하행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 송정19 | 봉선27 | 일곡28 | 일곡38 | 160 <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 금남55 | 문흥80 | 두암81 | 용봉83 | 518 </a></div>
					
					<div class="bus"><a href="http://map.daum.net?busStopId=51533" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>양동시장-상행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 매월06 <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 지원15 | 문흥39 | 송암47 | 운림54 | <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 운림35 | 두암81 | 석곡87 | 두암181 | 충효187 | 518 <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq20.png"> 1-1 | 2-1 | 2-3 | 2-4 | 2-5 | 3-1 | 4-1 | 4-2 | 4-3 | 4-8 | 5-1 | 5-2 | 5-4 | 5-5 | 6-1 | 6-2 | 7-1 | 7-2 | 8-1 | 311 | 322 | 322-1 | </a></div>	
					
					<div class="bus"><a href="http://map.daum.net?busStopId=51534" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>말바우시장(동)-하행</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq15.png"> 매월06 <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq11.png"> 지원15 | 송암47 | 운림54 <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq12.png"> 운림35 |두암81 | 석곡87 | 두암181 | 충효187 |518 <br>
					<img src="resources/images/marketIntroduce/sym_bus_sq20.png"> 1-1 | 2-1 | 2-3 | 2-4 | 3-1 | 3-2 | 4-1 | 4-2 | 4-3 | 4-4 | 5-2 | 5-4 | 5-5 | 6-1 | 6-2 | 7-1 | 7-2 | 8-1 | 311 | 322 | 322-1 </a></div>	
					
					<div class="bus"><a href="http://map.daum.net?busStopId=BS194265" class="link_wayout" target="_blank" data-logtarget data-logevent="waytogo,busstop"><em>문화동정류소</em><br>
					<img src="resources/images/marketIntroduce/sym_bus_sq20.png"> 311 | 322 </a></div>			
				</div>
			</div>
		</div>
	</body>
</html>   