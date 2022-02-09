<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/love.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	rel="stylesheet">

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="topbar.jsp"></jsp:include>

	<div class="container mt-5 mb-5">
		<div class="main-header">
			<h2 style="text-align: center;margin-top: 20px;font-weight: bold;">즐겨찾기 목록</h2>
			<div class="d-flex justify-content-between mb-3">

				<button class="exit">삭제하기</button>
			</div>
			<div class="row g-2">
				<div class="col-md-4 ">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/cafe3.jpg" class="img">
						</div>
						<h5 class="mb-0">Patey Cruiser</h5>
						<small>Neurosurgeon</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase"><a href="Booking.jsp">가게 자세히 보기</a></button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/cafe5.jpg" class="img">
						</div>
						<h5 class="mb-0">Mario Speedway</h5>
						<small>Cardiologist</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/cafe.jpg" class="img">
						</div>
						<h5 class="mb-0">Anna Sthesia</h5>
						<small>Surgeon</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/음식4.jpg" class="img">
						</div>
						<h5 class="mb-0">Paul Moliv</h5>
						<small>Dentist</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/음식1.jpg" class="img">
						</div>
						<h5 class="mb-0">Anna Maul</h5>
						<small>Eye Specialist</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/음식.jpg" class="img">
						</div>
						<h5 class="mb-0">Gail Forcewind</h5>
						<small>Urology</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/cafe2.jpg" class="img">
						</div>
						<h5 class="mb-0">Patey Cruiser</h5>
						<small>Neurosurgeon</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card p-2 py-3 text-center">
						<div class="img mb-2">
							<img src="assets/img/음식4.jpg" class="img">
						</div>
						<h5 class="mb-0">Patey Cruiser</h5>
						<small>Neurosurgeon</small>
						<div class="ratings mt-2">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i>
						</div>
						<div class="mt-4 apointment">
							<button class="btn text-uppercase">가게 자세히 보기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>