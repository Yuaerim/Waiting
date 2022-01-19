<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h2 class="headingmain" style="text-align: center" margin-top: 20px;>예약관리</h2>
			<div class="row">
				<div class="col-sm-6">
					<div class="card d-flex mx-auto">
						<div class="card-body">
							<h3 class="card-title mb-4">진행중인 예약 목록</h3>
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>음식점 이름</th>
											<th>대기번호</th>
											<th>예약취소</th>
										</tr>
									</thead>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="card d-flex mx-auto">
						<div class="card-body">
							<h3 class="card-title mb-4">지난 예약 목록</h3>


							<div class="card-body">
								<div class="list-group">
									<a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start box">
										<div class="d-flex justify-content-between write">
											<h5>피자집</h5>
											<small>19 days ago</small>
										</div>
									</a> <a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start box">
										<div class="d-flex justify-content-between write">
											<h5>파스타집</h5>
											<small>10 days ago</small>
										</div>
									</a> <a href="#"
										class="list-group-item list-group-item-action flex-column align-items-start box">
										<div class="d-flex justify-content-between write">
											<h5>떡볶이집</h5>
											<small>13 days ago</small>
										</div>
									</a>
								</div>
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