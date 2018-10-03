<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>manGatherModify</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">
<style>
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	
	aside, section {
		border : 2px solid black;
	}
	
	tr, td {
		width : 145px;
		border: 1px solid black;
	}
	#content{
		width: 860px;
		height : 80px;
		border: 1px solid black;
	}
	#comment {
		width : 850px;
		boarder : 1px solid black;
	}
	hr {
		border : 1px solid black;
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
		    <hr>
		    <form method="post" action="<c:url value ='/mangather/modify.j'/>">
			<h4><input type="text" name="title" value='${board.title}'/></h4>	 
		   <div id = "photobox"></div>
		   <input type="hidden" name="boardNo" value="${board.boardNo}">
			<table>
				<tr>
					<td>팀명</td>
					<td><input type="text" name="teamName" value='${board.teamName}' /></td>
					<td>종목</td>
					<td><input type="text" name="kindofGame" value='${board.kindofGame}'></td>
				</tr>
				<tr>
					<td>평균연령</td>
					<td><input type="text" name="aveAge" value='${board.aveAge}'></td>
					<td>활동지역</td>
					<td><input type="text" name="area" value="${board.area}"></td>
				</tr>
				<tr>
					<td>경기일정</td>
					<td colspan="3"><input type="text" name="playDate" value='${board.playDate}'/></td>
				</tr>
			</table>
			<p>
			<div>
			<textarea name="content" row="6" cols="96">${board.content}</textarea>
			</div>
			</p>
			<p>
			<button>수정완료</button>
			<button><a href="<c:url value="/mangather/delete.j?boardNo=${board.boardNo}"/>">삭제</a></button>
			<button><a href="<c:url value="/mangather/list.j"/>">목록</a></button>
	    	</p>
	    </section>
	  </article> 
	</form>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
</body>
</html>