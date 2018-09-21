../manvolun/manVolunBoard.jsp<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>matchingBoard</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css"/>
<style>

	table, th, td{
		border: 1px solid #345;
		text-align: center;
		background-color: white;
	}
	table {
		width: 90%;
	}
	th {
		border : 10px solid green;
	}
	aside, section {
		height: 550px;
		border : 2px solid white;
	}
	body {
		background-image: url('../../img/teammatching/matchingBoard2.jpg');
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
	    </div>
	    </aside>
	    <section>
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
		    <button><a href="teammatchingWrite.jsp">글쓰기</button></a>
		    </span>
		    </div>
		    </form>
		    <table>
		    	<tr>
		    		<th>글번호</th>
		    		<th>경기 일시</th>
		    		<th>구장</th>
		    		<th>지역</th>
		    		<th>제목</th>
		    		<th>팀명</th>
		    		<th>모집상태</th>
		    	</tr>
		    	<tr>
		    		<td>1</td>
		    		<td>09-15</td>
		    		<td>세곡초등학교</td>
		    		<td>권선구</td>
		    		<td><a href="teammatchingDetail.jsp">15일 (토) 권선동 세곡초등학교 경기하실분구합니다.</a></td>
		    		<td>세곡 FC</td>
		    		<td>모집중</td>
		    	</tr>
		    	<tr>
		    		<td>2</td>
		    		<td>09-19</td>
		    		<td>서울 월드컵경기장</td>
		    		<td>서울시</td>
		    		<td>일요일 올팍경기장 한게임하실분 구합니다 시간협의가능</td>
		    		<td>서울FC</td>
		    		<td>모집완료</td>
		    	</tr>
		    	<tr>
		    		<td>3</td>
		    		<td>09-22</td>
		    		<td>잠신중학교</td>
		    		<td>잠실</td>
		    		<td>22일 잠실중학교에서 경기하실팀 구합니다</td>
		    		<td>잠신FC</td>
		    		<td>모집중</td>
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