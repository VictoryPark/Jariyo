<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<header>
	    <h1>
	      <a href="<c:url value="/jariyo/main.j" />">자리Y<img id="ball" src="<c:url value='/img/common/ball-icon.gif'/>" width="58px"/></a>
	    </h1>
	  <nav am-layout="horizontal">
	  <a href="<c:url value="/jariyo/main.j" />">검색</a>
	  <a href="<c:url value="/teammatching/list.j" />">게시글</a>
	  <a href="<c:url value="/mypage.j" />">마이 페이지</a>
      <c:choose>
	    <c:when test="${empty user}">
	      <a href="<c:url value="/login-form.j" />">로그인</a>
	    </c:when>
	    <c:otherwise>
		  <a href="<c:url value="/logout.j" />">로그아웃</a>
	    </c:otherwise>
      </c:choose>
	  </nav>
	</header>
