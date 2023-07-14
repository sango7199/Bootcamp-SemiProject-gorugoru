<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/join.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<div id="wrapper">
		<!-- 회원가입 -->
		<section class="Join">
			<h1>
				<a href="${contextPath}/mall_main.do"><img src="${contextPath}/resources/images/gorugoru_logo.gif" alt="" class="goru"></a>
			</h1>
			<!-- <h4>가입 정보 입력 </h4> -->
			<div class="join__card">
				<form method="post"   action="${contextPath}/member/addMember.do">
					<select name="type">
						<option value="user">user</option>
						<option value="manager">manager</option>
					</select> 
					<input type="text" name="id" placeholder="아이디" /> 
					<input type="password" name="pwd" id="password" placeholder="비밀번호" /> 
					<input type="password" name="confirmPwd" id="confirmPassword" placeholder="비밀번호 확인" /> 
					<input type="text" name="name" placeholder="이름" />
					<input type="date" name="birth" placeholder="생일" />

					<div class="email">
						<input type="text" class="emailFront" name="email" placeholder="이메일" value="test"/> 
						<select id="email" class="emailBack" name="emailDomain" >
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.com">daum.com</option>
							<option value="kakao.com">kakao.com</option>
							<option value="nate.com">nate.com</option>
							<option value="yahoo.com">yahoo.com</option>
						</select>				
					</div>

					<input type="text" name="tel" placeholder="전화번호" /> 
					<div class="postNum">
						<input type="text" name="postcode" id="postcode" class="address" placeholder="우편번호">
						<input type="button" id="post_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					</div>
					<input type="text" name="address" id="address" class="address" placeholder="주소"><br>
					<input type="text" name="detailAddress" id="detailAddress" class="address" placeholder="상세주소">
					<input type="text" name="extraAddress" id="extraAddress" class="address" placeholder="주소 참고항목">
					<input type="submit" value="회원가입" onclick="return checkPassword();" />

				</form>
				
			</div>
		</section>
	</div>
	<script>
		function checkPassword() {
			var password = document.getElementById('password').value;
			var confirmPassword = document.getElementById('confirmPassword').value;

			if (password !== confirmPassword) {
				alert('비밀번호가 일치하지 않습니다.');
				return false;
			}

			return true;
		}
		
		// kakao 지도 API
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById("address").value= addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
</body>
