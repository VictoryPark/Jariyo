<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자리YO 회원가입</title>
<script
	src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous">
</script>
<c:import url="basicIncludeSignUpCss.jsp" />
</head>
<body>
<div id="login-box">
    <form action="<c:url value="/signup.j" />">
  <div class="left">
    <h1>자리Y<img id="ball" src="http://localhost:8000/3jo_jariyo/img/common/ball-icon.gif" width="58px"/></h1>
    <!-- id="idCheck" -->
    <input type="text" id="id" name="id" placeholder="아이디" />
    <button class="searchId" type="button" onclick="idCheck()" >중복체크</button>
    <input type="text" id="name" name="name" placeholder="이름" />
    <input type="text" id="email" name="email" placeholder="이메일" />
    <button class="searchEmail" type="button" onclick="emailCheck()" >중복체크</button>
    <input type="password" id="password" name="password" placeholder="비밀번호" />
    <input type="password" name="password2" placeholder="비밀번호 확인" />
    <input type="text" name="phoneNo" placeholder="-을 제외한 핸드폰 번호" />
    <input class="addr" type="text" name="postNo" id="postNo" placeholder="우편번호" />
    <input class="addr" type="text" name="roadAddr" id="roadAddr" placeholder="기본주소" />
    <button class="searchAddr" type="button" onclick="findPost()">우편번호 찾기</button>
    <input class="addr" type="text" name="detailAddr" placeholder="상세주소" />
    <input type="text" name="positionX" id="positionX" style="display: none;" />
    <input type="text" name="positionY" id="positionY" style="display: none;" />
    <div class="select">
    	<a class="birth">생년월일</a><br>
	    <select name="birthYear">
	        <option value="0">선택</option>
	        <option value="2018">2018</option>
	        <option value="2017">2017</option>
	        <option value="2016">2016</option>
	        <option value="2015">2015</option>
	        <option value="2014">2014</option>
	        <option value="2013">2013</option>
	        <option value="2012">2012</option>
	        <option value="2011">2011</option>
	        <option value="2010">2010</option>
	        <option value="2009">2009</option>
	        <option value="2008">2008</option>
	        <option value="2007">2007</option>
	        <option value="2006">2006</option>
	        <option value="2005">2005</option>
	        <option value="2004">2004</option>
	        <option value="2003">2003</option>
	        <option value="2002">2002</option>
	        <option value="2001">2001</option>
	        <option value="2000">2000</option>
	        <option value="1999">1999</option>
	        <option value="1998">1998</option>
	        <option value="1997">1997</option>
	        <option value="1996">1996</option>
	        <option value="1995">1995</option>
	        <option value="1994">1994</option>
	        <option value="1993">1993</option>
	        <option value="1992">1992</option>
	        <option value="1991">1991</option>
	        <option value="1900">1990</option>
	        <option value="1989">1989</option>
	        <option value="1988">1988</option>
	        <option value="1987">1987</option>
	        <option value="1986">1986</option>
	        <option value="1985">1985</option>
	        <option value="1984">1984</option>
	        <option value="1983">1983</option>
	        <option value="1982">1982</option>
	        <option value="1981">1981</option>
	        <option value="1980">1980</option>
	        <option value="1979">1979</option>
	        <option value="1978">1978</option>
	        <option value="1977">1977</option>
	        <option value="1976">1976</option>
	        <option value="1975">1975</option>
	        <option value="1974">1974</option>
	        <option value="1973">1973</option>
	        <option value="1972">1972</option>
	        <option value="1971">1971</option>
	        <option value="1970">1970</option>
	        <option value="1969">1969</option>
	        <option value="1968">1968</option>
	        <option value="1967">1967</option>
	        <option value="1966">1966</option>
	        <option value="1965">1965</option>
	        <option value="1964">1964</option>
	        <option value="1963">1963</option>
	        <option value="1962">1962</option>
	        <option value="1961">1961</option>
	        <option value="1960">1960</option>
	        <option value="1959">1959</option>
	        <option value="1958">1958</option>
	        <option value="1957">1957</option>
	        <option value="1956">1956</option>
	        <option value="1955">1955</option>
	        <option value="1954">1954</option>
	        <option value="1953">1953</option>
	        <option value="1952">1952</option>
	        <option value="1951">1951</option>
	        <option value="1950">1950</option>
    	</select> 년
    	<select name="birthMonth">
	        <option value="m-0">선택</option>
	        <option value="01">1</option>
	        <option value="02">2</option>
	        <option value="03">3</option>
	        <option value="04">4</option>
	        <option value="05">5</option>
	        <option value="06">6</option>
	        <option value="07">7</option>
	        <option value="08">8</option>
	        <option value="09">9</option>
	        <option value="10">10</option>
	        <option value="11">11</option>
	        <option value="12">12</option>
    	</select>월
   		<select name="birthDay">
	        <option value="d-0">선택</option>
	        <option value="01">1</option>
	        <option value="02">2</option>
	        <option value="03">3</option>
	        <option value="04">4</option>
	        <option value="05">5</option>
	        <option value="06">6</option>
	        <option value="07">7</option>
	        <option value="08">8</option>
	        <option value="09">9</option>
	        <option value="10">10</option>
	        <option value="11">11</option>
	        <option value="12">12</option>
	        <option value="13">13</option>
	        <option value="14">14</option>
	        <option value="15">15</option>
	        <option value="16">16</option>
	        <option value="17">17</option>
	        <option value="18">18</option>
	        <option value="19">19</option>
	        <option value="20">20</option>
	        <option value="21">21</option>
	        <option value="22">22</option>
	        <option value="23">23</option>
	        <option value="24">24</option>
	        <option value="25">25</option>
	        <option value="26">26</option>
	        <option value="27">27</option>
	        <option value="28">28</option>
	        <option value="29">29</option>
	        <option value="30">30</option>
	        <option value="31">31</option>
   		</select>일 
    </div>
    
    <input type="submit"  class="button" name="signup_submit" value="회원가입" />
  </div>
  </form>
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin naver">네이버 아이디로 로그인</button>
    <button class="social-signin kakao">카카오 아이디로 로그인</button>
    <button class="social-signin google">구글 아이디로 로그인</button>

  </div>
  <div class="or">OR</div>
</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4f2b154b6617eb0edad20eaff1a2aadc&libraries=services"></script>
<script>
	
	function idCheck() {
		if ($("#id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#id").val("").focus();
		} else {
			
			var idArr = new Array();
			<c:forEach var="item" items="${idList}">
				idArr.push('${item}');
			</c:forEach>
			
			for (let i = 0; i < idArr.length; i++) {
				if ($("#id").val() == idArr[i]) {
					alert("사용할 수 없는 아이디 입니다.");
					$("#id").val("").focus();
					return false;
				}
			}
			$("#name").val("").focus();
			alert("사용가능한 아이디 입니다.")
		}
	}
	
	function emailCheck() {
		
		if ($("#email").val() == "") {
			alert("이메일을 입력해주세요.")
			$("#id").val("").focus();
		} else {
			
		var emailArr = new Array();
		<c:forEach var="item" items="${emailList}">
			emailArr.push('${item}');
		</c:forEach>
		
		for (let i = 0; i < emailArr.length; i++) {
			if ($("#email").val() == emailArr[i]) {
				alert("사용할 수 없는 이메일 입니다.");
				$("#email").val("").focus();
				return false;
			}
		}
		$("#password").val("").focus();
		alert("사용가능한 이메일 입니다.")
		}
	}
	
	/*
	$("#idCheck").click(function() {
		var idArr = new Array();
		<c:forEach var="item" items="${list}">
			idArr.push('${item}');
		</c:forEach>
		
		for (let i = 0; i < idArr.length; i++) {
			if ($("#id").val() == idArr[i]) {
				alert("사용할 수 없는 아이디 입니다.")
				$("#id".val("").focus())
				return false;
			}
		}
		alert("사용가능한 아이디 입니다.")
		$("#password").focus();
	});
	*/
	/*
	$("#idCheck").click(function(){
		var idArr = new Array();
		<c:forEach var="item" items="${list}">
			idArr.push( '${item}' );
		</c:forEach>
		for(var i = 0; i<idArr.length; i++){
			if($("#id").val() == idArr[i]){
				alert("중복된 아이디가 존재합니다.")
				$("#id").val("").focus()
				return false;
			}
		}
		alert("중복된 아이디가 없습니다.")
		$("#password").focus();
		
	})
	*/
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        // level: 5 // 지도의 확대 레벨
    };
    var geocoder = new daum.maps.services.Geocoder();
    function findPost() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }
           
           
           document.getElementById('postNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('roadAddr').value = fullRoadAddr;

           geocoder.addressSearch(data.address, function(results, status) {
                // 정상적으로 검색이 완료됐으면
                if (status === daum.maps.services.Status.OK) {

                    var result = results[0]; //첫번째 결과의 값을 활용

                    // 해당 주소에 대한 좌표를 받아서
                    var coords = new daum.maps.LatLng(result.y, result.x);
                    
                    document.getElementById("positionX").value = result.x;
                    document.getElementById("positionY").value = result.y;
                    // // 지도를 보여준다.
                    // mapContainer.style.display = "block";
                    // map.relayout();
                    // // 지도 중심을 변경한다.
                    // map.setCenter(coords);
                    // // 마커를 결과값으로 받은 위치로 옮긴다.
                    // marker.setPosition(coords)
                }
            });
        }
    }).open();
}
	
</script>
</body>
</html>