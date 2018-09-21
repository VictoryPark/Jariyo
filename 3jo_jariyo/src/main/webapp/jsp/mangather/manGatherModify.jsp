<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>employRecruitModify</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css"/>
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
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
	    <div id="menu">
        <p>
	        <a href="../teammatching/teammatchingBoard.jsp">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="manGatherBoard.jsp">용병 게시판</a>
	    </p>
	    </aside>
	    <section>
		    <hr>
			<h4><input type="text" name="title" value="[모집]매너있으신분 모십니다"></h4>	 
		   <div id = "photobox"></div>
			<table>
				<tr>
					<td>팀명</td>
					<td><input type="text" name="name" value="서울 FC"></td>
					<td>종목</td>
					<td><input type="text" name="dictionary" value="축구"></td>
				</tr>
				<tr>
					<td>평균연령</td>
					<td><input type="text" name="age" value="40"></td>
					<td>포지션</td>
					<td><input type="text" name="position" value="골키퍼"></td>
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
					<td>활동지역</td>
					<td colspan="3"><textarea name="area" rows="1" cols="62">서울시 강남,송파,서초구 일대</textarea> </td>
				</tr>
				<tr>
					<td colspan="4">경기 일자(예 4월 18일 오후 1시)</td>
				</tr>
				<tr>
					<td colspan="4"><input type="text" name="date" value="9월 17일 오전 8시"></td>
				</tr>
			</table>
			<p>
			<div>
			<textarea name="content" row="6" cols="115">2012년부터 이어온 팀입니다 실력도 중요하지만 낯가리지 않고 즐겁게 게임하실분 모집합니다 </textarea>
			</div>
			</p>
			<p>
			<button><a href="manGatherBoard.jsp">수정완료</a></button>
			<button><a href="manGatherBoard.jsp">삭제</a></button>
			<button><a href="manGatherBoard.jsp">닫기</a></button>
	    	</p>
	    </section>
	  </article>
	</main>

	<c:import url="../common/mainbarfooter.jsp" />
</body>
</html>