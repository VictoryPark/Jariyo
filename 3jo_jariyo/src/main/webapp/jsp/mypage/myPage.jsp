<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리YO 마이페이지</title>
<link rel="stylesheet" href="<c:url value='/css/common/headerfooter.css'/>" />
<link rel="stylesheet" href="<c:url value='/css/mypage/myPage.css' />" />
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside class="left">
	      <div class="user-profile">
				<div class="profile-img" style="background-image: url('/3jo_jariyo/img/mypage/${user.profileImgName}');"></div>
			    <div class="username">${ user.name }</div>
			  <div class="bio">
			  	
			  </div>
			    <div class="description">${ user.teamName }</div>
			  <ul class="data">
			    <li>
			      <a class="my-profile" href="<c:url value="/myinfo-form.j"/>"><span class="entypo-heart"> 내정보</span></a>
			    </li>
			    <li>
			      <a class="my-profile"  href="../msg/messagelist.j"><span class="entypo-eye"> 쪽지</span></a>
			    </li>
			</div>
	    </aside>
	    <section class="section">
		    <div class="wrapper">
		    	<div class="reservation">
		    		<h4 class="nice">
		    			내 예약내역
		    		</h4>
	    			<table class="nice-border">
		    			<tr>
						    <th>시설이름</th>
						    <th>예약팀</th>
						    <th>예약날짜</th>
					    </tr>
					    <c:forEach var="i" begin="0" end="5">					    
						    <tr>
							    <td><c:out value="${plnamelist[i]}"/></td>
							    <td><c:out value="${bookingList[i].bookingTeamName}"/></td>
							    <td><c:out value="${bookingList[i].bookingDate}"/></td>
						    </tr>
					    </c:forEach>
	    			</table>
		    	</div>
		    	<div class="my-game-post">
		    		<h4 class="nice">
		    			내가 작성한 경기매칭
		    		</h4>
	    			<table class="nice-border">
		    			<tr>
						    <th>제목</th>
						    <th>시설이름</th>
						    <th>이용날짜</th>
					    </tr>
					    <c:forEach var="matchList" items="${matchList}">					    
						    <tr>
							    <td><c:out value="${matchList.title}"/></td>
							    <td><c:out value="${matchList.placeName}"/></td>
							    <td><c:out value="${matchList.playDate}"/></td>
						    </tr>
					    </c:forEach>
	    			</table>
		    	</div>
		    	<div class="player-post">
		    		<h4 class="nice">
		    			내가 작성한 용병모집
		    		</h4>
	    			<table class="nice-border">
		    			<tr>
						    <th>제목</th>
						    <th>팀이름</th>
						    <th>경기날짜</th>
					    </tr>
					    <c:forEach var="gatherList" items="${gatherList}">					    
						    <tr>
							    <td><c:out value="${gatherList.title}"/></td>
							    <td><c:out value="${gatherList.teamName}"/></td>
							    <td><c:out value="${gatherList.playDate}"/></td>
						    </tr>
					    </c:forEach>
	    			</table>
		    	</div>
		    	<div class="playground-score">
		    		<h4 class="nice">
		    			내가 작성한 용병신청
		    		</h4>
	    			<table class="nice-border">
		    			<tr>
						    <th>제목</th>
						    <th>지역</th>
						    <th>작성일</th>
					    </tr>
					    <c:forEach var="volunList" items="${volunList}">					    
						    <tr>
							    <td><c:out value="${volunList.title}"/></td>
							    <td><c:out value="${volunList.area}"/></td>
							    <td><c:out value="${volunList.regDate}"/></td>
						    </tr>
					    </c:forEach>
	    			</table>

	    			</table>
		    	</div>
		    	<div class="player-score">
		    		<h4 class="nice">
		    			내가 평가한 시설
		    		</h4>
	    			<table class="nice-border">
		    			<tr>
						    <th>시설 이름</th>
						    <th>내용</th>
						    <th>작성일</th>
					    </tr>
					    <c:forEach var="j" begin="0" end="5">			    
						    <tr>
							    <td><c:out value="${peNameList[j]}"/></td>
							    <td><c:out value="${evalList[j].content}"/></td>
							    <td><fmt:formatDate value="${evalList[j].regDate}" pattern="yyyy-MM-dd"/></td>
						    </tr>
					    </c:forEach>
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