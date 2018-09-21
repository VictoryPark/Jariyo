<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>employBoard</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css"/>
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
		background-image: url('../../img/manvolun/employBoard.jpg');
	}

</style>
</head>
<body>
<c:import url="../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
	     <p>
	        <a href="../teammatching/teammatchingBoard.jsp">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="../manvolun/manVolunBoard.jsp">용병 게시판</a>
	    </p>
	    </aside>
	    <section>
	    	
		    <table>
		    <form>
		    <div>
		    <span>
		    <select name="시,도">
		    	<option value ="시, 도" selected>시, 도</option>
		    	<option value ="서울특별시">서울특별시</option>
		    	<option value ="경기도">경기도</option>
		    	<option value ="강원도">강원도</option>
		    	<option value ="경상도">경상도</option>
		    	<option value ="전라도">전라도</option>
		    	<option value ="충청도">충청도</option>
		    </select>
		    </span>
		    <span>
		    <select name="시,군,구">
		    	<option value ="시,군,구" selected>시,군,구</option>
		    	<option value ="서울특별시">서울특별시</option>
		    	<option value ="수원시">수원시</option>
		    	<option value ="인천광역시">인천광역시</option>
		    	<option value ="부산광역시">부산광역시</option>
		    </select>
		    </span>
		    <span>
		    <select name="동,면,읍">
		    	<option value ="동면읍" selected>동,면,읍</option>
		    	<option value ="권선동">권선동</option>
		    	<option value ="세류동">세류동</option>
		    	<option value ="인계동">인계동</option>
		    	<option value ="탑동">탑동</option>
		    </select>
		    <select name="시설">
		    	<option value ="시설" selected>시설</option>
		    	<option value ="수원 월드컵 경기장">수원 월드컵 경기장</option>
		    	<option value ="서울 올림픽 경기장">서울 올림픽 경기장</option>
		    	<option value ="인천 축구 전용 경기장">인천 축구 전용 경기장</option>
		    </select>
		    <input type="search" name="search"/>
		    <button>검색</button>
		    <button><a href="manVolunWrite.jsp">글쓰기</button></a>
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
		    		<td><a href="manVolunDetail.jsp">[모집]매너있으신분 모십니다</a></td>
		    		<td>이득재</td>
		    		<td>09-12 13:16</td>
		    	</tr>
		    	<tr>
		    		<td>2</td>
		    		<td>09-22</td>
		    		<td>농구</td>
		    		<td>무관</td>
		    		<td>수원시</td>
		    		<td><a href="manVolunDetail.jsp">[신청] 키 189 포지션 상관없습니다</td>
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
<c:import url="../common/mainbarfooter.jsp" />

</body>
</html>