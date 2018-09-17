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

	
	aside, section {
		height: 550px;
		border : 2px solid black;
	}
</style>
</head>
<body>
	<c:import url="../../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
	    <div id="menu">
        <p>
	        <a href="matchingBoard.jsp">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="employBoard.jsp">용병 게시판</a>
	    </p>
	    </aside>
	    <section>
		    <h4><a href="employWrite.jsp">[용병 모집]</a><a href="employApplyWrite.jsp">[용병 신청]</a></h4>
	    
		   <div id = "photobox"></div>
			<table>
				<tr>
					<td>닉네임,팀명</td>
					<td><input type="text" name="name"></td>
					<td>주발</td>
					<td><input type="text" name="foot"></td>
				</tr>
				<tr>
					<td>평균연령,나이</td>
					<td><input type="text" name="age"></td>
					<td>포지션</td>
					<td><input type="text" name="position"></td>
				</tr>
				<tr>
					<td>선수출신 여부 </td>
					<td><input type="radio" name="career" value="non" checked="checked"/>비선출
						<input type="radio" name="career" value="elementary"/>초등부
						<input type="radio" name="career" value="middle"/>중등부
						<input type="radio" name="career" value="high"/>고등부
						<input type="radio" name="career" value="university"/>대학 이상
					</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="area" rows="3" cols="62"></textarea> </td>
				</tr>
			</table> 
			<textarea name="content" row="6" cols="96"></textarea>
			<p>
			<button><a href="employBoard.jsp">수정완료</a></button>
			<button><a href="employBoard.jsp">삭제</a></button>
			<button><a href="employBoard.jsp">닫기</a></button>
	    	</p>
	    </section>
	  </article>
	</main>
	<footer>
	    <p>Footer</p>
	</footer>
	
	    </section>

	  </article>
	</main>
	<c:import url="../../common/mainbarfooter.jsp" />
</body>
</html>