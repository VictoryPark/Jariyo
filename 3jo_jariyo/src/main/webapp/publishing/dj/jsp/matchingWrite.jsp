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
		  		<td colspan="2">활동 지역</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"><textarea name="area" rows="3" cols="40"></textarea> </td>
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
	<c:import url="../../common/mainbarfooter.jsp" />
	
</body>
</html>