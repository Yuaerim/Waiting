<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/changeinfo.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	rel="stylesheet">
</head>
<body>

	<div class="padding container d-flex justify-content-center">
		<div class="col-md-10 col-md-offset-1">
			<form class="signup-form">
				<h2 class="text-center">회원 정보 수정</h2>
				<hr>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Full Name"
						required="required">
				</div>
				<div class="form-group">
					<input type="email" class="form-control" placeholder="Email"
						required="required">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="ID"
						required="required">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Password"
						required="required">
				</div>
				<br> <br>
				<div id="signupbtn">
					<button type="submit" class="btn btn-blue btn-block">나가기</button>
					<!-- onclick이랑 frm.submit() 부분 필요 -->
					<button type="submit" class="btn btn-blue btn-block"
						style="margin-right: 20px;">수정완료</button>
					<!-- onclick이랑 frm.submit() 부분 필요 -->
				</div>

			</form>
		</div>
	</div>

</body>
</html>