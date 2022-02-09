<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보관리</title>

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/Mypage.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">


</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="topbar.jsp"></jsp:include>



	<div class="container mt-4 mb-4 p-3 d-flex justify-content-center">
		<div class="main-header">
			<h2 style="text-align: center;margin-top: 20px;font-weight: bold;">회원정보 관리</h2>
			<div class="card p-4">
				<div class="profile">
					<div
						class="image d-flex flex-column justify-content-center align-items-center">
						<button class="btn btn-secondary booo">
							<img src="https://i.imgur.com/wvxPV9S.png" height="100"
								width="100" />
						</button>
						<span class="name">${session_user.u_name}</span> <span class="idd">${session_user.email}</span>
						<div
							class="d-flex flex-row justify-content-center align-items-center gap-2">
							<span class="idd1">${session_user.u_pnumber}</span>
						</div>

						<div class=" d-flex mt-5 gap-2">
							<button class="btn1 btn-dark"><a href="Changeinfo.jsp" style="color: #ffffffff;">회원정보 수정</a></button>
							<button class="btn1 btn-dark">회원 탈퇴</button>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>