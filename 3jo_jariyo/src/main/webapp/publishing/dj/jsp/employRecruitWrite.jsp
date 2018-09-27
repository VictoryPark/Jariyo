<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>employRecruitWrite</title>
<link rel="stylesheet" href="../../common/headerfooter.css"/>
<style>
aside, section {
		height: 550px;
		border : 2px solid black;
	}
#photobox {
		width : 300px;
		height : 200px;
		background-color: gray;
	}
tr, td {
		width : 135px;
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
	    <p>
	        <a href="matchingBoard.jsp">팀 매칭 게시판</a>
	    </p>
	    <p>    
	        <a href="employBoard.jsp">용병 게시판</a>
	    </p>
	    </aside>
	    <section>
	 
			<h4><a href="employRecruitWrite.jsp">[용병 모집]</a><a href="employApplyWrite.jsp">[용병 신청]</a></h4>
			<hr>
			<h4><input type="text" name="title" value="제목을 입력하세요" ></h4>	
	    
	    	<div id = "photobox"></div>
			<table>
				<tr>
					<td>팀명</td>
					<td><input type="text" name="teamName"></td>
					<td>종목</td>
					<td><input type="text" name="dictionary"></td>
				</tr>
				<tr>
					<td>평균연령</td>
					<td><input type="text" name="averageAge"></td>
					<td>포지션</td>
					<td><input type="text" name="position"></td>
				</tr>
				<tr>
					<td colspan="4">활동지역</td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="area" rows="1" cols="62"></textarea></td>
				</tr>
				<tr>
					<td colspan="4">경기 일자(예 4월 18일 오후 1시)</td>
				<tr>
				<tr>
					<td colspan="4"><input type="text" name="date"></td>
				</tr>
			</table>
			<p> 
			<div>
			<textarea name="content" row="6" cols="96">글 내용을 작성해주세요.</textarea>
			</div>
			</p>
			<p>
			<button><a href="employBoard.jsp">작성하기</a></button>
			<button>이미지 첨부</button>
			<button><a href="employBoard.jsp">닫기</a></button>
	    	</p>
	    </section>
	  </article>
	</main>
	<c:import url="../../common/mainbarfooter.jsp" />
	
</body>
</html>