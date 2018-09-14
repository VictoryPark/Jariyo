<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>용병게시판</title>
<link rel="stylesheet" href="<c:url value="/publishing/이득재/main2.css"/>">
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
	div{
		
	}
	a {
		color: #345;
	}
	body {
		background-image: url('employBoard.jpg');
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
		    </span>
		    </div>
		    </form>
		    <table>
		    	<tr>
		    		<th>분류</th>
		    		<th>글 번호</th>
		    		<th>닉네임</th>
		    		<th>지역</th>
		    		<th>제목</th>
		    		<th>모집여부</th>
		    	</tr>
		    	<tr>
		    		<td>[모집]</td>
		    		<td>1</td>
		    		<td>김도훈</td>
		    		<td>서울시</td>
		    		<td>진짜 실력자분들 모십니다(포지션 확인 부탁드립니다)</td>
		    		<td>V</td>
		    	</tr>
		    	<tr>
		    		<td>[신청]</td>
		    		<td>2</td>
		    		<td>정인용</td>
		    		<td>수원시</td>
		    		<td>권선구 근처에 매너있고 오래가는 팀 찾습니다</td>
		    		<td></td>
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
	<footer>
	    <p>Footer</p>
	</footer>

</body>
</html>