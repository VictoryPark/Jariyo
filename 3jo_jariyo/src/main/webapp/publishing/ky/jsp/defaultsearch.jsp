<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../common/headerfooter.css"/>
<link rel="stylesheet" href="../css/defaultsearch.css" />
<script>
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<c:import url="../../common/mainbarheader.jsp" />
	<main>
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
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="detail.jsp">서초구 서초초등학교 운동장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button>지도보기</button>
					</div>
				</div>
				<div id="pan12">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">강남구 역삼고등학교 운동장</a>
						</h3>
						<p>서울시 서초구에 위치한 서운중학교. 강남역 도보 10분거리에 위치하고 있으며, 크기는 넓지 않습니다.</p>
						<button>지도보기</button>
					</div>
				</div>
				<div id="pan13">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">마포구 공설운동장</a>
						</h3>
						<p>서울시 마포구에 위치한 공설운동장. .</p>
						<button>지도보기</button>
					</div>
				</div>
			</div>
			<div class="tabpanel" id="panel2" role="tabpanel">
				<div id="pan21">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">아차산 풋살장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button>지도보기</button>
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
						<button>지도보기</button>
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
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button>지도보기</button>
					</div>
				</div>
			</div>
			<div class="tabpanel" id="panel3" role="tabpanel">
				<div id="pan31">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">논현 풋살장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button>지도보기</button>
					</div>
				</div>
				<div id="pan32">
					<div id="searchimg">
						<img src="../img/foot.jpg" width="220px" />
					</div>
					<div id="searchcontent">
						<h3>
							<a href="#">역삼초등학교 운동장</a>
						</h3>
						<p>서울시 서초구에 위치한 서초초등학교. 강남역 도보 5분거리에 위치하고 있으며, 천연잔디 운동장이고 크기도 넓어
							축구하기 안성맞춤입니다.</p>
						<button>지도보기</button>
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
						<button>지도보기</button>
					</div>
				</div>
			</div>
		</div>
		</main>
		<c:import url="../../common/mainbarfooter.jsp" />
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