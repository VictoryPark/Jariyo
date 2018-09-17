<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리YO 내정보</title>
<link rel="stylesheet" href="<c:url value="/publishing/inyoung/css/myPage.css"/>">
<link rel="stylesheet" href="<c:url value='/publishing/inyoung/css/profile.css' />" />
<link rel="stylesheet" href="<c:url value='/publishing/inyoung/css/section.css' />" />
<link rel="stylesheet" href="<c:url value='/publishing/inyoung/css/myInfo.css' />" />
</head>
<body>
	<c:import url="../../../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside class="left">
	      <div class="user-profile">
				<img class="avatar" src="../../img/real.jpg" />
			    <div class="username">정인용</div>
			  <div class="bio">
			  	
			  </div>
			    <div class="description">
			    난 축구가 좋아! ㅎㅎ 
			  </div>
			  <ul class="data">
			    <li>
			      <a class="my-profile" href="myInfo.jsp"><span class="entypo-heart"> 내정보</span></a>
			    </li>
			    <li>
			      <a class="my-profile"  href="../../../dohun/jsp/messagelist.jsp"><span class="entypo-eye"> 쪽지</span></a>
			    </li>
			</div>
	    </aside>
	    <section>
	    	<div>
	    	<span>아이디 : </span>
	    	<input type="text" name="id" placeholder="아이디" value="vlsyddl" />
		    <input type="text" name="name" placeholder="이름" value="정인용" />
		    <input type="text" name="email" placeholder="vlsyddl@a.com" />
		    <input type="password" name="password" placeholder="비밀번호" />
		    <input type="password" name="password2" placeholder="비밀번호 확인" />
		    <input type="text" name="phonenum" placeholder="01012345678" />
		    <input type="text" name="addr" placeholder="역삼동 637-12" />
		    <div class="select">
	    		<a class="birth">생년월일</a><br>
			    <select name="year">
			        <option value="0">선택</option>
			        <option value="2018">2018</option>
			        <option value="2017">2017</option>
			        <option value="2016">2016</option>
			        <option value="2015">2015</option>
			        <option value="2014">2014</option>
			        <option value="2013">2013</option>
			        <option value="2012">2012</option>
			        <option value="2011">2011</option>
			        <option value="2010">2010</option>
			        <option value="2009">2009</option>
			        <option value="2008">2008</option>
			        <option value="2007">2007</option>
			        <option value="2006">2006</option>
			        <option value="2005">2005</option>
			        <option value="2004">2004</option>
			        <option value="2003">2003</option>
			        <option value="2002">2002</option>
			        <option value="2001">2001</option>
			        <option value="2000">2000</option>
			        <option value="1999">1999</option>
			        <option value="1998">1998</option>
			        <option value="1997">1997</option>
			        <option value="1996">1996</option>
			        <option value="1995">1995</option>
			        <option value="1994">1994</option>
			        <option value="1993">1993</option>
			        <option value="1992">1992</option>
			        <option value="1991">1991</option>
			        <option value="1900">1990</option>
			        <option value="1989">1989</option>
			        <option value="1988">1988</option>
			        <option value="1987">1987</option>
			        <option value="1986">1986</option>
			        <option value="1985">1985</option>
			        <option value="1984">1984</option>
			        <option value="1983">1983</option>
			        <option value="1982">1982</option>
			        <option value="1981">1981</option>
			        <option value="1980">1980</option>
			        <option value="1979">1979</option>
			        <option value="1978">1978</option>
			        <option value="1977">1977</option>
			        <option value="1976">1976</option>
			        <option value="1975">1975</option>
			        <option value="1974">1974</option>
			        <option value="1973">1973</option>
			        <option value="1972">1972</option>
			        <option value="1971">1971</option>
			        <option value="1970">1970</option>
			        <option value="1969">1969</option>
			        <option value="1968">1968</option>
			        <option value="1967">1967</option>
			        <option value="1966">1966</option>
			        <option value="1965">1965</option>
			        <option value="1964">1964</option>
			        <option value="1963">1963</option>
			        <option value="1962">1962</option>
			        <option value="1961">1961</option>
			        <option value="1960">1960</option>
			        <option value="1959">1959</option>
			        <option value="1958">1958</option>
			        <option value="1957">1957</option>
			        <option value="1956">1956</option>
			        <option value="1955">1955</option>
			        <option value="1954">1954</option>
			        <option value="1953">1953</option>
			        <option value="1952">1952</option>
			        <option value="1951">1951</option>
			        <option value="1950">1950</option>
		    	</select> 년
		    	<select name="month">
			        <option value="m-0">선택</option>
			        <option value="m-1">1</option>
			        <option value="m-2">2</option>
			        <option value="m-3">3</option>
			        <option value="m-4">4</option>
			        <option value="m-5">5</option>
			        <option value="m-6">6</option>
			        <option value="m-7">7</option>
			        <option value="m-8">8</option>
			        <option value="m-9">9</option>
			        <option value="m-10">10</option>
			        <option value="m-11">11</option>
			        <option value="m-12">12</option>
		    	</select>월
		   		<select name="day">
			        <option value="d-0">선택</option>
			        <option value="d-1">1</option>
			        <option value="d-2">2</option>
			        <option value="d-3">3</option>
			        <option value="d-4">4</option>
			        <option value="d-5">5</option>
			        <option value="d-6">6</option>
			        <option value="d-7">7</option>
			        <option value="d-8">8</option>
			        <option value="d-9">9</option>
			        <option value="d-10">10</option>
			        <option value="d-11">11</option>
			        <option value="d-12">12</option>
			        <option value="d-13">13</option>
			        <option value="d-14">14</option>
			        <option value="d-15">15</option>
			        <option value="d-16">16</option>
			        <option value="d-17">17</option>
			        <option value="d-18">18</option>
			        <option value="d-19">19</option>
			        <option value="d-20">20</option>
			        <option value="d-21">21</option>
			        <option value="d-22">22</option>
			        <option value="d-23">23</option>
			        <option value="d-24">24</option>
			        <option value="d-25">25</option>
			        <option value="d-26">26</option>
			        <option value="d-27">27</option>
			        <option value="d-28">28</option>
			        <option value="d-29">29</option>
			        <option value="d-30">30</option>
			        <option value="d-31">31</option>
   			</select>일
	    	</div>
				<input type="submit"  class="button" name="signup_submit" value="수정" />
			</div>
			</div>
		</section>
	    <aside>
	    	<h1>
	        <h1>
	    </aside>
	  </article>
	</main>
	<c:import url="../../../common/mainbarfooter.jsp" />

</body>
</html>