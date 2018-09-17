<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../common/headerfooter.css"/>
<style>
aside, section {
		height: 550px;
		border : 2px solid black;
	}
#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	tr, td {
		width : 135px;
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
	<c:import url="../../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
	    <p>
	        <a href="matchingBoard.jsp">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="employBoard.jsp">용병 게시판</a>
	    </p>
	    </aside>
	    <section>
	 
			<h4><a href="employWrite.jsp">[용병 모집]</a><a href="employApplyWrite.jsp">[용병 신청]</a></h4>
			<hr>
			<h4>진짜 실력자분들 모십니다(포지션 확인 부탁드립니다)</h4>	    
	    	<div id = "photobox"></div>
			<table>
				<tr>
					<td>팀명</td>
					<td>서울 FC</td>
					<td>주발</td>
					<td>무관</td>
				</tr>
				<tr>
					<td>평균연령</td>
					<td>40</td>
					<td>포지션</td>
					<td>골키퍼</td>
				</tr>
				<tr>
					<td colspan="4">활동지역</td>
				</tr>
				<tr>
					<td colspan="4">서울시 강남,송파,서초구 일대 </td>
				</tr>
			</table>
			<p>
			<div id = "content">
			2012년부터 이어온 팀입니다 실력도 중요하지만 낯가리지 않고 즐겁게 게임하실분 모집합니다
			<br><br>
			</div>
			</p>
			
			<table id="comment">
				<tr>
					<td>이득재</td>
					<td colspan="2">쪽지 보냈습니다 확인해주세요</td>
					<td>09-16 13:01</td>
				</tr>
			</table>
			
			<p>
			<button><a href="employBoardModify.jsp">수정</a></button>
			<button>삭제</button>
			<button><a href="employBoard.jsp">목록</a></button>
	    	</p>
	    </section>

	  </article>
	</main>
	<c:import url="../../common/mainbarfooter.jsp" />
</body>
</html>