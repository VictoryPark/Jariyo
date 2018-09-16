<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

.more1 {
	margin-left: 408px;
}
.more2 {
	margin-left: 386px;
}

.minilist {
	border: 1px solid black
}

#yellow {
	width: 40%;
	height: 120px;
	margin: auto;
	display: inline-block;
}

#pink {
	width: 40%;
	height: 200px;
	margin: auto;
	display: inline-block;
}

#B {
	width: 40%;
	height: 200px;
	margin: auto;
	display: inline-block;
}

#C {
	width: 40%;
	height: 200px;
	margin: auto;
	display: inline-block;
}
</style>
</head>

<body>
	<center>
		<div>
			<select>
				<option>축구</option>
				<option>농구</option>
				<option>테니스</option>
			</select> <input type="date" name="mydata" /> <input type="text" />
			<button>검색</button>
		</div>
	</center>
	<br>
	<div id="mainpagebox">
		<div id="yellow">
			<div>
				<a>경기매칭</a><span class="more1"><button>더보기(+)</button></span>
			</div>
			<div class="minilist">
				<table>
					<tr>
						<td colspan="2">
							<ul>
								<li>권선동 5대5 풋살 하실분 구합니다</li>
								<li>연남동 일요일 축구 가능한 팀 있나요?</li>
								<li>연남동 일요일 축구 가능한 팀 있나요?</li>
								<li>연남동 일요일 축구 가능한 팀 있나요?</li>
							</ul>
						<td>
					</tr>
				</table>
			</div>
		</div>
		<div id="pink">
			<div>
				<a>사람 구해요</a><span class="more2"><button>더보기(+)</button></span>
			</div>
			<div class="minilist">
				<table>
					<td colspan="5">
						<ul>
							<li>1시에 수원 월드컵 경기장 대타 한명 구합니다</li>
							<li>월 12일 저녁에 풋살 경기 대타 가능하신분 구합니다...</li>
							<li>월 12일 저녁에 풋살 경기 대타 가능하신분 구합니다...</li>
							<li>월 12일 저녁에 풋살 경기 대타 가능하신분 구합니다...</li>
						</ul>
				</table>
			</div>
		</div>
		<div id="B">
			<div>
				<a>대회정보</a><span class="more1"><button>더보기(+)</button></span>
			</div>
			<div class="minilist">
				<table>
					<td colspan="5">
						<ul>
							<li>제2회 대전광역시축구협회장기 축구대회 2017.05.10(수)</li>
							<li>화랑대기 유소년 축구대회 2018.08.11(토)</li>
							<li>진주저축은행배 제 9회 서경방송 직장인 축구대회</li>
							<li>진주저축은행배 제 9회 서경방송 직장인 축구대회</li>
						</ul>
					</tr>

				</table>
			</div>
		</div>
		<div id="C">
			<div>
				<a href="#">경기장 정보</a><span class="more2"><button>더보기(+)</button></span>
			</div>
			<div class="minilist">
				<table>
					<td colspan="5">
						<ul>
							<li>난지물재생센터 인조잔디 축구장 (토/일 주말)</li>
							<li>종로구 한강 다목적 운동장 (천연잔디구장)</li>
							<li>해누리체육공원 - 인조잔디축구장</li>
							<li>난지물재생센터 인조잔디 축구장 (토/일 주말)</li>
						</ul>
					</tr>
				</table>
			</div>
		</div>
</body>
</html>