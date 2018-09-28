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
<script>
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	<article>
	<aside>
	<div>
		<form action="/3jo_jariyo/jsp/defaultsearch.jsp" method="post">
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
				<label for="keyword">지역/시설 이름</label><br> <input type="text"
					id="keyword" placeholder="검색어">
			</div>
			<div>
				<label for="mydata">시설 이용 날짜</label><br><input type="date" name="mydata" />
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
				<%-- <c:forEach var="distance" items="${placeDistancelist}" begin="1" end="8"
					varStatus="stat">
					<div class="searchcontent">
						<h3>
							<a href="detail.jsp">서초구 서초초등학교</a>	//distance.place_name
						</h3>
						<div>시설 주소 : 서울특별시 서초구 서운로 178</div>	//distance.place_detail_addr
						<div>시설종류 : 공공시설</div>						//distance.
						<!-- 시설도로명주소 + 상세주소 -->
						<div>시설 연락처 : 0212345678</div>					// distance.phone_no
						<button type="button" onclick="">상세보기</button>	
						<hr>
					</div>
				</c:forEach> --%>
				<div id="searchcontent">
						<h3>
							<a href="detail.jsp">운정건강공원1 축구장/테니스장</a>
						</h3>
						<div>시설 주소 : 경기도 파주시 와석순환로 198</div><!-- 시설도로명주소 + 상세주소 -->
						<div>시설종류 : 축구장</div>
						<div>시설 연락처 : 0212345678</div>
						<button type="button" onclick="">상세보기</button>
						<hr>
					</div>
				</div>
				<div id="pan12">
					<div id="searchcontent">
						<h3>
							<a href="detail.jsp">이천시 종합운동장 주경기장</a>
						</h3>
						<div>시설 주소 : 서울특별시 서초구 서운로 178</div><!-- 시설도로명주소 + 상세주소 -->
						<div>시설 연락처 : 0212345678</div>
						<button type="button" onclick="">상세보기</button>
						<hr>
					</div>
				</div>
				<div id="pan13">
					<div id="searchcontent">
						<h3>
							<a href="detail.jsp">서초구 서초초등학교</a>
						</h3>
						<div>시설 주소 : 서울특별시 서초구 서운로 178</div><!-- 시설도로명주소 + 상세주소 -->
						<div>시설 연락처 : 0212345678</div>
						<button type="button" onclick="">상세보기</button>
					</div>
				</div>
			</div>
			<div class="tabpanel" id="panel2" role="tabpanel">
				<div id="pan21">
				<%-- <c:forEach var="charge" items="${placechargelist}" begin="1" end="8"
					varStatus="stat">
					<div id="searchcontent">
						<h3>
							<a href="detail.jsp">서초구 서초초등학교</a>	//charge.place_name
						</h3>
						<div>시설 주소 : 서울특별시 서초구 서운로 178</div>	//charge.place_detail_addr
						<!-- 시설도로명주소 + 상세주소 -->
						<div>시설 연락처 : 0212345678</div>					// charge.phone_no
						<button type="button" onclick="">상세보기</button>	
						<hr>
					</div>
				</c:forEach> --%>
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">아차산 풋살장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button type="button">상세보기</button>
					</div>
				</div>
				<div id="pan22">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">역삼초등학교 운동장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button type="button">상세보기</button>
					</div>
				</div>
				<div id="pan23">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">논현 풋살장</a>
						</h3>
						<p>서울특별시 서초구 서운로 178</p><!-- 시설도로명주소 + 상세주소 -->
						<p>연락처 : 0212345678</p>
						<button type="button">상세보기</button>
					</div>
				</div>
			</div>
			<div class="tabpanel" id="panel3" role="tabpanel">
				<div id="pan31">
				<%-- <c:forEach var="star" items="${placeStarlist}" begin="1" end="8"
					varStatus="stat">
					<div class="searchcontent">
						<h3>
							<a href="detail.jsp?no=${mv.no}'>${star.place_name}">서초구 서초초등학교</a>	//star.place_name
						</h3>
						<div>시설 주소 : 서울특별시 서초구 서운로 178</div>	//star.place_detail_addr
						<!-- 시설도로명주소 + 상세주소 -->
						<div>시설 연락처 : 0212345678</div>					// star.phone_no
						<button type="button" onclick="">상세보기</button>	
						<hr>
					</div>
				</c:forEach> --%>
					<div id="searchcontent">
						<h3>
							<a href="#">논현 풋살장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button type="button">상세보기</button>
					</div>
				</div>
				<div id="pan32">
					
					<div id="searchcontent">
						<h3>
							<a href="#">역삼초등학교 운동장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button type="button">상세보기</button>
					</div>
				</div>
				<div id="pan33">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">논현 풋살장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button type="button">상세보기</button>
					</div>
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