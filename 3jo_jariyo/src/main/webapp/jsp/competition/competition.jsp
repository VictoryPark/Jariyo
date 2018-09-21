<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SportsEvent</title>
<link rel="stylesheet" href="../../css/common/headerfooter.css"/>
<link rel="stylesheet" href="../../css/competition/competition.css"/>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	    <main>
        <article>
          <aside>
            <h2>
              대회 검색 조건
            </h2>
            <form action="" method="post">
            <div id="search-event">
                <div id="search-title">검색</div>
                <span>운동 종목</span><br>
                <select name="kindofsports">
                    <option value="all">전체</option>
                    <option value="soccer">축구</option>
                    <option value="tennis">테니스</option>
                    <option value="baseball">야구</option>
                    <option value="basketball">농구</option>
                    <option value="valleysoccer">족구</option>
                </select><br>
                <span>지역</span><br>
                <select name="kindofsports">
                    <option value="all">전국</option>
                    <option value="capitalarea">수도권</option>
                    <option value="ks">경상도</option>
                    <option value="cc">충청도</option>
                    <option value="kw">강원도</option>
                    <option value="jl">전라도</option>
                    <option value="jj">제주도</option>
  
                </select><br>
                    <span>날짜</span><br>
                    <input type="month" name="month"/>
            </div>
            </form>
          </aside>
          <section>
              <h3>
                검색 결과
              </h3>
              <hr>
              <div id="result1">
                  <img id="soccer1" src="../../img/competition/soccer.png" width="250px"/>
                  <p>전국 소방인 축구대회</p>
                  <p>일시 : 2016년 9월 28~30일</p>
                  <p>장소 : 경남 함안군 함안스포츠 타운</p>
                  <a href="">더 자세히 보기</a>
              </div>
              <div id="result2">
                  <img id="soccer1" src="../../img/competition/soccer2.png" width="250px"/>
                  <p>남북 노동자 통일축구대회</p>
                  <p>일시 : 2016년 9월 28~30일</p>
                  <p>장소 : 경남 함안군 함안스포츠 타운</p>
                  <a href="">더 자세히 보기</a>
              </div>
          </section>
        </article>
      </main>
	<c:import url="../common/mainbarfooter.jsp" />
</body>
</html>