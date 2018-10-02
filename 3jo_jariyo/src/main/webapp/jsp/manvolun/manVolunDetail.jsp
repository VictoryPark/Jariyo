<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>manVolunDetail</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">
<style>
	aside, section {
		border : 2px solid black;
	}
	
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
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
	hr{
		border : 1px solid black;
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
			<hr>
	    	<h4>${board.title}</h4>
		   <div id = "photobox"></div>
			<table>
				<tr>
					<td>이름</td>
					<td>${board.writerId}</td>
					
					<td>종목</td>
					<td>${board.kindofGame}</td>
				
				</tr>
				<tr>
					<td>선수출신 여부 </td>
					<td>${board.career}</td>
					<td>활동지역</td>
					<td>${board.area}</td>
				</tr>
				<tr>
					<td>작성일시</td>
					<td><fmt:formatDate value="${board.regDate}"
										pattern="yyyy/MM/dd HH:mm:ss"/></td>
				</tr>
			</table> 
			<textarea name="content" row="6" cols="96">${board.content}</textarea>
			</p>
			<table id="comment">
				<tr>
					<td>이득재</td>
					<td colspan="2">쪽지 보냈습니다 확인해주세요</td>
					<td>09-16 13:01</td>
				</tr>
			</table>
			
			<p>
			<button><a href="<c:url value="/manvolun/delete.do?boardNo=${board.boardNo}"/>">삭제</a></button>
			<button><a href="<c:url value="/manvolun/modifyForm.do?boardNo=${board.boardNo}"/>">수정</a></button>
			<button><a href="<c:url value="/manvolun/list.do"/>">목록</a></button>
	    	</p>
	    </section>
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	
</body>
</html>