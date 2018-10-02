<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>employBoard</title>
<link rel="stylesheet" href="../../common/headerfooter.css"/>
<style>
	
	table, th, td {
		border: 1px solid #345;
		text-align: center;
		background-color: white;
	}
	table {
		width :90%;
	}
	th {
		border : 10px solid green;
	}
		aside, section {
		height: 550px;
		border : 2px solid black;
	}
	a {
		color: #345;
	}
	body {
		background-image: url('../img/employBoard.jpg');
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
	    	
		    <table>
		    <form>
		    <div>
		    <span>
		    <select name="시,도">
		    	<option value ="시, 도" selected>시, 도</option>
		    	<option value ="1">서울</option>
		    	<option value ="2">인천/경기</option>
		    	<option value ="3">대전/세종/충청</option>
		    	<option value ="4">대구/경북</option>
		    	<option value ="5">	부산/울산/경남</option>
		    	<option value ="6">광주/전라</option>
		    	<option value ="7">강원</option>
		    	<option value ="8">제주</option>
		    </select>
		    </span>

		    </select>
		    <input type="search" name="search"/>
		    <button>검색</button>
		    <button><a href="employRecruitWrite.jsp">글쓰기</button></a>
		    </span>
		    </div>
		    </form>
		    <table>
		    	<tr>
		    		<th>글번호</th>
		    		<th>경기 일시</th>
		    		<th>종목</th>
		    		<th>포지션</th>
		    		<th>지역</th>
		    		<th>제목</th>
		    		<th>글쓴이</th>
		    		<th>작성시간</th>
		    	</tr>
		    	<tr>
		    		<td>1</td>
		    		<td>09-17</td>
		    		<td>축구</td>
		    		<td>골키퍼</td>
		    		<td>강남구</td>
		    		<td><a href="employRecruitDetail.jsp">[모집]매너있으신분 모십니다</a></td>
		    		<td>이득재</td>
		    		<td>09-12 13:16</td>
		    	</tr>
		    	<tr>
		    		<td>2</td>
		    		<td>09-22</td>
		    		<td>농구</td>
		    		<td>무관</td>
		    		<td>수원시</td>
		    		<td><a href="employApplyDetail.jsp">[신청] 키 189 포지션 상관없습니다</td>
		    		<td>박아란</td>
		    		<td>09-12 16:30</td>
		    	</tr>
		    	<tr>
		    		<td>3</td>
		    		<td>09-23</td>
		    		<td>테니스</td>
		    		<td>X</td>
		    		<td>수원시</td>
		    		<td>[모집]10월에 열리는 생활체육대회 같이 참가하실분 구합니다</td>
		    		<td>김도훈</td>
		    		<td>09-19 10:36</td>
		    	</tr>
		    </table>
		    <div>
		    <button>이전</button>
		    <a>-1-</a>
		    <button>다음</button>
		    </div>
		    
	    </section>
	  </article>
	</main>
<c:import url="../../common/mainbarfooter.jsp" />

</body>
</html>