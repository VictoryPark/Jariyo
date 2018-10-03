<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teammatchingWrite</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">

<style>
	th, td{
		width : 135px;
		border: 1px solid #345;
	}
	aside, section {
		border : 2px solid rgb(27, 116, 93);
	}
	a {
		color: #345;
	}
	body{
	   background: #F2F1ED;
	}
	hr{
		border : 1px solid black;
	}
	#content{
		width: 630px;
		height : 80px;
		border: 1px solid black;
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
		<p>
	        <a href="<c:url value="/teammatching/list.j" />">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="<c:url value="/mangather/list.j"/>">용병 모집 게시판</a>
	    </p>
	    <p>
	    	<a href="<c:url value="/manvolun/list.j"/>">용병 신청 게시판</a>
	    </p>
	    </aside>
	    <section>
	      
	      <h3>팀 매칭 게시판</h3>
	      <hr>
	      <form method="post" action="<c:url value='/teammatching/write.j'/>">
	      <h5><input type="text" name="title" placeholder="제목을 입력하세요."></h5>
		  <table>
		  	<tr>
		  		<td>팀명</td>
		  		<td><input type="text" name="teamName" placeholder="팀명을 입력하세요."></td>
		  		<td>종목</td>
		  		<td><input type="text" name="kindofGame" placeholder="종목을 입력하세요."></td>
		  	</tr>
		  	<tr>
		  		<td>활동 지역</td>
		  		<td><input type="text" name="area" placeholder="활동지역을 입력하세요."></td>
		  		<td>경기장</td>
		  		<td><input type="text" name="placeName" placeholder="경기장을 입력하세요."></td>
		  	</tr>
		  	<tr>
		  		<td>경기일정</td>
		  		<td><input type="text" name="playDate" placeholder="경기일시을 입력하세요. 예)2018-10-04 13:00"></td>
		  		<td>평균연령</td>
		  		<td><input type="text" name="aveAge" placeholder="평균연령을 입력하세요."></td>		  		
		  	</tr>

		  </table>
		  <p>
		  <div>
		  <textarea name="content" row="10" cols="80" placeholder="글 내용을 작성해주세요."></textarea>
	      </div>
	      </p>
	      <p>
	      <button>작성하기</button>	
	      <button><a href="<c:url value="/teammatching/list.j"/>">목록</button>
	      </p>
	      </form>
	      
	    </section>
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	
</body>
</html>