<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리YO 비밀번호 찾기</title>
<c:import url="/publishing/inyoung/jsp/common/basicIncludeSignInCss.jsp" />
</head>
<body>
<div class="form-wrapper">
  <h1>자리Y<img id="ball" src="../../../박아란/ball-icon.gif" width="58px"/></h1>
  <form>
    <div class="form-item">
      <label for="email"></label>
      <input type="email" name="email" required="required" placeholder="이메일을 입력하시면 메일이 발송됩니다."></input>
    </div>
    <div class="button-panel">
      <input type="button" class="button" title="find-pass" value="비밀번호 찾기"
      		 onclick="alert('이메일로 인증번호를 보냈습니다. 가입하신 이메일을 확인해주세요');"></input>
    </div>
  </form>
  <div class="form-footer">
    <p><a href="signInForm.jsp">로그인</a></p>
    <p><a href="signUpForm.jsp">회원가입</a></p>
  </div>
</div>
</body>
</html>