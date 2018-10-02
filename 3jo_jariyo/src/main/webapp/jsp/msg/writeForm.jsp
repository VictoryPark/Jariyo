<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--  <link rel="stylesheet" href="<c:url value="/publishing/박아란/main2.css"/>">-->
</head>
<style>
/* tr:nth-child(odd){
		background: greenyellow;
} */
/* tr:nth-child(even){
		background: brown;
} */
#htable{
	width:100%;hight: 100%;
	border : 1px solid black; 
}
table,tr,th{

	border: 1px solid black;

}
#write{
	width:100%;
}
 textarea.w100 { 
 width:99%; 
 height:99%; 
 } 
 textarea.title { 
 width:99%; 

 } 
 textarea.reciver { 
 width:99%; 
 
 } 

</style>
<body>
	<header>
	    <h1>
	      자리Y<img id="ball" src="ball-icon.gif" width="58px"/>
	    </h1>
	    <center>
	  <table id="htable">
				
	 			<th> <a href="remsglist.jsp">받은쪽지함</a>&nbsp</th>
	  		
	  		
	  			<th><a href="semsglist.jsp">보낸쪽지함</a>&nbsp</th>
	  		
	  	
	 			<!-- <th> <a href="extralist.jsp">임시보관함</a>&nbsp</th> -->
	  	
	  	
	  			<th><a href="delmsglist.jsp">휴지통</a>&nbsp</th>
	  	
	  </table>
	    </center>
	  
	</header>
	<main>
	
	    <section>
	    
	     <p> 
		 </p>  
		  <p> 
		  <br>
		 </p>  
	    <center>
			    <table id="write">
			    <h2 id="cap">쪽지 쓰기</h2>
		 		
			    
				     <form action= "writemsg.do" method="post">
				     <tr>
				     	<th> 
				   		  받는 사람
				    	</th>
				     	<th>
				  		  <textarea class="reciver" name="toName"rows=1 cols=60></textarea>
				   		</th>
				   		</tr>
				   		 <tr>
				     	<th> 
				   		  제목
				    	</th>
				     	<th>
				  		  <textarea class="title" name="title"rows=1  cols=60></textarea>
				   		</th>
				   		</tr>
				   	 <tr>
				     	<th> 
				  		  내용
				   		</th>
				    	<th> 
				   		 <textarea class="w100" name="content" rows=20 cols=60></textarea>
				   		</th>
				     	</tr>
				    
			    </table>
		 	<p>
		 	</p>
		    <p>
		 	</p>
		    <button>보내기</button>
		   </form>
		    <a href="<c:url value="/msg/remsglist.do"/>"><button>취소</button></a>
			    </center>
	    </section>
	  
	</main>

</body>
</html>