<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review</title>
	<c:import url="reviewCSS.jsp"/>
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
	<section>
	<div class="container">
		<p>We strive to provide the best possible service for our clients.
			Please leave a review to let us know how we are doing and to share
			your experience with others.</p>
		<form id="review-form" action="index.html" method="post">
			<h2>Write Your Review</h2>
			<div id="rating">
				<svg class="star" id="1" viewBox="0 12.705 512 486.59" x="0px"
					y="0px" xml:space="preserve" style="fill: #f39c12;"> <polygon
					points="256.814,12.705 317.205,198.566 512.631,198.566 354.529,313.435 414.918,499.295 256.814,384.427 98.713,499.295 159.102,313.435 1,198.566 196.426,198.566"></polygon>
				</svg>
				<svg class="star" id="2" viewBox="0 12.705 512 486.59" x="0px"
					y="0px" xml:space="preserve" style="fill: #808080;"> <polygon
					points="256.814,12.705 317.205,198.566 512.631,198.566 354.529,313.435 414.918,499.295 256.814,384.427 98.713,499.295 159.102,313.435 1,198.566 196.426,198.566"></polygon>
				</svg>
				<svg class="star" id="3" viewBox="0 12.705 512 486.59" x="0px"
					y="0px" xml:space="preserve" style="fill: #808080;"> <polygon
					points="256.814,12.705 317.205,198.566 512.631,198.566 354.529,313.435 414.918,499.295 256.814,384.427 98.713,499.295 159.102,313.435 1,198.566 196.426,198.566"></polygon>
				</svg>
				<svg class="star" id="4" viewBox="0 12.705 512 486.59" x="0px"
					y="0px" xml:space="preserve" style="fill: #808080;"> <polygon
					points="256.814,12.705 317.205,198.566 512.631,198.566 354.529,313.435 414.918,499.295 256.814,384.427 98.713,499.295 159.102,313.435 1,198.566 196.426,198.566"></polygon>
				</svg>
				<svg class="star" id="5" viewBox="0 12.705 512 486.59" x="0px"
					y="0px" xml:space="preserve" style="fill: #808080;"> <polygon
					points="256.814,12.705 317.205,198.566 512.631,198.566 354.529,313.435 414.918,499.295 256.814,384.427 98.713,499.295 159.102,313.435 1,198.566 196.426,198.566"></polygon>
				</svg>
			</div>
			<span id="starsInfo" class="help-block"> Click on a star to
				change your rating 1 - 5, where 5 = great! and 1 = really bad </span>
			<div class="form-group">
				<label class="control-label" for="review">Your Review:</label>
				<textarea class="form-control" rows="10" placeholder="Your Reivew"
					name="review" id="review"></textarea>
				<span id="reviewInfo" class="help-block pull-right"> <span
					id="remaining">999</span> Characters remaining
				</span>
			</div>
			<h2>Your Info:</h2>
			<div class="form-group">
				<label for="name">Name:</label> <input class="form-control"
					type="text" placeholder="Name" name="name" id="name" value="">
			</div>
			<div class="form-group">
				<label for="city">City:</label> <input class="form-control"
					type="text" placeholder="City" name="city" id="city" value="">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input class="form-control"
					type="text" placeholder="Email" name="email" id="email" value="">
			</div>
			<a href="#" id="submit" class="btn btn-primary">Submit</a> <input
				id="submitForm" type="submit" style="display: none;"> <span
				id="submitInfo" class="help-block"> By clicking <strong>Submit</strong>,
				I authorize the sharing of my name and review on the web. (email
				will not be shared)
			</span>
		</form>
		<h2>Read what others have said about us:</h2>
		<div id="review-container"></div>
	</div>
	</section>
	</article>
	</main>
	<c:import url="../common/mainbarfooter.jsp" />
	<script src="./review.js"></script>
</body>
</html>