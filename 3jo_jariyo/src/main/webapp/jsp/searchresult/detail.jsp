<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css" />
<link rel="stylesheet" href="../../css/searchresult/defaultsearch.css" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=bn_2qlSXo7L36N8iYQV6"></script>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	<div id="container">
		<ul class="tablist" role="tablist">
			<li class="tab" role="tab"><a href="#panel1">시설정보</a></li>
			<li class="tab" role="tab"><a href="#panel2">후기</a></li>
			<li class="tab-menu">
				<div class="line"></div>
				<div class="line"></div>
			</li>
		</ul>
		<div class="tabpanel" id="panel1" role="tabpanel">
			<div id="pan11">
				<div id="map" style="width:100%;height:500px;"></div>
				<div>
					<h3>운정건강공원1 축구장/테니스장</h3><button type="button" onclick="location.href='/3jo_jariyo/jsp/booking/booking.jsp'">예약하기</button>
					<div>시설 주소 : 경기도 파주시 와석순환로 198</div>
					<div>시설종류 : 축구장</div>
					<div>시간당 이용요금 : 60000</div>
					<div>평일 운영시간 : 07시~22시</div>
					<div>주말 운영시간 : 07시~22시</div>
				</div>
			</div>
		</div>
		<div class="tabpanel" id="panel2" role="tabpanel">

				<div class="reviewcontent">
					<h5>김아무개</h5>
					<p>역에서도 가깝고, 운동장 깔끔하고 좋네요! 상대로 만난 팀들도 매너있게 플레이하시고 잘 즐기다 갑니다! 다음에는 교회 청년부 축구회를 여기서 해야겠네요 ㅎㅎ!</p>
					<hr>
				</div>
				<div class="reviewcontent">
					<h5>홍길동</h5>
					<p>사평역에서 바로 앞인데다가 축구장도 엄청 넓고 좋네요! 주차장도 여유가 있으니 차를 타고 축구하시러 오시는
						분들에게도 무리가 없을 것 같고, 축구장 잔디도 잘 관리된 듯 느낌이 좋았습니다.</p>
					<hr>
				</div>
				<div class="reviewcontent">
					<h5>김아무개</h5>
					<p>역에서도 가깝고, 운동장 깔끔하고 좋네요! 상대로 만난 팀들도 매너있게 플레이하시고 잘 즐기다 갑니다! 다음에는 교회 청년부 축구회를 여기서 해야겠네요 ㅎㅎ!</p>
					<hr>
				</div>
				
				<div class="reviewcontent">
					<h5>김아무개</h5>
					<p>역에서도 가깝고, 운동장 깔끔하고 좋네요! 상대로 만난 팀들도 매너있게 플레이하시고 잘 즐기다 갑니다! 다음에는 교회 청년부 축구회를 여기서 해야겠네요 ㅎㅎ!</p>
					<hr>
				</div>


				<div id="searchcontent">
					<h5>김자바</h5>
					<p>역에서 가깝고, 잔디도 깔끔하고 좋았습니다. 자주 이용하겠습니다~</p>
					<hr>
				</div>


		</div>
		</main>
	<c:import url="../common/mainbarfooter.jsp" />
	<script>
			(function() {
	
				function activateTab() {
					if (activeTab) {
						resetTab.call(activeTab);
					}
					this.parentNode.className = 'tab tab-active';
					activeTab = this;
					activePanel = document.getElementById(activeTab.getAttribute(
							'href').substring(1));
					activePanel.className = 'tabpanel show';
					activePanel.setAttribute('aria-expanded', true);
				}
	
				function resetTab() {
					activeTab.parentNode.className = 'tab';
					if (activePanel) {
						activePanel.className = 'tabpanel hide';
						activePanel.setAttribute('aria-expanded', false);
					}
				}
	
				var doc = document, tabs = doc.querySelectorAll('.tab a'), panels = doc
						.querySelectorAll('.tabpanel'), activeTab = tabs[0], activePanel;
	
				activateTab.call(activeTab);
	
				for (var i = tabs.length - 1; i >= 0; i--) {
					tabs[i].addEventListener('click', activateTab, false);
				}
	
			})();
			var map = new naver.maps.Map('map', {
			    center: new naver.maps.LatLng(37.719137, 126.754612),
			    zoom: 10
			});

			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(37.719137, 126.754612),
			    map: map
			});
		</script>
</body>
</html>