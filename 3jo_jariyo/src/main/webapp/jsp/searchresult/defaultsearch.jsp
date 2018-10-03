<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/3jo_jariyo/css/common/headerfooter.css" />
<link rel="stylesheet" href="/3jo_jariyo/css/searchresult/defaultsearch.css" />
<script>
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	<article>
	<aside>
	<div>
		<form action="/3jo_jariyo/jariyo/searchresult.j" method="post">
			<div>
				<h4>검색</h4>
			</div>
			<div>
				<div>
					<label for="category">시설종류</label> <select id="category">
						<option value="0">선택</option>
						<option value="1">체육관</option>
						<option value="2">풋살장</option>
					</select>
				</div>
			</div>
			<div>
				<label for="keyword">지역/시설 이름</label><br>
				<input type="text" id="keyword" placeholder="검색어" name="searchword">
			</div>
			<div>
				<label for="mydata">시설 이용 날짜</label><br><input type="date" />
			</div>
			<button type="submit">검색</button>
		</form>
	</div>
	</aside>
	<section>
	<div id="container">
			<ul class="tablist" role="tablist">
				<li class="tab" role="tab"><a href="#panel1">거리순</a></li>
				<li class="tab" role="tab"><a href="#panel2">요금순</a></li>
				<li class="tab" role="tab"><a href="#panel3">별점순</a></li>
				<li class="tab-menu">
					<div class="line"></div>
					<div class="line"></div>
					<div class="line"></div>
				</li>
			</ul>
			<div class="tabpanel" id="panel1" role="tabpanel">
				<div id="pan11">
				<c:forEach var="distance" items="${distancelistresult}" begin="0" end="7">
					<div class="searchcontent">
						<h3>
							<a href="/3jo_jariyo/jariyo/detailView.j?no=${distance.placeNo}">${distance.placeName}</a>
						</h3>
						<div>시설 주소 : ${distance.placeRoadAddr}</div>
						<div>연락처 : ${distance.placePhoneNo}</div>
						<button type="button" onclick="location.href='/3jo_jariyo/jariyo/detailView.j?no=${distance.placeNo}'">상세보기</button>
						<hr>
					</div>
				</c:forEach>
				
				</div>
			</div>
		<div class="tabpanel" id="panel2" role="tabpanel">
			<div id="pan21">
				<c:forEach var="charge" items="${chargelistresult}" begin="0" end="7">
					<div id="searchcontent">
						<h3>
							<a href="/3jo_jariyo/jariyo/detailView.j?no=${charge.placeNo}">${charge.placeName}</a>
						</h3>
						<div>시설 주소 : ${charge.placeRoadAddr}</div>
						<div>연락처 : ${charge.placePhoneNo}</div>
						<button type="button"
							onclick="location.href='/3jo_jariyo/jariyo/detailView.j?no=${charge.placeNo}'">상세보기</button>
						<hr>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tabpanel" id="panel3" role="tabpanel">
				<div id="pan31">
				<c:forEach var="star" items="${placePointlist}" begin="0" end="7">
					<div class="searchcontent">
						<h3>
							<a href="/3jo_jariyo/jariyo/detailView.j?no=${star.placeNo}">${star.placeName}</a>
						</h3>
						<div>시설 주소 : ${star.placeRoadAddr}</div>
						<div>시설 연락처 : ${star.placePhoneNo}</div>
						<button type="button" onclick="location.href='/3jo_jariyo/jariyo/detailView.j?no=${star.placeNo}'">상세보기</button>	
						<hr>
					</div>
				</c:forEach>
				</div>
			</div>
		</div>
		</section>
		</article>
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
		</script>
</body>
</html>