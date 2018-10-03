<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/3jo_jariyo/css/common/headerfooter.css" />
<style>
A:link {
	text-decoration: none;
}

A:visited {
	text-decoration: none;
}

A:active {
	text-decoration: none;
}

A:hover {
	text-decoration: none;
}

.search_box {
	text-align: center;
}

.mainpage_box {
	text-align: center;
}

.mainpage_box table {
	margin-top: 5px;
	text-align: left;
}

.title_more {
	width: 100%;
	display: inherit;
}

.mini_title {
	text-align: left;
}

.minilist {
	border: 1px solid black
}

#box1 {
	width: 40%;
	height: 300px;
	margin: auto;
	display: inline-block;
}

#box2 {
	width: 40%;
	height: 300px;
	margin: auto;
	display: inline-block;
}

#box3 {
	width: 40%;
	height: 300px;
	margin: auto;
	display: inline-block;
}

#box4 {
	width: 40%;
	height: 300px;
	margin: auto;
	display: inline-block;
}
</style>
</head>

<body>
	<c:import url="/jsp/common/mainbarheader.jsp" />
	<main>
	<div class="search_box">
		<form action="/3jo_jariyo/jariyo/searchresult.j" method="get">
			<select class="custom-select-sm">
				<option value="1">공공시설</option>
				<option value="2">체육관</option>
				<option value="3">야구장</option>
				<option value="4">족구장</option>
				<option value="5">농구장</option>
				<option value="6">축구장</option>
				<option value="7">테니스장</option>
			</select> <input type="date" class="form-control-sm"/>
			<input type="date" class="form-control-sm"/>
			<input type="text" placeholder="지역/시설을 입력하세요" name="searchword" />
			<button>검색</button>
<!-- 			<button type="button" onclick="location.href='/3jo_jariyo/jsp/searchresult/defaultsearch.jsp'">검색</button> -->
		</form>
	</div>
	<br>
	<div class="mainpage_box">
		<div id="box1">
			<div class="title_more">
				<div class="mini_title">
					<a href="/3jo_jariyo/manvolun/list.j">용병 신청</a>
				</div>
			</div>
			<div class="minilist">
				<table>
					<tr>
						<td>
							<ul>
								<c:forEach var="mv" items="${manvolunlist}" begin="0" end="5">
									<li><a href="/3jo_jariyo/manvolun/list.j?boardNo=${mv.boardNo}">${mv.title}</a></li>
								</c:forEach>
							</ul>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="box2">
			<div class="title_more">
				<div class="mini_title">
					<a href="/3jo_jariyo/mangather/list.j">용병 모집</a>
				</div>
			</div>
			<div class="minilist">
				<table>
					<tr>
						<td>
						<ul>
						<c:forEach var="mg" items="${mangatlist}" begin="0" end="5">
								<li><a href="/3jo_jariyo/mangather/detail.j?boardNo=${mg.boardNo}">${mg.title}</a></li>
						</c:forEach>
						</ul>
						</td>
					
					</tr>
				</table>
			</div>
		</div>
		<div id="box3">
			<div class="title_more">
				<div class="mini_title">
					<a>경기매칭</a>
				</div>
			</div>
			<div class="minilist">
				<table>
					<tr>
						<td>
							<ul>
								<c:forEach var="team" items="${teamlist}" begin="0" end="5">
									<li><a href="/3jo_jariyo/teammatching/detail.j?boardNo=${team.boardNo}">${team.title}</a></li>
								</c:forEach>
							</ul>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="box4">
			<div class="title_more">
				<div class="mini_title">
					<a>경기장 정보</a>
				</div>
			</div>
			<div class="minilist">
				<table>
					<tr>
						<td>
							<ul>
								<c:forEach var="place" items="${placelist}" begin="0" end="5">
									<li><a href="/3jo_jariyo/jariyo/detailView.j?no=${place.placeNo}">${place.placeName}</a></li>
								</c:forEach>

							</ul>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	</main>
	<c:import url="/jsp/common/mainbarfooter.jsp" />
</body>
</html>