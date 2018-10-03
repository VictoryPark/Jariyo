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
		border : 2px solid rgb(27, 116, 93);
	}
	a {
		color: #345;
	}
	body{
	   background: #F2F1ED;
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
	        <a href="<c:url value="/teammatching/list.j"/>">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="<c:url value="/mangather/list.j"/>">용병 모집 게시판</a>
	    </p>
	    <p>
	    	<a href="<c:url value="/manvolun/list.j"/>">용병 신청 게시판</a>
	    </p>
	    </aside>
	    
	    <section>
	    	<h3>용병 신청 게시판</h3>
	    	<hr>
		    <div>
		    <span>
		    <button><a href="<c:url value="/manvolun/writeForm.j"/>">글쓰기</a></button>
		    </span>
		    </div>
		
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
		    		<td><a href="<c:url value="/manvolun/detail.j?boardNo=${b.boardNo}"/>"><c:out value="${b.title}"/></a></td>
		    		<!--<c:set var='c' value="${mName}"/>-->
					<td><c:out value="${b.writerName}"/></td>
		    		<td><fmt:formatDate value="${b.regDate}" 
		    							pattern="yyyy.MM.dd"/></td>
		    	</tr>
			    </c:forEach>
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