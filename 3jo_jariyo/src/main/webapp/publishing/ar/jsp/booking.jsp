<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking-page</title>
<link rel="stylesheet" href="../../common/headerfooter.css"/>
<link rel="stylesheet" href="../css/bookingmain.css"/>
<link rel="stylesheet" href="../css/calendar.css"/>
</head>
<body>
	<c:import url="../../common/mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
	      <h2>
	      	예약 장소 정보
	      </h2>
	      <div id="mapimg">
	      	<img src="../img/map.png" />
	      </div>
	      <div>
	      	상세 시설 정보들<br>
	      	샤워실<br>
	      	흡연구역 보유<br>
	     	체육관 보유..<br>
	     	등등...<br>
	      </div>
	    </aside>
	    <section>
		    <h1>
		      예약자 상세 정보 기입
		    </h1>
		    <div id="bookinginfo" >
		    <form action="" method="post">
			    <p>
			    *예약자 성명 : <input type="text" name="name" value="가입한 회원 이름" disabled/>
			    </p>
			    <p>
			    *이용 금액 : <input type="text" name="fare" value="db에서 계산한 가격" disabled/>
			    </p>
			    <p>
			    *이용 시간 : <input type="text" name="starttime" value="달력에서 표시한 시작시간"disabled/>
			    			 ~ <input type="text" name="endtime" value="달력에서 표시한 종료시간" disabled/>
			    </p>
			    <p>
			    예약팀 이름 : <input type="text" name="teamname" placeholder="팀 이름을 기입해주세요."/>
			    </p>
			    <p>
			    예약자 이메일주소 : <input type="email" name="email" placeholder="예약 확인을 받아볼 메일 주소" />
			  	메일 발송 여부 <input type="radio" name="emailsend" value="y">	발송원함
			  				<input type="radio" name="emailsend" value="n"> 발송원하지 않음
			    </p>
			    <p>
			    *예약자 전화번호 : <input type="tel" name="tel" placeholder="연락가능한 전화번호를 - 포함하여 작성" required
			    					pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"/>
			    </p>
			    <p>
			    	위의 내용을 확인하고 환불이 불가능한 것을 확인하신 후에 예약하기를 눌러주세요.
			    </p>
			    <button>예약 하기</button>
			    <button>내용 초기화</button>
			    
		    </form> 
		    </div> 
	    </section>
	    <aside>
	    <form action="" method="post" >
	    	<c:import url="calendar.jsp" />
	    	<div>
	    		날짜 : <input type="date" name="date"/><br>
	    		시작시간 : <input type="time" name="starttime"/><br>
	    		종료시간 : <input type="time" name="endtime"/>
	    	</div>
	    </form>	
	    </aside>
	  </article>
	</main>
	<c:import url="../../common/mainbarfooter.jsp" />
</body>
</html>