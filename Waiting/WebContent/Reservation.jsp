<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 관리</title>


<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/Reservation.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	rel="stylesheet">



</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="topbar.jsp"></jsp:include>

	<div class="container d-flex justify-content-center">
		<div class="main-header">
			<h2 class="headingmain" style="text-align: center"margin-top: 20px;>예약관리</h2>
			<div class="row">
				<div class="col-sm-6">
					<div class="card d-flex mx-auto">
						<div class="card-body">
							<h3 class="card-title mb-4">진행중인 예약 목록</h3>
							<div class="table-responsive">
								<table class="table table-hover">
									<thead id="my">
										<tr>
											<th>음식점 이름</th>
											<th>대기번호</th>
											<th>예약취소</th>
										</tr>
									</thead>
									<tbody>
										<tag:ing_Waiting></tag:ing_Waiting>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="card d-flex mx-auto">
						<div class="card-body">
							<h3 class="card-title mb-4">지난 예약 목록</h3>

							<div class="table-responsive">
								<table class="table table-hover">
									<thead id="my">
										<tr>
											<th>음식점 이름</th>

											<th>예약한 시간</th>
										</tr>
									</thead>
									<tbody>
										<tag:end_Waiting></tag:end_Waiting>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>