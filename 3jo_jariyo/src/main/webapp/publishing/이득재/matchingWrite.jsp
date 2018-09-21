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
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	table, th, td{
		border: 3px solid #345;
	}
	aside, section {
		height: 550px;
		border : 2px solid black;
	}
	hr{
		border : 1px solid black;
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
	      
	      <h3>글쓰기</h3>
	      <hr>
		  <div id="photobox"></div>
		  <table>
		  	<tr>
		  		<th>팀명</th>
		  		<th><input type="text" name="teamName"></th>
		  	</tr>
		  	<tr>
		  		<td>평균연령</td>
		  		<td><input type="text" name="averageAge"></td>		  		
		  	</tr>
		  	<tr>
		  		<td>활동 지역</td>
		  		<td><input type="text" name="area"></td>
		  	</tr>
		  	<tr>
		  		<td colspan="2">제목</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"><textarea name="title" rows="1" cols="40"></textarea></td>
		  	</tr>
		  </table>
		  
		  <div id = "content">
		  <textarea name="matchingContent" row="10" cols="50"></textarea>
	      </div>
	      
	      <p>
	      <button><a href="matchingBoard.jsp">작성완료</a></button>	      
	      <button>이미지 첨부</button>
	      <button><a href="matchingBoard.jsp">닫기</a></button>
	      </p>
	      
	    </section>
	  </article>
	</main>
	<footer>
	    <p>Footer</p>
	</footer>
	
</body>
</html>