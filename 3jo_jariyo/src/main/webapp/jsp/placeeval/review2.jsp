<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review</title>
	<c:import url="reviewCSS.jsp"/>
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
           <img src="<c:url value="/img/booking/map.png" />" />
       </div>
       <div>
           상세 시설 정보들<br>
           샤워실<br>
           흡연구역 보유<br>
          체육관 보유..<br>
          등등...<br>
       </div>
     </aside>
      <main> 
      <article> 
      <section>
	<div class="container">
		<p id="main">
			자리요를 이용해주셔서 감사합니다.<br> 예약 후 사용하신 시설에 대한 평가를 남기는 곳입니다.<br>
			건강한 마음을 가진 생활 스포츠인으로써 욕설이나 비방은 삼가하여주시기 바라며, 개선을 원하는 사항은 자세히 정확하게
			남겨주시면 감사하겠습니다.
		</p>
		<form id="review-form" action="<c:url value="/placeeval/insert.do?no=${plno}"/>" method="post">
			<input type="hidden" id="hidden" value="${plno}"/>
			<div id="title">
				<h2>만족도</h2>
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
		<div id="reviewList">
			
		</div>
	</section> 
	</article> 
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	<!-- <script src="./review.js"></script> -->
	<script src="<c:url value="/jsp/placeeval/review.js"/>"></script>
	
	<script>
	$(function () {
 		/* alert($("input#hidden").val()) */
		showlist($("input#hidden").val())
	})
	
	function showlist(plno){
		$.ajax({
			type: "POST",
			url : "<c:url value='/placeeval/list.do'/>",
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
						html += "</tr><tr>"
						html += '<td id="buttons"><a href="#'+r.evalNo+'" id="update" plno="'+r.placeNo+'">수정 </a>'
								+ '<a href="#'+r.evalNo+'" id="delete" plno="'+r.placeNo+'"> 삭제</a>'
						html += '</tr></table>'
						
					}
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
		console.log(revno);
		console.log(plno)
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
	         xhr.open("POST", "<c:url value='/placeeval/updateform.do'/>")
	         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	         xhr.send("revno="+revno+"&plno="+plno)
	         
	 }
 
	 
	
	 function updatelist(revno, plno) {
		//alert ($("input[name='star']:checked").val())
		$.ajax({
			type: "POST",
			url : "<c:url value='/placeeval/update.do'/>",
			data : {content : $("#rContent").val(),
					star : $("input[name='star']:checked").val(),
					revno : revno,
					plno : plno
					},
			dataType : "json",		
			success : function(pe) {
				var table = $("table#review"+revno)
				var regDate = new Date(pe.regDate);
				console.log(regDate)
				console.log(pe)
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
			
		})
	}  //updatelist
		
	
	
	function deletelist(revno, plno){
		$.ajax({
			url : "<c:url value='/placeeval/delete.do'/>",
			data : "revno="+revno,
			success : showlist(plno)
			
		})
		/* alert("삭제되었습니다.")	 */
	} //deletelist


	</script>
</body>
</html>