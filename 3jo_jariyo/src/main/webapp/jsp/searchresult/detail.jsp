<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css"/>
<link rel="stylesheet" href="../../css/searchresult/defaultsearch.css" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	<div id="container">
		<ul class="tablist" role="tablist">
			<li class="tab" role="tab"><a href="#panel1">시설정보</a></li>
			<li class="tab" role="tab"><a href="#panel2">후기</a></li>
			<li class="tab" role="tab"><a href="#panel3">위치</a></li>
			<li class="tab-menu">
				<div class="line"></div>
				<div class="line"></div>
				<div class="line"></div>
			</li>
		</ul>
		<div class="tabpanel" id="panel1" role="tabpanel">
			<div id="pan11">
				<div>
					<img src="../../img/searchresult/foot.jpg" />
				</div>
				<div>
					<h3>서초구 서초초등학교 운동장</h3>
					<p>서울시 서초구에 위치한 서원초등학교. 사평역 도보 1분거리에 위치하고 있으며, 넓은 운동장에 큰 주차장이
						있습니다. 평일에는 야간에만 이용 가능하지만 라이트가 밝아서 야간에 축구하는데도 무리가 없습니다. 잔디도 천연잔디라서
						미끄러지거나 넘어져도 다치는 일이 거의 없습니다. 많이 이용해주세요 ^^</p>
				</div>
			</div>
		</div>
		<div class="tabpanel" id="panel2" role="tabpanel">
			<h2>서초 초등학교 운동장</h2>
			<h5>서울특별시 서초구 고무래로 63 서원초등학교</h5>
			<hr>
			<div id="pan21">
				<div id="searchcontent">
					<h3>20대 팀인데 서초 근방에서 제일 좋은 것 같아요 ㅎㅎ</h3>
					<p>역에서도 가깝고, 운동장 깔끔하고 좋네요! 상대로 만난 팀들도 매너있게 플레이하시고 잘 즐기다 갑니다! 다음에는 교회 청년부 축구회를 여기서 해야겠네요 ㅎㅎ!</p>
				</div>
			</div>
			<div id="pan22">
				<div id="searchcontent">
					<h3>여기좋아요!</h3>
					<p>사평역에서 바로 앞인데다가 축구장도 엄청 넓고 좋네요! 주차장도 여유가 있으니 차를 타고 축구하시러 오시는
						분들에게도 무리가 없을 것 같고, 축구장 잔디도 잘 관리된 듯 느낌이 좋았습니다.</p>
				</div>
			</div>
			<div id="pan23">
				<div id="searchcontent">
					<h3>여기좋아요!</h3>
					<p>역에서 가깝고, 잔디도 깔끔하고 좋았습니다. 자주 이용하겠습니다~</p>
				</div>
			</div>
		</div>
		<div class="tabpanel" id="panel3" role="tabpanel">
			<div id="pana1">
				<h3>서초구 서초초등학교 운동장</h3>
				<hr>
				<div>
					<img src="../../img/searchresult/map.png" />
				</div>
				<div>
					<table>
						<tr>
							<td>주변 지하철역</td>
							<td>9호선 사평역</td>
							<td><button>지도에서 더보기</button></td>
						</tr>
						<tr>
							<td>주변 버스정류장</td>
							<td>반포리체(22-511)</td>
							<td><button>지도에서 더보기</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		</main>
		<c:import url="../common/mainbarfooter.jsp" />
		</div>
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
		</script>
</body>
</html>