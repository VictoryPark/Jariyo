/* 
	    var divDay = $("div[class='day-number']").click(function() {
	        console.log($(this).html())
	        //date.val($(this).html().format('dd'))
	    }) */
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
//	        alert($("#hidden").val(), $("input#date").val());
	        
	        $.ajax({
	        	type: "POST",
	        	url : "list.do",
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
        				
	        			for(var b of list) {
	        				html += "<tr><td><input type='checkbox' name='booked' value='"+b.bookingNo+"'></td>"
	        				html += "<td>"+b.bookingDate+"</td>"
	        				html += "<td>"+b.startTime+"</td>"
	        				html += "<td>"+b.endTime+"</td>"
	        				html += "<td>"+b.bookingTeamName+"</td>"
	        				html += "<td>"+b.id+"</td>"
	        				html += "<td>"+b.bookingPhoneNo+"</td></tr>"  
	        				html += "<c:choose><c:when test='${user.id=="+b.id+"}'>" +
	        						"<tr><td id='buttons'>" +
	        						"<button id='updatebooking'>수정</button>" +
	        						"<button id='deletebooking'>삭제</button></td></tr>" + 
	        						"</c:when></c:choose>"
	        				
	        			} //for
	        			html += "</table>"
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
	        	} //success
	        	
	        })//ajax
	    }) //click
	    
	   
	    function settime() {
    	  var bookingtime1 = $("input[name='bookingtime1']")
    	  var bookingtime2 = $("input[name='bookingtime2']")
	        $("input[name='starttime']").val(bookingtime1.val())
	        $("input[name='endtime']").val(bookingtime2.val())    				
		}
	    
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