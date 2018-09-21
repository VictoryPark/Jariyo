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
					<td><input type="text" name="teamName"></td>
					<td>주발</td>
					<td><input type="text" name="foot"></td>
				</tr>
				<tr>
					<td>평균연령</td>
					<td><input type="text" name="averageAge"></td>
					<td>포지션</td>
					<td><input type="text" name="position"></td>
				</tr>
				<tr>
					<td colspan="4">활동지역</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="area" rows="1" cols="62"></textarea> </td>
				</tr>
				<tr>
					<td colspan="4">제목</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="title" rows="1" cols="62"></textarea> </td>
				</tr>
			</table> 
			<textarea name="content" row="6" cols="96"></textarea>
			<p>
			<button><a href="employBoard.jsp">작성하기</a></button>
			<button>이미지 첨부</button>
			<button><a href="employBoard.jsp">닫기</a></button>
	    	</p>
	    </section>
	  </article>
	</main>
	<footer>
	    <p>Footer</p>
	</footer>
	
</body>
</html>