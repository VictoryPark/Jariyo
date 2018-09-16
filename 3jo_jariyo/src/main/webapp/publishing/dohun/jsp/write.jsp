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

</style>
<body>

	    <center>
	  <table id="htable">
				
	 			<th> <a href="messagelist.jsp">받은쪽지함</a>&nbsp</th>
	  		
	  		
	  			<th><a href="sendlist.jsp">보낸쪽지함</a>&nbsp</th>
	  		
	  	
	 			<th> <a href="extralist.jsp">임시보관함</a>&nbsp</th>
	  	
	  	
	  			<th><a href="deletelist.jsp">휴지통</a>&nbsp</th>
	  	
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
		 		
			    
				     <tr>
				     	<th> 
				   		  받는 사람
				    	</th>
				     	<th>
				  		  <textarea name="reciver" rows=1 cols=80></textarea>
				   		</th>
				   		</tr>
				   		 <tr>
				     	<th> 
				   		  제목
				    	</th>
				     	<th>
				  		  <textarea name="title" rows=1  cols=80></textarea>
				   		</th>
				   		</tr>
				   	 <tr>
				     	<th> 
				  		  내용
				   		</th>
				    	<th> 
				   		 <textarea name="contents" rows=20 cols=80></textarea>
				   		</th>
				     	</tr>
				    
			    </table>
		 	<p>
		 	</p>
		    <p>
		 	</p>
		    <a href="messagelist.jsp"><button>보내기</button></a>
		    <a href="messagelist.jsp"><button>취소</button></a>
		    <a href="extralist.jsp"><button>임시저장</button></a>
			    </center>
	    </section>
	  
	</main>

</body>
</html>