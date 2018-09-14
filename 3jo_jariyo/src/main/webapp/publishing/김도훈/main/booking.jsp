<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking-page</title>
<link rel="stylesheet" href="headerfooter.css"/>
<link rel="stylesheet" href="calendar.css"/>
<link rel="stylesheet" href="bookingmain.css"/>
</head>
<body>
	<c:import url="mainbarheader.jsp" />
	<main>
	  <article>
        <aside>
	      <h2>
	      	예약 장소 정보
	      </h2>
	      <div id="mapimg">
	      	<img src="map.png" />
	      </div>
	    </aside>
	    <section>
		    <h1>
		      Section header
		    </h1>
		    <p>
		      Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
		    </p>  
	    </section>
	    <aside>
	    	<c:import url="calendar.jsp" />
	    </aside>
	  </article>
	</main>
	<c:import url="mainbarfooter.jsp" />
</body>
</html>