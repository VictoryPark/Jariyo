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
		<form id="review-form" action="<c:url value="/placeeval/insert.do?no=300"/>" method="post">
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
		<div id="list-container">
		<c:choose>
		<c:when test="${empty rList}">
			<table id="review" width="80%">
					<tr>
						<td>아직 후기가 없습니다.</td>
					</tr>
			</table>
				</c:when>
				<c:otherwise>
					<c:forEach var="re" items="${rList}">
					<c:if test="${re.evalNo == review.evalNo}">
						
						<table id="review${re.evalNo}" width="80%">
						<form id="updatereview" action="<c:url value="/placeeval/update.do?revno=${review.evalNo}&plno=${review.placeNo}"/>" method="post">
								<tr>
									<td class="rating">
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
									</td>
								</tr>
								<tr>
									<td id="content"><textarea name="rContent" rows="4" cols="70">${review.content }</textarea></td>
								</tr>
								<tr>
									<td id="id">${review.id}</td>
								</tr>
								<tr>
									<td id="buttons">
										<button>수정</button>
										<a href="<c:url value="/placeeval/list.do?no=${re.placeNo}"/>"> 취소</a>
									</td>
								</tr>
							</form>
							</table>
					</c:if>
					<c:if test="${re.evalNo !=review.evalNo }">
					<input type="hidden" id="hidden" plno="${re.placeNo}" revno="${re.evalNo }"/> 
						<table id="review${re.evalNo}" width="80%">
							<tr>
								<td id="starPoint"><img src="<c:url value='/img/placeeval/${re.starPoint}.png'/>" /></td>
							</tr>
							<tr>
								<td id="content">${re.content }</td>
							</tr>
							<tr>
								<td id="id">${re.id}</td>
							</tr>
							<tr>
								<td id="regDate"><fmt:formatDate value="${re.regDate}" pattern="yy.MM.dd"/></td>
							</tr>
							<tr>
								<td id="buttons"><a id="update"<%--  href="<c:url value="/placeeval/updateform.do?revno=${re.evalNo}&plno=${re.placeNo}"/>" --%>>수정 </a>
												 <a href="<c:url value="/placeeval/delete.do?revno=${re.evalNo}"/>"> 삭제</a>
							</tr>
						</table>
					</c:if>
					</c:forEach>
					
				</c:otherwise>
				</c:choose>
				
				
        </div>
	</div>
	</section> 
	</article> 
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	<!-- <script src="./review.js"></script> -->
	 <script src="<c:url value="/jsp/placeeval/review.js"/>"></script>
	 <script>
	 $("a[id=update]").click(function(){
		 var xhr = new XMLHttpRequest();
	     xhr.onreadystatechange = function() {
	         if(xhr.readyState==4){
	             if(xhr.status==200) {
	                 var pe = JSON.parse(xhr.responseText)
	                 var form = $("#updatereview")
					 var stars = '<td class="rating">' +
					 '<input type="radio" id="1" name="star" value="1"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="2" name="star" value="2"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="3" name="star" value="3"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="4" name="star" value="4"/>' +
					 '<span class="star"> </span>' +
					 '<input type="radio" id="5" name="star" value="5"/>' +
					 '<span class="star"> </span>'+
					 '<span class="emo"> </span></td>'
	                 if(pe.length!=0){
	                   var html = '<table id="review${re.evalNo}" width="80%"><tr>'
	                   	   html += stars
	                   	   html += '</tr><tr>'
	                   	   html += '<td id="content"><textarea name="rContent" rows="4" cols="70">'+pe.content+'</textarea></td>'
	                   	   html += '</tr><tr>'
	                   	   html += '<td id="buttons"><button>수정</button>' +
								   '<a href="<c:url value="/placeeval/list.do?no=${re.placeNo}"/>"> 취소</a>' +
								   '</td>'
						   html += '</tr></table>'
	                 }
	                 }//200
	             } //4
	         }//change
	         xhr.open("POST", "<c:url value='/placeeval/updateform.do'/>")
	         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded")
	         xhr.send("revno="+$("#hidden").attr('revno')+"&plno="+$("#hidden").attr('plno'))
	      
	 })

	 </script>
</body>
</html>