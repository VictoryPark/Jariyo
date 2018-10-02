<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리YO 마이페이지</title>
<link rel="stylesheet" href="<c:url value="/css/mypage/myPage.css"/>">
<link rel="stylesheet" href="<c:url value='/css/mypage/profile.css' />" />
<link rel="stylesheet" href="<c:url value='/css/mypage/section.css' />" />
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside class="left">
	      <div class="user-profile">
				<div class="profile-img" style="background-image: url('/3jo_jariyo/img/mypage/${user.profileImgSys}');"></div>
			    <div class="username">${ user.name }</div>
			  <div class="bio">
			  	
			  </div>
			    <div class="description">${ user.teamName }</div>
			  <ul class="data">
			    <li>
			      <a class="my-profile" href="myInfo.jsp"><span class="entypo-heart"> 내정보</span></a>
			    </li>
			    <li>
			      <a class="my-profile"  href="../msg/messagelist.jsp"><span class="entypo-eye"> 쪽지</span></a>
			    </li>
			</div>
	    </aside>
	    <section class="section">
		    <div class="wrapper">
		    	<div class="reservation">
		    		<h2 class="nice">
		    			내 예약내역
		    		</h2>
	    			<table class="nice-border">
		    			<tr>
						    <th>시설</th>
						    <th>날짜</th>
						    <th>시간</th>
					    </tr>
					    <tr>
						    <td>${ bList.placeNo }</td>
						    <td>${ bList.bookingDate }</td>
						    <td>${ bList.startTime + bList.endTime }</td>
					    </tr>
					    <tr>
						    <td>서원초등학교</td>
						    <td>20:00 ~ 21:00</td>
						    <td>정인용</td>
					    </tr>
	    			</table>
		    	</div>
		    	<div class="my-game-post">
		    		<h2 class="nice">
		    			내가 작성한 경기매칭
		    		</h2>
	    			<table class="nice-border">
		    			<tr>
						    <th>제목</th>
						    <th>모집종료여부</th>
						    <th>작성일</th>
					    </tr>
					    <tr>
						    <td>팀 구해요</td>
						    <td>
						        <input id="end" type="checkbox" name="endcheck" value="1" />
	                			<label for="end"></label>
						    </td>
						    <td>2018-08-25</td>
					    </tr>
					    <tr>
						    <td>9월 15일 20:00 ~ 22:00 하실 팀?</td>
						    <td>
						    	<input id="end" type="checkbox" name="endcheck" value="1" />
	                			<label for="end"></label>
						    </td>
						    <td>2018-09-01</td>
					    </tr>
	    			</table>
		    	</div>
		    	<div class="player-post">
		    		<h2 class="nice">
		    			내가 작성한 용병매칭
		    		</h2>
	    			<table class="nice-border">
		    			<tr>
						    <th>제목</th>
						    <th>모집종료여부</th>
						    <th>작성일</th>
					    </tr>
					    <tr>
						    <td>용병 구합니다.</td>
						    <td>
						        <input id="end" type="checkbox" name="endcheck" value="1" />
	                			<label for="end"></label>
						    </td>
						    <td>2018-08-27</td>
					    </tr>
					    <tr>
						    <td>9월 12일 야간 용병 한 분 구해요</td>
						    <td>
						    	<input id="end" type="checkbox" name="endcheck" value="1" />
	                			<label for="end"></label>
						    </td>
						    <td>2018-09-10</td>
					    </tr>
	    			</table>
		    	</div>
		    	<div class="playground-score">
		    		<h2 class="nice">
		    			내가 평가한 시설
		    		</h2>
	    			<table class="nice-border">
		    			<tr>
						    <th>시설</th>
						    <th>제목</th>
						    <th>작성일</th>
					    </tr>
					    <tr>
						    <td>서원초등학교</td>
						    <td>역시 서원초등학교 뀼</td>
						    <td>2018-08-28</td>
					    </tr>
					    <tr>
						    <td>서초 초등학교</td>
						    <td>운동장은 넓으나, 주차장이 협소..</td>
						    <td>2018-09-14</td>
					    </tr>
	    			</table>
		    	</div>
		    	<div class="player-score">
		    		<h2 class="nice">
		    			내가 평가한 용병
		    		</h2>
	    			<table class="nice-border">
		    			<tr>
						    <th>용병이름</th>
						    <th>제목</th>
						    <th>작성일</th>
					    </tr>
					    <tr>
						    <td>이득재</td>
						    <td>매너도 좋으시구 잘하시는 분</td>
						    <td>2018-08-28</td>
					    </tr>
					    <tr>
						    <td>김도훈</td>
						    <td>최고의 스트라이커</td>
						    <td>2018-09-15</td>
					    </tr>
	    			</table>
		    	</div>
		    	<div class="team-score">
		    		<h2 class="nice">
		    			내가 평가한 팀
		    		</h2>
	    			<table class="nice-border">
		    			<tr>
						    <th>팀명</th>
						    <th>제목</th>
						    <th>작성일</th>
					    </tr>
					    <tr>
						    <td>FCDJ</td>
						    <td>좀 거칠게 공을 차는 팀이에요</td>
						    <td>2018-08-28</td>
					    </tr>
					    <tr>
						    <td>FCAR</td>
						    <td>매너도 좋으시고 잘하십니다!</td>
						    <td>2018-09-15</td>
					    </tr>
	    			</table>
		    	</div>
		    </div>		    
		</section>
	    <aside>
	    	<h1>
	        <h1>
	    </aside>
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />

</body>
</html>