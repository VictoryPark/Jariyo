<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>manVolunWrite</title>
<link rel="stylesheet" href="<c:url value="/css/common/headerfooter.css"/>">
<style>
	aside, section {
		border : 2px solid black;
	}
	#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
	tr, td {
		width : 145px;
		border: 1px solid black;
	}
	#content{
		width: 860px;
		height : 80px;
		border: 1px solid black;
	}
	#comment {
		width : 850px;
		boarder : 1px solid black;
	}
	hr{
		border : 1px solid black;
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
	    
	    	<h3>글쓰기</h3>
	      	<hr>
	    	<form method="post" action="<c:url value='/manvolun/write.j'/>">
	    	<h4><input type="text" name="title" placeholder="제목을 입력하세요."></h4>
		   <div id = "photobox"></div>
			<table>
				<tr>
					<td>이름</td>
					<!-- <c:set var='b' value='${mName}'/> -->
					<td><input type="text" name="writerName" value="${mName}" readonly="readonly"></td>
					<td>종목</td>
					<td><input type="text" name="kindofGame" ></td>
				</tr>
				<tr>
					<td>활동지역</td>
					<td><input type="text" name="area"></td>
				</tr>
				<tr>
					<td>선수출신 여부 </td>
					<td colspan="3"><input type="radio" name="career" value="비선출" checked="checked"/>비선출
						<input type="radio" name="career" value="초등부"/>초등부
						<input type="radio" name="career" value="중등부"/>중등부
						<input type="radio" name="career" value="고등부"/>고등부
						<input type="radio" name="career" value="대학이상"/>대학 이상
					</td>
				</tr>

			</table> 
			<textarea name="content" row="6" cols="96" placeholder="글 내용을 작성해주세요."></textarea>
			</p>
			<p>
			<button>작성하기</button>
			<button>닫기</button>
	    	</p>
	    </section>
	    </form>
	  </article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	
</body>
</html>