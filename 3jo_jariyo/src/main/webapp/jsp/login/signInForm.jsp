<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리YO 로그인</title>
<c:import url="basicIncludeSignInCss.jsp" />
</head>
<body>
<div class="form-wrapper">
  <h1>자리Y<img id="ball" src="http://localhost:8000/3jo_jariyo/img/common/ball-icon.gif" width="58px"/></h1>
  <form action="<c:url value="/login.j" />">
    <div class="form-item">
      <label for="email"></label>
      <input type="email" name="email" required="required" placeholder="이메일"></input>
    </div>
    <div class="form-item">
      <label for="password"></label>
      <input type="password" name="password" required="required" placeholder="비밀번호"></input>
    </div>
    <div class="button-panel">
      <input type="submit" class="button" title="Sign In" value="로그인"></input>
    </div>
  </form>
  <div class="form-footer">
    <p><a href="<c:url value="/signup-form.j" />">회원가입</a></p>
  </div>
</div>
</body>
</html>