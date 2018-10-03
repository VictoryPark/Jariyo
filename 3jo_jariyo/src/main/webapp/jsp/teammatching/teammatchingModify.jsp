<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teammatchingModify</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">
<style>
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	th, td{
		border: 1px solid #345;
	}
	aside, section {
		border : 2px solid black;
	}
	hr{
		border : 1px solid black;
	}

	#content{
		width: 630px;
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
       	<div id="menu">
		 <p>
	        <a href="<c:url value="/teammatching/list.j"/>">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="<c:url value="/mangather/list.j"/>">용병 모집 게시판</a>
	    </p>
	    <p>
	    	<a href="<c:url value="/manvolun/list.j"/>">용병 신청 게시판</a>
	    </p>
	    </aside>
	    <section>
	      <h3>팀 매칭 게시판</h3>
	      <hr>
	      <form method="post" action="<c:url value ='/teammatching/modify.j'/>">
	      <h5><input type="text" name="title" value='${board.title}'></h5>
		    <div id="photobox"></div>
		  <input type="hidden" name ="boardNo" value="${board.boardNo}">
		  <table>
		  	<tr>
		  		<td>팀명</td>
		  		<td><input type="text" name="teamName" value='${board.teamName}'/></td>
		  		<td>종목</td>
		  		<td><input type="text" name="kindofGame" value='${board.kindofGame}'></td>
		  	</tr>
		  	<tr>
		  		<td>활동 지역</td>
		  		<td><input type="text" name="area" value='${board.area}'/></td>		  		
		  		<td>경기장</td>
		  		<td><input type="text" name="placeName" value='${board.placeName}'></td> 	
		  	</tr>
		  	<tr>
		  		<td>경기일정</td>
		  		<td><input type="text" name="playDate" value='${board.playDate}'/></td>
		  		<td>평균연령</td>
		  		<td><input type="text" name="aveAge" value='${board.aveAge}'/></td>		  		
		  	</tr>
		  	<tr>
		  		<td>선수출신 여부</td>
		  		<td colspan="3"><input type="radio" name="career" value="비선출" checked="checked"/>비선출
						<input type="radio" name="career" value="초등부"/>초등부
						<input type="radio" name="career" value="중등부"/>중등부
						<input type="radio" name="career" value="고등부"/>고등부
						<input type="radio" name="career" value="대학이상"/>대학 이상
				</td>
		  </table>
		  <p>
		  <div>
		  <textarea name="content" row="10" cols="72">${board.content}</textarea>
	      </div>
	      </p>
	      <p>
	      <button>수정완료</button>
	      <button><a href="<c:url value="/manvolun/delete.j?boardNo=${board.boardNo}"/>">삭제</a></button>      
	      <button><a href="<c:url value="/teammatching/list.j"/>">목록</a></button>
	      </p>
	      </form>
	    </section>
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
</body>
</html>