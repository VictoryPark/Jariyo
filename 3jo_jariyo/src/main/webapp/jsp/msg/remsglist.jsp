<%@page import="com.jariyo.repository.domain.Msg" %>
<%@page import="java.util.List" %>
<%@page import="com.jariyo.common.db.MyAppSqlConfig" %>
<%@page import="com.jariyo.repository.mapper.MsgMapper" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<style>
#htable{
	width:100%;hight: 100%;
	border : 1px solid black; 
}
#title{
	background: rgb(211,102,102);
}
table tr:hover{
		background: rgb(225,225,225);
}
#msglist{
	width: 100% ; hight: 100%;
	
	
	}
#msglist,th{
	border: 1px solid black;

}
/* 	body {
		background-image: url('campnou.jpg');
	} */
</style>
<body>
	<header>
	    <h1>
	      자리Y<img id="ball" src="../img/common/ball-icon.gif" width="58px"/>
	    </h1>
	    <center>
	  <table id="htable">
			
	 			<th> <a href=#>받은쪽지함</a>&nbsp</th>
	  		
	  		
	  			<th><a href="<c:url value="/msg/semsglist.j"/>">보낸쪽지함</a>&nbsp</th>
	  		
	  	
	 			<!-- <th> <a href="extralist.jsp">임시보관함</a>&nbsp</th> -->
	  	
	  	
	  			<th><a href="delmsglist.do">휴지통</a>&nbsp</th>
	  	
	  </table>
	    </center>
	  
	</header>
	<main>
	
	    
	    <section>
	    <h2>받은 쪽지함</h2>
	    <center>
	     <p> 
		 </p>  
		  <p> 
		 </p>  
			    <table id="msglist">
				     <tr id="title">
				     	
				     	<th> 
				   		  글번호
				    	</th>
				     	<th>
				  		  보낸 사람
				   		</th>
				     	<th> 
				  		  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 제목  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				   		</th>
				    	<th> 
				   		 받은 날짜
				   		</th>
				     	
				    </tr>

					<c:forEach var="b" items="${list}">
				    <tr>
				    	<td>${b.msgNo}</td>
				    	<td>${b.writerId}</td>
				    	<td><a href='<c:url value="/msg/redetailmsg.j?msgNo=${b.msgNo}"/>'>${b.title}</a></td>
				    	<td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></td>
				   	</tr>
					</c:forEach>

				   
				    
				    
			    </table>
		    </h1>
		 <p> 
		 </p>  
		    <p> 
		    <a href=#1 ><</a>   
		    <a href=#1 >1</a>   
		    <a href=#2>2</a>   
		    <a href=#3>3</a>   
		    <a href=#4>4</a>   
		    <a href=#5>5</a>   
		    <a href=#1 >></a>
		    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="<c:url value="/msg/writeform.j"/>">쪽지쓰기</a>&nbsp&nbsp&nbsp<a href="<c:url value="#"/>"><button>삭제하기</button></a>
		    </p>  
		    <input type="text" width=8 hight=1><button>검색</button>
			    </center>
	    
	    </section>
	    <aside>
	    	<h1>
	       		
	        <h1>
	    </aside>
	  </article>
	</main>
	<footer>
	    <p>Footer</p>
	</footer>

</body>
</html>