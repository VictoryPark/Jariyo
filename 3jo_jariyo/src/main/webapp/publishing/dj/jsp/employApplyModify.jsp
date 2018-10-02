<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>employApplyModify</title>
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
	hr {
		border : 1px solid black;
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
	        <a href="employBoard.jsp">용병 모집 게시판</a>
	    </p>
	    <p>    
	        <a href="employBoard.jsp">용병 신청 게시판</a>
	    </p>
	    </aside>
	    <section>
		    <hr>
			<h4><input type="text" name="title" value="[신청] 키 189 포지션 상관없습니다"></h4>	 
		   <div id = "photobox"></div>
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="박아란"></td>
					<td>종목</td>
					<td><input type="text" name="dictionary" value="농구"></td>
				</tr>
				<tr>
					<td>나이</td>
					<td><input type="text" name="age" value="28"></td>
					<td>포지션</td>
					<td><input type="text" name="position" value="무관"></td>
				</tr>
				<tr>
					<td>선수출신 여부 </td>
					<td colspan="3"><input type="radio" name="career" value="non" checked="checked"/>비선출
						<input type="radio" name="career" value="elementary"/>초등부
						<input type="radio" name="career" value="middle"/>중등부
						<input type="radio" name="career" value="high"/>고등부
						<input type="radio" name="career" value="university"/>대학 이상
					</td>
				</tr>
				<tr>
					<td colspan="4">거주지</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="area" rows="1" cols="62">수원시 권선구,팔달구</textarea> </td>
				</tr>
				<tr>
					<td colspan="4">경기 일자(예 4월 18일 오후 1시)</td>
				</tr>
				<tr>
					<td colspan="4" ><input type="text" name="date" value="9월 22일 오후 7시"></td>
				</tr>					
			</table>
			<p>
			<div>
			<textarea name="content" row="6" cols="115">자차 있고 차타고 30분거리까지는 경기하러 갈수있습니다.</textarea>
			</div>
			</p>
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