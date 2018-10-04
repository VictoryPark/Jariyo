<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="../placeeval/reviewCSS.jsp"/>
<link rel="stylesheet" href="/3jo_jariyo/css/searchresult/defaultsearch.css" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=bn_2qlSXo7L36N8iYQV6"></script>
<script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous">
</script>

</head>
<body>
	<c:import url="../common/mainbarheader.jsp" />
	<main>
	<div id="container">
		<ul class="tablist" role="tablist">
			<li class="tab" role="tab"><a href="#panel1">시설정보</a></li>
			<li class="tab" role="tab"><a href="#panel2" value="">후기</a></li>
			<li class="tab-menu">
				<div class="line"></div>
				<div class="line"></div>
			</li>
		</ul>
		<div class="tabpanel" id="panel1" role="tabpanel">
			<div id="pan11">
				<div id="map" style="width:100%;height:500px;"></div>
				<div>
				<c:set var="detail" value="${detailplace}"/>
				<c:set var="wds" value="${wdsResult}"/>
				<c:set var="wde" value="${wdeResult}"/>
				<c:set var="wks" value="${wksResult}"/>
				<c:set var="wke" value="${wkeResult}"/>
					<h3>${detail.placeName}</h3>
					<button type="button" onclick="location.href='/3jo_jariyo/booking/main.j?no=${detail.placeNo}'">예약하기</button>
					<div>시설 주소 : ${detail.placeRoadAddr}</div>
					<div>시설 연락처 : ${detail.placePhoneNo}</div>
					<div>시설종류 : ${detail.kind}</div>
					<div>시간당 이용요금 : ${detail.price}원</div>
					<div>평일 운영시간 : ${wds}시~${wde}시</div>
					<div>주말 운영시간 : ${wks}시~${wke}시</div>
				</div>
			</div>
		</div>
		<div class="tabpanel" id="panel2" role="tabpanel">
		<div class="container">
		<form id="review-form" action="<c:url value="/placeeval/insert.j?no=${detail.placeNo}"/>" method="post">
			<input type="hidden" id="hidden" name="id" value="${user.id }" plno="${detail.placeNo}" />
			
			<div id="title">
				<div class="rating">
					<input type="radio" id="1" name="star" value="5" /> 
					<span class="star"> </span> 
					<input type="radio" id="2" name="star" value="4" /> 
					<span class="star"> </span> 
					<input type="radio" id="3" name="star" value="3" /> 
					<span class="star"> </span> 
					<input type="radio" id="4" name="star" value="2" /> 
					<span class="star"></span> 
					<input type="radio" id="5" name="star" value="1" /> 
					<span class="star"> </span> 
					<span class="emo"> </span>
				</div>
			</div>

			<div class="form-group">
				<textarea class="form-control" rows="10" cols="70"
					placeholder="후기를 남겨주세요." name="content" id="review"></textarea>
				<span id="reviewInfo"> <span id="remaining">1000</span> 자 이하로 부탁드려용
				</span><br>
			<button>등록</button>
			</div>
		</form>
		</div>
		<div id="reviewList">
			
		</div>

		</div>
		</main>
	<c:import url="../common/mainbarfooter.jsp" />
	<script src="<c:url value="/jsp/placeeval/review.js"/>"></script>
	<script>
	
	$("a[href='#panel2']").click(function () {
		showlist($("input#hidden").attr("plno"))
	})
	
	function showlist(plno){
		$.ajax({
			type: "POST",
			url : "<c:url value='/placeeval/list.j'/>",
			data : "no="+plno,
			dataType : "json",		
			success : function(list) { 
				var div = $("#reviewList")
				var html = ""
				if(list.length!=0){
					for(let r of list){
						var regDate = new Date(r.regDate);
						/* console.log(regDate) 
						console.log(pe) */
						html += "<table id='review"+r.evalNo+"' width='80%'><tr>"
						html += `<td id="starPoint"><img src="<c:url value='/img/placeeval/`+r.starPoint+`.png'/>" /></td>`
						html += "</tr><tr>"
						html += '<td id="content">'+r.content+'</td>'
						html += "</tr><tr>" 
						html += '<td id="id">'+r.id+'</td>'
						html += "</tr><tr>"
						html +=	'<td id="regDate">'+regDate.getFullYear()+'.'+(regDate.getMonth()+1)+'.'+regDate.getDate()+'</td>'
						html += "</tr>" 
						
						if(r.id==$("input#hidden").val()){
							html += '<tr><td id="buttons"><a href="#'+r.evalNo+'" id="update" plno="'+r.placeNo+'">수정 </a>'
									+ '<a href="#'+r.evalNo+'" id="delete" plno="'+r.placeNo+'"> 삭제</a>'
							html += '</tr>' 	
						} else {
							html += "</table>"
						}
						
					} //for
					div.html(html);
					
					 $("a#update").click(function(){
						 let revno = $(this).attr('href')
						 let plno = $(this).attr('plno') 
						 /* console.log(revno)
						 console.log(plno) */
						 updateformlist(revno.substring(1,revno.length), plno)
					 })
					 
					 $("a#delete").click(function() {
							//alert("yest")
							let revno = $(this).attr('href')
							let plno2 = $(this).attr('plno')
							var result = confirm("정말 삭제하시겠습니까?")
							if(result){
								deletelist(revno.substring(1,revno.length), plno2)
							} else {
								alert("삭제가 취소되었습니다.")
							
							}
						}) 
				} // if list 있을때 
				else {
					var html = '<table id="review" width="80%"><tr>'
						html += '<td>아직 후기가 없습니다.</td>'
						html += '</tr></table>'
					div.html(html);
				} //if-else

			} //success
					
		}) //ajax
					 
		} //showlist
	 
	 
	 
	 function updateformlist(revno, plno){
		/* console.log(revno);
		console.log(plno) */
		 var xhr = new XMLHttpRequest();
	     xhr.onreadystatechange = function() {
	         if(xhr.readyState==4){
	             if(xhr.status==200) {
	                 var pe = JSON.parse(xhr.responseText)
	                console.log(pe)
					 var stars = '<td class="rating">' +
					 '<input type="radio" id="1" name="star" value="5"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="2" name="star" value="4"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="3" name="star" value="3"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="4" name="star" value="2"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="5" name="star" value="1"/>' +
					 '<span class="star"> </span>'+
					 '<span class="emo"> </span></td>'
					 var table = $("table#review"+revno)
					 
	                 if(pe.length!=0){
	                   var html = '<tr>'
	                   	   html += stars
	                   	   html += '</tr><tr>'
	                   	   html += '<td id="content"><textarea id="rContent" rows="4" cols="70">'+pe.content+'</textarea></td>'
	                   	   html += '</tr><tr>'
	                   	   html += '<td id="buttons"><a href="#'+pe.evalNo+'" id="complete">수정 완료</a>' +
								   '<a href="#'+pe.evalNo+'" id="cancel"> 취소</a>' +
								   '</td>'
						   html += '</tr>'
						   
						   
						table.html(html);
						   
				         $("a#complete").click(function() {  
				         	//console.log(revno, plno)
				        	 updatelist(revno, plno)
				        	
				         }) 
				         
				         $("a#cancel").click(function() {
				        	/* alert(plno) */
				        	showlist(plno)
				         })
				       
	                 }
	             }//200
                 else{
                	 console.log(xhr.status)
                 }
	             } //4
	         }//change
	         xhr.open("POST", "<c:url value='/placeeval/updateform.j'/>")
	         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	         xhr.send("revno="+revno+"&plno="+plno)
	         
	 }
 
	 
	
	 function updatelist(revno, plno) {
		//alert ($("input[name='star']:checked").val())
		$.ajax({
			type: "POST",
			url : "<c:url value='/placeeval/update.j'/>",
			data : {content : $("#rContent").val(),
					star : $("input[name='star']:checked").val(),
					revno : revno,
					plno : plno
					},
			dataType : "json",		
			success : function(pe) {
				var table = $("table#review"+revno)
				var regDate = new Date(pe.regDate);
				/* console.log(regDate)
				console.log(pe) */
				var html = "<tr>"
					html += `<td id="starPoint"><img src="<c:url value='/img/placeeval/`+pe.starPoint+`.png'/>" /></td>`
					html += "</tr><tr>"
					html += '<td id="content">'+pe.content+'</td>'
					html += "</tr><tr>"
					html += '<td id="id">'+pe.id+'</td>'
					html += "</tr><tr>"
					html +=	'<td id="regDate">'+regDate.getFullYear()+'.'+(regDate.getMonth()+1)+'.'+regDate.getDate()+'</td>'
					html += "</tr><tr>"
					html += '<td id="buttons"><a href="#'+pe.evalNo+'" id="update" plno="'+pe.placeNo+'">수정 </a>'
							+ '<a href="#'+pe.evalNo+'" id="delete" plno="'+pe.placeNo+'"> 삭제</a>'
					html += '</tr>'
					
				table.html(html);
				 
				$("a#update").click(function() {
					updateformlist(revno, plno)
			    }) 
			    
			    $("a#delete").click(function() {
					//alert("yest")
					var result = confirm("정말 삭제하시겠습니까?")
					if(result){
						deletelist(revno, plno)
					} else {
						alert("삭제가 취소되었습니다.")
					
					}
				}) 
					
			} //success
			
		}) //ajax
	}  //updatelist
		
	
	
	function deletelist(revno, plno){
		$.ajax({
			url : "<c:url value='/placeeval/delete.j'/>",
			data : "revno="+revno,
			success : showlist(plno)
			
		}) //ajax
		/* alert("삭제되었습니다.")	 */
	} //deletelist


			(function() {
	
				function activateTab() {
					if (activeTab) {
						resetTab.call(activeTab);
					}
					this.parentNode.className = 'tab tab-active';
					activeTab = this;
					activePanel = document.getElementById(activeTab.getAttribute(
							'href').substring(1));
					activePanel.className = 'tabpanel show';
					activePanel.setAttribute('aria-expanded', true);
				}
	
				function resetTab() {
					activeTab.parentNode.className = 'tab';
					if (activePanel) {
						activePanel.className = 'tabpanel hide';
						activePanel.setAttribute('aria-expanded', false);
					}
				}
	
				var doc = document, tabs = doc.querySelectorAll('.tab a'), panels = doc
						.querySelectorAll('.tabpanel'), activeTab = tabs[0], activePanel;
	
				activateTab.call(activeTab);
	
				for (var i = tabs.length - 1; i >= 0; i--) {
					tabs[i].addEventListener('click', activateTab, false);
				}
	
			})();
			var map = new naver.maps.Map('map', {
			    center: new naver.maps.LatLng(`${detail.placePositionY}`, `${detail.placePositionX}`),
			    /* center: new naver.maps.LatLng(37.719137, 126.754612), */
			    zoom: 10
			});

			var marker = new naver.maps.Marker({
			    position: new naver.maps.LatLng(`${detail.placePositionY}`, `${detail.placePositionX}`),
			    /* position: new naver.maps.LatLng(37.719137, 126.754612), */
			    map: map
			});
		</script>
</body>
</html>