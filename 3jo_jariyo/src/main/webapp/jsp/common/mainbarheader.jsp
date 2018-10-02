<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<header>
	    <h1>
	      자리Y<img id="ball" src="http://localhost:8000/3jo_jariyo/img/common/ball-icon.gif" width="58px"/>
	    </h1>
	  <nav am-layout="horizontal">
	  <a href="http://localhost:8000/3jo_jariyo/jsp/main/mainpage.jsp">검색</a>
	  <a href="http://localhost:8000/3jo_jariyo/jsp/teammatching/teammatchingBoard.jsp">게시글</a>
	  <a href="http://localhost:8000/3jo_jariyo/jsp/competition/competition.jsp">대회 정보</a>
	  <a href="http://localhost:8000/3jo_jariyo/jsp/mypage/myPage.jsp">마이 페이지</a>
      <c:choose>
	    <c:when test="${empty user}">
	      <a href="<c:url value="/login-form" />">로그인</a>
	    </c:when>
	    <c:otherwise>
		  <a href="<c:url value="/logout" />">로그아웃</a>
	    </c:otherwise>
      </c:choose>
	  </nav>
	</header>
