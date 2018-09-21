<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>matchingModify</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css"/>
<style>
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	table, th, td{
		border: 1px solid #345;
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
		height : 30px;
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
	        <a href="teammatchingBoard.jsp">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="../manvolun/manVolunBoard.jsp">용병 게시판</a>
	    </p>
	    </aside>
	    <section>
	      <h3>팀 매칭 게시판</h3>
	      <hr>
	      <h5><input type="text" name="title" value="15일 (토) 권선동 세곡초등학교 경기하실분구합니다."></h5>
		    <div id="photobox"></div>
		  <table>
		  	<tr>
		  		<th>팀명</th>
		  		<th><input type="text" name="teamName" value="세곡 FC"/></th>
		  	</tr>
		  	<tr>
		  		<td>평균연령</td>
		  		<td><input type="text" name="averageAge" value="26"/></td>		  		
		  	</tr>
		  	<tr>
		  		<td colspan="2">활동 지역</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"><div id="area">수원시 권선구 권선동,세류동,인계동</td>		  		
		  	</tr>	
		  	<tr>
		  		<td>경기 일자</td>
		  		<td><input type="text" name="date" value="9월 16일 오후 3시"></td>
		  	</tr>
		  		<tr>
		  		<td colspan="2">경기장</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"><input type="text" name="stadium" value="세곡초등학교"></td> 	
		  	</tr>
		  </table>
		  <p>
		  <div id = "content">
		  <textarea name="matchingContent" row="10" cols="72">경기 날짜 : 09/15 (토)
장소 합의 가능하고 무엇보다 안다치고 매너있게 게임하실팀 구합니다.</textarea>
	      </div>
	      </p>
	      <p>
	      <button><a href="teammatchingBoard.jsp">수정완료</a></button>
	      <button><a href="teammatchingBoard.jsp">삭제</a></button>      
	      <button><a href="teammatchingBoard.jsp">닫기</a></button>
	      </p>
	    </section>
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
</body>
</html>