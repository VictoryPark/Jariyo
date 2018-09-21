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
		width: 135px;
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
		width: 860px;
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
	      
	      <h3>팀 매칭 게시판</h3>
	      <hr>
	      <h5>15일 (토) 권선동 세곡초등학교 경기하실분구합니다.</h5>
		  <div id="photobox"></div>
		  <table>
		  	<tr>
		  		<td>팀명</td>
		  		<td>수원 FC</td>
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
		  	<tr>
		  		<td>경기 일자</td>
		  		<td>2018-08-15</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2">경기장</td>
		  	</tr>
		  	<tr>
		  		<td colspan="2">세곡초등학교</td>
		  	</tr>
		  </table>
		  
		  <p>
		  <div id = "content">
		  경기 날짜 : 09/15 (토)
		 <br> 장소 합의 가능하고 무엇보다 안다치고 매너있게 게임하실팀 구합니다.
	      </div>
	      </p>
	      <table id="comment">
	      	<tr>
	      		<td>정인용</td>
	      		<td colspan="2">시간대가 어떻게 되시나요?</td>
	      		<td>09-14 10:10</td>
	      	</tr>
	      </table>
	      <p>
	      <button><a href="matchingModify.jsp">수정</a></button>
	      <button>삭제</button>	      
	      <button><a href="matchingBoard.jsp">목록</a></button>
	      </p>
	      
	    </section>
	  </article>
	</main>
	<c:import url="../../common/mainbarfooter.jsp" />
	
</body>
</html>