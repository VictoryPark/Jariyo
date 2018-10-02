<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>manVolunBoard</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">
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
		border : 2px solid black;
	}
	a {
		color: #345;
	}

</style>
</head>
<body>
<c:import url="../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
		 <p>
	        <a href="<c:url value="/teammatching/list.do"/>">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="<c:url value="/mangather/list.do"/>">용병 모집 게시판</a>
	    </p>
	    <p>
	    	<a href="<c:url value="/manvolun/list.do"/>">용병 신청 게시판</a>
	    </p>
	    </aside>
	    <section>
	    	<h3>용병 신청 게시판</h3>
	    	<hr>
		    <form>
		    <div>
		    <span>
		      <select name="지역">
		    	<option value ="시, 도" selected>시, 도</option>
		    	<option value ="서울">서울</option>
		    	<option value ="경기">경기</option>
		    	<option value ="강원">강원</option>
		    	<option value ="경상">경상</option>
		    	<option value ="전라">전라</option>
		    	<option value ="충청">충청</option>
		    	<option value ="제주">제주</option>
		   	  </select>
		    <input type="search" name="search"/>
		    <button>검색</button>
		    <button><a href="<c:url value="/manvolun/writeForm.do"/>">글쓰기</a></button>
		    </span>
		    </div>
		    </form>
		    <table>
		    	<tr>
		    		<th>글번호</th>
		    		<th>종목</th>
		    		<th>지역</th>
		    		<th>제목</th>
		    		<th>글쓴이</th>
		    		<th>작성시간</th>
		    	</tr>
		    	
		    	<c:forEach var="b" items="${list}">
		    	<tr>
		    		<td><c:out value="${b.boardNo}"/></td>
		    		<td><c:out value="${b.kindofGame}"/></td>
		    		<td><c:out value="${b.area}"/></td>
		    		<td><a href="<c:url value="/manvolun/detail.do?boardNo=${b.boardNo}"/>"><c:out value="${b.title}"/></a></td>
		    		<td><c:out value="${writerId}"/></td>
		    		<td><fmt:formatDate value="${b.regDate}" 
		    							pattern="yyyy/MM/dd HH:mm:ss" /></td>
		    	</tr>
			    </c:forEach>
		    </table>
		    <div>
		    </form>
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