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
	#area{
		width : 300px;
		height : 100px;
	}
	#content{
		width: 605px;
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
	      
	      <h3>팀 매칭 게시판</h3>
	      <hr>
		  <div id="photobox"></div>
		  <table>
		  	<tr>
		  		<th>팀명</th>
		  		<th>수원 FC</th>
		  	</tr>
		  	<tr>
		  		<td>평균연령</td>
		  		<td>26</td>		  		
		  	</tr>
		  	<tr>
		  		<td colspan="2">활동 지역</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"><div id="area">수원시 권선구 권선동,세류동,인계동</div></td>
		  	</tr>
		  </table>
		  
		  <p>
		  <div id = "content">
		  경기 날짜 : 09/15 (토)
		 <br> 장소 합의 가능하고 무엇보다 안다치고 매너있게 게임하실팀 구합니다.
	      </div>
	      </p>
	      <p>
	      <button><a href="matchingModify.jsp">수정</a></button>
	      <button>삭제</button>	      
	      <button><a href="matchingBoard.jsp">목록</a></button>
	      </p>
	      
	    </section>
	  </article>
	</main>
	<footer>
	    <p>Footer</p>
	</footer>
	
</body>
</html>