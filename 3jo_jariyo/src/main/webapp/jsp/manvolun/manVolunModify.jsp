<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>manVolunModify</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">
<style>

	aside, section {
		border : 2px solid rgb(27, 116, 93);
	}
	a {
		color: #345;
	}
	body{
	   background: #F2F1ED;
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
	h3{
		margin : 10px;
		font-weight: bold;
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
	    	<h3>용병 신청 게시판</h3>
		    <hr>
		    <form method="post" action="<c:url value='/manvolun/modify.j'/>">
			<h4><input type="text" name="title" value='${board.title}'></h4>	 

		   <input type="hidden" name ="boardNo" value="${board.boardNo}">
			<table>
				<tr>
					<td>종목</td>
					<td><input type="text" name="kindofGame" value='${board.kindofGame}'></td>
					<td>활동 지역</td>
					<td><input type="text" name="area" value="${board.area}"></td>
				</tr>
				<tr>
				<td>선수출신 여부 </td>
					<td colspan="3"><input type="radio" name="career" value="비선출" checked="checked"/>비선출
						<input type="radio" name="career" value="초등부"/>초등부
						<input type="radio" name="career" value="중등부"/>중등부
						<input type="radio" name="career" value="고등부"/>고등부
						<input type="radio" name="career" value="대학이상"/>대학 이상
				</td>
				</tr>
			</table>
			<p>
			<div>
			<textarea name="content" row="6" cols="96">${board.content}</textarea>
			</div>
			</p>
			<p>
			<button>수정완료</button>
			<button><a href="<c:url value="/manvolun/delete.j?boardNo=${board.boardNo}"/>">삭제</a></button>
			<button><a href="<c:url value="/manvolun/list.j"/>">목록</a></button>
	    	</p>
	    </section>
	  </article>
	  </form>
	</main>

	<c:import url="../common/mainbarfooter.jsp" />
</body>
</html>