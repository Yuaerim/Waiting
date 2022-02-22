<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap css -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.css">

<!-- responsive-->
<link rel="stylesheet" href="assets/css/signup.css">

<title>Insert title here</title>
</head>
<body>


	<div class="container_join">
		<div class="d-flex justify-content-center">
			<form name="signupForm" method="post" action="${pageContext.request.contextPath}/FrontController/UserCheckIdOK.us">
				<h2 class="heading mb-6" id="signupTitle">Sign Up</h2>
				<!--  ID -->
				<div class="form-group fone mt-5">
					<div class="input-group">
						<div class="input-group-prepend">
							<p>ID<span class="input-group-text" id="idCheck_text"
								style="width: 120px;"></span>
								</p>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="20"
							placeholder="ID를 입력하세요" aria-describedby="InputArea" required
							name="userid" id="userid">
						
					</div>

					<div class="check_font" id="id_check">
						<!--  alert -->
					</div> 
				</div>
				<!--  PW -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordArea"
								style="width: 120px;">비밀번호</span>
						</div>
						<input type="password" class="form-control is-invalid"
							maxlength="20" placeholder="비밀번호를 입력하세요"
							aria-describedby="passwordArea" required name="pw1">
					</div>
					<div class="check_font" id="pw_check">
						<!--  alert -->
					</div>
				</div>
				<!--  PW2 -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordCheckArea"
								style="width: 120px;">비밀번호 확인</span>
						</div>
						<input type="password" class="form-control is-invalid"
							maxlength="20" placeholder="비밀번호를 입력하세요"
							aria-describedby="passwordCheckArea" required name="pw2">
					</div>
					<div class="check_font" id="pw2_check">
						<!--  alert -->
					</div>
				</div>
				<!--  name  -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="nameArea"
								style="width: 120px;">이름</span>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="20"
							placeholder="이름을 입력하세요" aria-describedby="nameArea" required
							name="userName">
					</div>
					<div class="check_font" id="name_check">
						<!--  alert -->
					</div>
				</div>


				<!--  E-mail  -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordArea"
								style="width: 120px;">이메일</span>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="40"
							placeholder="이메일을 입력하세요" aria-describedby="passwordArea" required
							name="userEmail">
					</div>
					<div class="check_font" id="email_check">
						<!--  alert -->
					</div>
				</div>



				<br>
				<div id="signupbtn">
				<li>
					<input type="submit" class="signupbtn" value="회원가입"
						onclick="formSubmit()">
						</li>
				</div>
				<p class="exist mt-2" style="text-align: center; font-size: 15px;">
					Existing user? <a href="login.jsp"><span>Log in</span></a>
				</p>
				<p class="exist">
					Wanna go back? <a href="index.jsp"><span>Back!</span></a>
				</p>
			</form>


		</div>

	</div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

</body>
<script src="${pageContext.request.contextPath}/assets/js/signup.js"></script>
<script>var contextPath = "${pageContext.request.contextPath}"</script>
<script>
function button1_click() {
	console.log("버튼1을 누르셨습니다.");
	/*  frm.submit(); */
}
</script>

</html>