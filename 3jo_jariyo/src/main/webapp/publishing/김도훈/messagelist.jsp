<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/publishing/박아란/main2.css"/>">
</head>
<style>
/* tr:nth-child(odd){
		background: greenyellow;
} */
/* tr:nth-child(even){
		background: brown;
} */
a{
	color:blue;
}
#title{
	background: rgb(211,102,102);
}
table tr:hover{
		background: rgb(225,225,225);
}
table{
	width: 500px ; hight: 300px;
	window-size:fix;
	
	}
table,tr,th{
	border: 1px solid black;

}
	
</style>
<body>
	<header>
	    <h1>
	      자리Y<img id="ball" src="ball-icon.gif" width="58px"/>
	    </h1>
	  <nav am-layout="horizontal">
	  <a href="#">쪽지쓰기</a>
	  <a href="#">받은쪽지함</a>
	  <a href="#">보낸쪽지함</a>
	  <a href="#">임시보관함</a>
	  <a href="#">휴지통</a>
	  </nav>
	</header>
	<main>
	  <article>
        <aside>
	      <h1>
	    
	      </h1>
	    </aside>
	    
	    <section>
	    <h2>쪽지함</h2>
	    <center>
	     <p> 
		 </p>  
		  <p> 
		 </p>  
			    <table>
				     <tr id="title">
				     	<th> 
				   		  분류
				    	</th>
				     	<th>
				  		  보낸사람
				   		</th>
				     	<th> 
				  		  내용
				   		</th>
				    	<th> 
				   		 받은 날짜
				   		</th>
				     	
				    </tr>
				     <tr>
				     	<th> 
				   		 용병모집
				    	</th>
				     	<th>
				  		  박아란
				   		</th>
				     	<th> 
				  		  여기 자리요
				   		</th>
				    	<th> 
				   		 8/15 19:25
				   		</th>
				     	
				    </tr>
				        <tr>
				     	<th> 
				   		 용병모집
				    	</th>
				     	<th>
				  		  박아란
				   		</th>
				     	<th> 
				  		  여기 자리요
				   		</th>
				    	<th> 
				   		9/1  19:25
				   		</th>
				     	
				    </tr>
				        <tr>
				     	<th> 
				   		 용병 신청
				    	</th>
				     	<th>
				  		  이득재
				   		</th>
				     	<th> 
				  		  자리 있나요?
				   		</th>
				    	<th> 
				   		 9/13 19:37
				   		</th>
				     	
				    </tr>
				        <tr>
				     	<th> 
				   		 용병모집
				    	</th>
				     	<th>
				  		정인용
				   		</th>
				     	<th> 
				  		 같이 한게임 뛰어요
				   		</th>
				    	<th> 
				   		8/23  19:25
				   		</th>
				    </tr>
				      
				        <tr>
				     	<th> 
				   		 용병모집
				    	</th>
				     	<th>
				  		김도훈
				   		</th>
				     	<th> 
				  		못해도 상관없습니다.
				   		</th>
				    	<th> 
				   		7/23  12:25
				   		</th>
				    </tr>
				      <tr>
				     	<th> 
				   		 용병신청
				    	</th>
				     	<th>
				  		안규영
				   		</th>
				     	<th> 
				  		자리있나요?
				   		</th>
				    	<th> 
				   		8/23  9:25
				   		</th>
				    </tr>
				      <tr>
				     	<th> 
				   		팀매칭
				    	</th>
				     	<th>
				  		조용제
				   		</th>
				     	<th> 
				  		물값 내기하시죠
				   		</th>
				    	<th> 
				   		8/23  19:25
				   		</th>
				    </tr>
				      <tr>
				     	<th> 
				   		팀매칭
				    	</th>
				     	<th>
				  		정인용
				   		</th>
				     	<th> 
				  		 같이 한판해요
				   		</th>
				    	<th> 
				   		8/23  19:25
				   		</th>
				    </tr>
				    
				    
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
		    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="write.jsp">글쓰기</a>
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