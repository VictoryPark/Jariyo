<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teammatchingDetail</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">

<style>
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	th, td{
		width: 135px;
		border: 1px solid #345;
	}
	aside, section {
		border : 2px solid black;
	}
	hr{
		border : 1px solid black;
	}
	#content{
		width: 860px;
		height : 80px;
		border: 1px solid black;
	}
	#comment{
		width: 850px;
		border: 1px solid black;
	}
</style>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
		<p>
	        <a href="<c:url value="/teammatching/list.do"/>">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="<c:url value="/mangather/list.do"/>">용병 모집 게시판</a>
	    </p>
	    <p>
	    	<a href="<c:url value="/manvolun/list.do"/>">용병 신청 게시판</a>
	    </p>
	    </aside>
	    <section>
	      
	      <h3>팀 매칭 게시판</h3>
	      <hr>
	      <h5>${board.title}</h5>
		  <div id="photobox"></div>
		  <table>
		  	<tr>
		  		<td>팀명</td>
		  		<td>${board.teamName}</td>
		  		<td>종목</td>
		  		<td>${board.kindofGame}</td>
		  	</tr>
		  	<tr>
		  		<td>활동 지역</td>
		  		<td>${board.area}</div></td>
		  		<td>경기장</td>
		  		<td>${board.placeName}</td>
		  	</tr>
		  	<tr>
		  		<td>경기일자</td>
		  		<td>${board.playDate}</td>
		  		<td>평균연령</td>
		  		<td>${board.aveAge}</td>  		
		  	</tr>

		  </table>
		  
		  <p>
		  <div>
		  	<teatarea name="content" row="6" cols="96">${board.content}</teatarea>
		  </div>
	      </p>
	      <table id="comment">
	      	<tr>
	      		<td>정인용</td>
	      		<td colspan="2">시간대가 어떻게 되시나요?</td>
	      		<td>09-14 10:10</td>
	      	</tr>
	      </table>
	      <p>
	      <button><a href="<c:url value="/teammatching/delete.do?boardNo=${board.boardNo}"/>">삭제</a></button>
	      <button><a href="<c:url value="/teammatching/modifyForm.do?boardNo=${board.boardNo}"/>">수정</button>	      
	      <button><a href="<c:url value="/teammatching/list.do"/>">목록</a></button>
	      </p>
	      
	    </section>	
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	
</body>
</html>