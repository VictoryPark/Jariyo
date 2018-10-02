<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking-page</title>
 <c:import url="bookingCSS.jsp" />
 <script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
</script>
</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
      <article>
        <aside>
          <h2>
              예약 장소 정보
          </h2>
          <div id="mapimg">
              <img src="<c:url value="/img/booking/map.png"/>" />
          </div>
          <div>
          이름 : ${place.placeName }<br>
          도로명 주소 : ${place.placeRoadArrd }<br>
          전화번호 : ${ place.placePhoneNo}<br>
          시설 이용시작시간 : ${wds}시<br>
          시설 이용마감시간 : ${wde}시<br>
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
            <div id="bookinglist">
            	
            </div>
            <div id="bookinginfo" >
            <form action="<c:url value="/booking/insert.do"/>" method="post">
            	<input type="hidden" id="hidden" name ="plno" value="${ plno}"/>
	                <p>*예약자 성명 : <input type="text" name="name" value="${user.name }" disabled/>
	                   </p>
	                   <p>
	                       *이용 금액 : <input type="text" name="fare" value="db에서 계산한 가격" disabled/>
	                   </p>
	                 <p>*예약 날짜 : <input type="text" id="date" name="date" value="달력에서 표시한 날짜"/></p>
	                 <p>
	                 *이용 시간 : <input type="text" name="starttime" value="달력에서 표시한 시작시간" />
	                              ~ <input type="text" name="endtime" value="달력에서 표시한 종료시간" />
	                 </p>
	                 <p>
	                 예약팀 이름 : <input type="text" name="teamname" placeholder="팀 이름을 기입해주세요."/>
	                 </p>
	                 <p>
	                 예약자 이메일주소 : <input type="email" name="email" placeholder="예약 확인을 받아볼 메일 주소" /><br>
	                   메일 발송 여부 <input type="radio" id="send1" name="emailsend" value="y" checked/>	
	                   				<label for="send1" >발송원함</label>
	                               <input type="radio" id="send2" name="emailsend" value="n"> 
	                               <label for="send2" >발송원하지 않음</label>
	                 </p>
	                 <p>
	                 *예약자 전화번호 : <input type="tel" name="tel" 
	                				 placeholder="연락가능한 전화번호를 - 빼고 작성" required/>
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
        
            <div id="calendar"></div>
    		<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>   
            
            <div id="bookingdate">
              <p>날짜 : <input type="date" name="cal"/></p>
              <p>시작시간 : <input type="time" name="bookingtime1"/></p>
              <p>종료시간 : <input type="time" name="bookingtime2"/></p>
              <button type="button" id="save">예약 조회</button>
            </div>
        </aside>
      </article>
    </main>
	<c:import url="../common/mainbarfooter.jsp" />
	<script src="<c:url value="/jsp/booking/calendar2.js"/>"></script>
	<script>
		/* 
	    var divDay = $("div[class='day-number']").click(function() {
	        console.log($(this).html())
	        //date.val($(this).html().format('dd'))
	    }) */
	
	    $("button#save").click(function(){
	        var bookingtime1 = $("input[name='bookingtime1']")
	        var bookingtime2 = $("input[name='bookingtime2']")
	        $("input[name='starttime']").val(bookingtime1.val())
	        $("input[name='endtime']").val(bookingtime2.val())
	    	var date = $("input[type='date']")
	        $("input#date").val(date.val())
	    })
	</script>
</body>
</html>