<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>teammatchingDetail</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">

<style>

	th, td{
		width: 135px;
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
		width: 860px;
		height : 80px;
		border: 1px solid black;
	}
	#comment{
		width: 850px;
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
	      
	      <h3>팀 매칭 게시판</h3>
	      <hr>
	      <h5>${board.title}</h5>
		  <table>
		  	<tr>
		  		<td>팀명</td>
		  		<td>${board.teamName}</td>
		  		<td>종목</td>
		  		<td>${board.kindofGame}</td>
		  	</tr>
		  	<tr>
		  		<td>활동 지역</td>
		  		<td>${board.area}</div></td>
		  		<td>경기장</td>
		  		<td>${board.placeName}</td>
		  	</tr>
		  	<tr>
		  		<td>경기일정</td>
		  		<td>${board.playDate}</td>
		  		<td>평균연령</td>
		  		<td>${board.aveAge}</td>  		
		  	</tr>

		  </table>
		  
		  <p>
		  <div>
		  	<teatarea name="content" row="6" cols="96" readonly="readonly">${board.content}</teatarea>
		  </div>
	      </p>
	      <!-- 
	      <table id="comment">
	      	<tr>
	      		<td>정인용</td>
	      		<td colspan="2">시간대가 어떻게 되시나요?</td>
	      		<td>09-14 10:10</td>
	      	</tr>
	      </table>
	       -->
	       <div id="comment">
			<form method="post" action="<c:url value="/teammatching/registcomment.j"/>">
			 <input type="hidden" name="boardNo" value="${board.boardNo}" />	
			 <table width="70%">
			 <tr>
				<td><input type="text" name="writerId" value="${mcmtId}" readonly="readonly"/></td>
				<td><textarea name="content" rows="1" cols="60"></textarea></td>
				<td><input type="submit" value="등록" /></td>
			 </tr>	
			 </table>
		</form>
	</div>
	       
	<form method="post" action="<c:url value="/teammatching/updatecomment.j"/>">
		<input type="hidden" name="boardNo" value="${board.boardNo}" />
		<input type="hidden" name="commentNo" value="${commentNo}" />
	<div id="commentList">
	
	  <table width='80%' border='1'>
		 <tr>
			<c:forEach var="comment" items="${commentList}">
			<c:choose>
		  		<c:when test="${commentNo eq comment.commentNo}">	
		</tr>

			<tr>
			  <td><c:out value="${comment.writerId}" /></td>
			  <td>
			  	<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
			  </td>
			  <td colspan="2">
			  	  <input type="submit" value="수정" />	
			  	  <a href=<c:url value="/teammatching/detail.j?boardNo=${board.boardNo}"/>">취소</a>	
			  </td>
		 </tr>
		</c:when>
		<c:otherwise>
				<tr>
				  <td><c:out value="${comment.writerId}" /></td>
				  <td>
				  		<c:out value="${comment.content}" /></td>
				  <td><fmt:formatDate var="regDate" value="${comment.regDate}" 
				                      pattern="yyyy-MM-dd" />
				      <c:out value="${regDate}" />
				  </td>
				  <td>
				  	  <a href="<c:url value="/teammatching/deletecomment.j?commentNo=${comment.commentNo}&boardNo=${comment.boardNo}"/>">삭제</a>	
				  	  <a href="<c:url value="/teammatching/detail.j?commentNo=${comment.commentNo}&boardNo=${comment.boardNo}"/>">수정</a>	
				  </td>
				 </tr>
		 	</c:otherwise>		 	
		 </c:choose>	
		 </c:forEach>
		<c:if test="${empty commentList}">
		<tr>
		    <td colspan='4'>댓글이 존재하지 않습니다.</td>
		</tr>
		</c:if>
	</table>
	</div>
	</form>	
	       
	      <p>
	      <button><a href="<c:url value="/teammatching/delete.j?boardNo=${board.boardNo}"/>">삭제</a></button>
	      <button><a href="<c:url value="/teammatching/modifyForm.j?boardNo=${board.boardNo}"/>">수정</button>	      
	      <button><a href="<c:url value="/teammatching/list.j"/>">목록</a></button>
	      </p>
	      
	    </section>	
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	
</body>
</html>