<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking-page</title>
 <c:import url="bookingCSS.jsp" />
 <!-- <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=BBjwCvbrK6T1vbhMtGbc"> -->
<!--  </script> -->
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=BBjwCvbrK6T1vbhMtGbc&submodules=geocoder"></script>

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
          <div id="map" style="width:100%;height:400px;"
          		 x="${place.placePositionX}" y="${place.placePositionY}"
          		 addr="${place.placeRoadAddr}">
          
          
              <%-- <img src="<c:url value="/img/booking/map.png"/>" /> --%>
          </div>
          <div>
          이름 : ${place.placeName }<br>
          도로명 주소 : ${place.placeRoadAddr }<br>
          전화번호 : ${ place.placePhoneNo}<br>
          시설 이용시작시간 : ${wds}시<br>
          시설 이용마감시간 : ${wde}시<br>
              <!-- 상세 시설 정보들<br>
              샤워실<br>
              흡연구역 보유<br>
             체육관 보유..<br>
             등등...<br> -->
          </div>
        </aside>
        <section>
            <h1>
              예약자 상세 정보 기입
            </h1>
            <div id="bookinglist">
            	
            </div>
            <div id="bookinginfo" >
            <form action="<c:url value="/booking/insert.j"/>" method="post"/>
            	<input type="hidden" id="hidden" name ="plno" value="${place.placeNo}" userid="${user.id}"/>
            	<input type="hidden" id="hidden" name ="userid" value="${user.id}" />
	                <p>*예약자 성명 : <input type="text" name="name" value="${user.name }" disabled/>
	                   </p>
	                 <p>*예약 날짜 : <input type="text" id="date" name="date" value="달력에서 표시한 날짜"/></p>
	                 <p id="bookingtime">
	                 </p>
	                 <p>
	                 *이용 시간 : <input type="text" name="starttime" value="시작시간" />
	                              ~ <input type="text" name="endtime" value="종료시간" />
	                 </p>
                     <p>
                       *이용 금액 : <input type="text" name="fare" value="" disabled/>
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
                <button type="button" id="reset">내용 초기화</button>
	     </form>
	     </div>
	     
            
        </section>
        <aside>
        
            <div id="calendar"></div>
    		<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>   
            
            <div id="bookingdate">
              <p>날짜 : <input type="date" name="cal"/><button type="button" id="save">예약 조회</button></p>
              <!-- <p>시작시간 : <input type="time" name="bookingtime1"/></p>
              <p>종료시간 : <input type="time" name="bookingtime2"/></p> -->
              
            </div>
        </aside>
      </article>
    </main>
	<c:import url="../common/mainbarfooter.jsp" />
	<script src="<c:url value="/jsp/booking/calendar2.js"/>"></script>
	<script>
	
    var map = new naver.maps.Map('map');
    var myaddress = $("div#map").attr("addr");// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
    naver.maps.Service.geocode({address: myaddress}, function(status, response) {
        if (status !== naver.maps.Service.Status.OK) {
            return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
        }
        var result = response.result;
        // 검색 결과 갯수: result.total
        // 첫번째 결과 결과 주소: result.items[0].address
        // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
        var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
        map.setCenter(myaddr); // 검색된 좌표로 지도 이동
        // 마커 표시
        var marker = new naver.maps.Marker({
          position: myaddr,
          map: map
        });
        // 마커 클릭 이벤트 처리
        naver.maps.Event.addListener(marker, "click", function(e) {
          if (infowindow.getMap()) {
              infowindow.close();
          } else {
              infowindow.open(map, marker);
          }
        });
          // 마크 클릭시 인포윈도우 오픈
         /*  var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
          }); */
      });
      
      
      var div = $("#bookinglist")
    //예약 조회 버튼
    $("button#save").click(function(){
    	var date = $("input[type='date']")
        $("input#date").val(date.val())
//        alert($("#hidden").val(), $("input#date").val());
       
    	showlist()
        
    }) //click
    
    function showlist(){
    	  $.ajax({
          	type: "POST",
          	url : "<c:url value='/booking/list.j'/>",
          	data : {plno : $("#hidden").val(),
          			date : $("input#date").val()},
          	dataType : "json",
          	success : function(list){
      				
          		if(list.length!=0){
          		var html = "<table id='listbooking'><tr>"
      				html += "<th><input type='checkbox' id='all' name='all'></th>"
      				html += "<th>예약 날짜</th>"
      				html += "<th>예약 시작 시간</th>" 
      				html += "<th>예약 종료 시간</th>"
      				html += "<th>예약 팀 이름</th>"
      				html += "<th>예약자 아이디</th>"
      				html += "<th>예약자 전화번호</th></tr>"
      				
          			for(let b of list) {
          				html += "<tr id='"+b.bookingNo+"'>"
          				if(b.id ==$("input#hidden").attr("userid")){
  	        				html += "<td><input type='checkbox' name='booked' value='"+b.bookingNo+"'></td>"
          				} else {
          					html += "<td></td>"
          				}
  	        				html += "<td>"+b.bookingDate+"</td>"
  	        				html += "<td id='st"+b.bookingNo+"'>"+b.startTime+"</td>"
  	        				html += "<td id='et"+b.bookingNo+"'>"+b.endTime+"</td>"
  	        				html += "<td id='tn"+b.bookingNo+"'>"+b.bookingTeamName+"</td>"
  	        				html += "<td>"+b.id+"</td>"  
  	        				html += "<td id='pn"+b.bookingNo+"'>"+b.bookingPhoneNo+"</td></tr>"   

          				
          			} //for
          			html += "</table>"
          			html += "<div id='buttons'><button id='updatebooking'>수정</button>" +
  							"<button id='deletebooking'>삭제</button></div>"
          			div.html(html); 
          			
          		} //if !0
          		else {
          			var html = "<table id='listbooking'><tr>"
          				html += "<th>모든 시간에 예약이 가능합니다.<th></tr></table>"
          			div.html(html);
          		}
      			var p = $("p#bookingtime")
      			p.html("<div id='set'><p>시작시간 : <input type='time' name='bookingtime1'/></p>" +
      		           "<p>종료시간 : <input type='time' name='bookingtime2'/></p>" +
      		           "<button id='sel'>시간 설정</button></div>")
      		           
      		     $("button#sel").click(function() {
  			    	settime()
  			     })
  			     
  			     $("button#updatebooking").click(function() {
  			    	 updatebooking($("input[name='booked']:checked").val())
  			    	 
  			     })
  			     
  			     $("button#deletebooking").click(function() {
  			    	 deletebooking($("input[name='booked']:checked").val())
  			     })
  			     
          	} //success
          	
          })//ajax
      } //showlist
   
    function settime() {
	  var bookingtime1 = $("input[name='bookingtime1']")
	  var bookingtime2 = $("input[name='bookingtime2']")
	  var st = bookingtime1.val();
	  var et = bookingtime2.val();
        $("input[name='starttime']").val(st)
        $("input[name='endtime']").val(et) 
        //alert($("#hidden").val())
        
        $.ajax({
        	
        	url : "<c:url value='/booking/calcul.j'/>",
        	data : {
        		plno : $("#hidden").val(),
        		st : st,
        		et : et
        	},
        	dataType : "json",
        	success : function(fee) {
        		$("input[name='fare']").val(fee);
        		
        	}//success
        	
        }) //ajax
        
	}//settime
    
    $("button#reset").click(function () {
    	var bookingtime1 = $("input[name='bookingtime1']")
    	var bookingtime2 = $("input[name='bookingtime2']")
    	
    	$("input[name='cal']").val("")
    	div.html("");
    	$("input#date").val("")
    	$("input[name='starttime']").val("")
    	$("input[name='endtime']").val("")
    	bookingtime1.val("")
    	bookingtime2.val("")
    	$("input[name='fare']").val("")
    	$("input[name='teamname']").val("")
    	$("input[type='email']").val("")
    	$("input[type='tel']").val("")	
     })
     
     function updatebooking(bno){
    	/* alert(bno+"를 수정합니다.") */
    	
    	$.ajax({
    		
    		url : "<c:url value='/booking/updateform.j'/>",
    		data : "bno="+bno,
    		dataType : "json",
    		success : function(b) {
    			/* alert(b.startTime)
    			alert(b.endTime) */
    			$("td#st"+bno).html(
    				"<input type='time' id='st' value='"+b.startTime+"'/>"
    			)
    			$("td#et"+bno).html(
    				"<input type='time' id='et' value='"+b.endTime+"'/>"
    			)
    			$("td#tn"+bno).html(
    				"<input type='text' id='tn' value='"+b.bookingTeamName+"' style='width: 100px;''/>"
    			)
    			$("td#pn"+bno).html(
    				"<input type='text' id='pn' value='"+b.bookingPhoneNo+"' style='width: 150px;'/>"
    			)
    			
    			$("div#buttons").html(
    				"<button id='completeupdate'>수정 완료</button>" +
					"<button id='cancel'>취소</button>"
    			)
    			
    			$("button#completeupdate").click(function(){
    				completeupdate(bno)
    			})
    			
    			$("button#cancel").click(function() {
    				showlist()
    			})
    		} //success
    		
    	}) //ajax
    	
     } //updatebooking
    
     function completeupdate(bno){
    	// alert(bno)
    	/* alert($("input#st").val())
    	alert($("input#et").val()) */
    	 $.ajax({
    		 type : "POST",
    	 	 url : "<c:url value='/booking/update.j'/>",
    	 	 data : {
    	 		 starttime : $("input#st").val(),
    	 		 endtime : $("input#et").val(),
    	 		 teamname : $("input#tn").val(),
    	 		 tel : $("input#pn").val(),
    	 		 bno : bno
    	 	 },
    	 	 dataType : "json",
    	 	 success : function(b) {
    	 		 var tr = $("tr#"+bno)
    	 		 var html ="";
  				if(b.id ==$("input#hidden").attr("userid")){
      				html += "<td><input type='checkbox' name='booked' value='"+b.bookingNo+"'></td>"
  				} else {
  					html += "<td></td>"
  				}
      				html += "<td>"+b.bookingDate+"</td>"
      				html += "<td id='st"+b.bookingNo+"'>"+b.startTime+"</td>"
      				html += "<td id='et"+b.bookingNo+"'>"+b.endTime+"</td>"
      				html += "<td id='tn"+b.bookingNo+"'>"+b.bookingTeamName+"</td>"
      				html += "<td>"+b.id+"</td>"
      				html += "<td id='pn"+b.bookingNo+"'>"+b.bookingPhoneNo+"</td>" 
      				
      				tr.html(html);
      				
      				$("div#buttons").html(
      				"<button id='updatebooking'>수정</button>" +
					"<button id='deletebooking'>삭제</button>"
      				)
      				
      				$("button#updatebooking").click(function() {
  			    	 updatebooking($("input[name='booked']:checked").val())
  			    	 
	  			     })
	  			     
	  			     $("button#deletebooking").click(function() {
	  			    	 deletebooking($("input[name='booked']:checked").val())
	  			     })
    	 	 } //success
    	 
    	 }) //ajax
    	 
     } //completeupdate
     
     function deletebooking(bno){
    	 
    	 $.ajax({
    		 url : "<c:url value='/booking/delete.j'/>",
    		 data : "bno="+bno,
    		 dataType : "json",
    		 success : function(list){
    			 if(list.length!=0){
    	          		var html = "<table id='listbooking'><tr>"
    	      				html += "<th><input type='checkbox' id='all' name='all'></th>"
    	      				html += "<th>예약 날짜</th>"
    	      				html += "<th>예약 시작 시간</th>" 
    	      				html += "<th>예약 종료 시간</th>"
    	      				html += "<th>예약 팀 이름</th>"
    	      				html += "<th>예약자 아이디</th>"
    	      				html += "<th>예약자 전화번호</th></tr>"
    	      				
    	          			for(let b of list) {
    	          				html += "<tr id='"+b.bookingNo+"'>"
    	          				if(b.id ==$("input#hidden").attr("userid")){
    	  	        				html += "<td><input type='checkbox' name='booked' value='"+b.bookingNo+"'></td>"
    	          				} else {
    	          					html += "<td></td>"
    	          				}
    	  	        				html += "<td>"+b.bookingDate+"</td>"
    	  	        				html += "<td id='st"+b.bookingNo+"'>"+b.startTime+"</td>"
    	  	        				html += "<td id='et"+b.bookingNo+"'>"+b.endTime+"</td>"
    	  	        				html += "<td id='tn"+b.bookingNo+"'>"+b.bookingTeamName+"</td>"
    	  	        				html += "<td>"+b.id+"</td>"
    	  	        				html += "<td id='pn"+b.bookingNo+"'>"+b.bookingPhoneNo+"</td></tr>"   

    	          				
    	          			} //for
    	          			html += "</table>"
    	          			html += "<div id='buttons'><button id='updatebooking'>수정</button>" +
    	  							"<button id='deletebooking'>삭제</button></div>"
    	          			div.html(html); 
    	          			
    	          		} //if !0
    	          		else {
    	          			var html = "<table id='listbooking'><tr>"
    	          				html += "<th>모든 시간에 예약이 가능합니다.<th></tr></table>"
    	          			div.html(html);
    	          		}
    	      			var p = $("p#bookingtime")
    	      			p.html("<div id='set'><p>시작시간 : <input type='time' name='bookingtime1'/></p>" +
    	      		           "<p>종료시간 : <input type='time' name='bookingtime2'/></p>" +
    	      		           "<button id='sel'>시간 설정</button></div>")
    	      		           
    	      		     $("button#sel").click(function() {
    	  			    	settime()
    	  			     })
    	  			     
    	  			     $("button#updatebooking").click(function() {
    	  			    	 updatebooking($("input[name='booked']:checked").val())
    	  			    	 
    	  			     })
    	  			     
    	  			     $("button#deletebooking").click(function() {
    	  			    	 deletebooking($("input[name='booked']:checked").val())
    	  			     })
    	  			     
    		 } //success
    		 
    	 })
    	 //alert(bno+"를 삭제합다.")
     } // deletebooking
	<%--  src="<c:url value="/jsp/booking/booking.js"/>">	< --%></script>
</body>
</html>