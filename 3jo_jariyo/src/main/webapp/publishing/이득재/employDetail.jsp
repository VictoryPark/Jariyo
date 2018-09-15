<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/publishing/이득재/main2.css"/>">
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
		height : 150px;
		border: 1px solid black;
	}
</style>
</head>
<body>	
		<header>
	    <h1>
	      자리Y<img id="ball" src="ball-icon.gif" width="58px"/>
	    </h1>
	  <nav am-layout="horizontal">
	  <a href="#">검색</a>
	  <a href="#">게시글</a>
	  <a href="#">대회 정보</a>
	  <a href="#">마이 페이지</a>
	  </nav>
	</header>
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
	 
			<h4><a href="employWrite.jsp">[용병 모집]</a></h4>
			<h4><a href="employApplyWrite.jsp">[용병 신청]</a></h4>
	    
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
					<td colspan="4">서울시 강남,송파,서초구 일대<br><br><br> </td>
					
				</tr>
			</table> 
			<p>
			<div id = "content">
			2012년부터 이어온 팀입니다 실력도 중요하지만 낯가리지 않고 즐겁게 게임하실분 모집합니다
			<br><br>
			</div>
			</p>
			<p>
			<button><a href="employBoardModify.jsp">수정</a></button>
			<button>삭제</button>
			<button><a href="employBoard.jsp">목록</a></button>
	    	</p>
	    </section>

	  </article>
	</main>
	<footer>
	    <p>Footer</p>
	</footer>
	
</body>
</html>