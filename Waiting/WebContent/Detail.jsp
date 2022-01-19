<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Detail</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=https://fonts.googleapis.com/css?family=Inconsolata:400,500,600,700|Raleway:400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

</head>
<body>
	<!-- ======= Navbar ======= -->
	<div class="collapse navbar-collapse custom-navmenu" id="main-navbar">
		<div class="container py-2 py-md-4">
			<div class="row align-items-start">

				<ul class="row">

					<div class="col-8 col-sm-8 col-md-2"
						style="margin-left: 15%; margin-top: 15px; font-size: 22px; font-family: none;">
						<li><a href="index.jsp">메인페이지</a></li>
					</div>
					<div class="col-8 col-sm-8 col-md-2"
						style="margin-top: 15px; font-size: 22px; font-family: none;">
						<li><a href="about.html">사이트소개</a></li>
					</div>
					<div class="col-8 col-sm-8 col-md-2"
						style="margin-top: 15px; font-size: 22px; font-family: none;">
						<li><a href="services.html">마이페이지</a></li>
					</div>
					<div class="col-8 col-sm-8 col-md-2"
						style="margin-top: 15px; font-size: 22px; font-family: none;">
						<li><a href="works.html">메인게시판</a></li>
					</div>
					<div class="col-8 col-sm-8 col-md-2"
						style="margin-top: 15px; font-size: 22px; font-family: none;">
						<li><a href="contact.html">이벤트게시판</a></li>
					</div>
				</ul>



			</div>
		</div>
	</div>
	<nav class="navbar navbar-light custom-navbar">
		<div class="container">
			<img class="img-fluid" src="assets/img/logo.png">
			<!--*****로고******-->
			<a href="#" class="burger" data-bs-toggle="collapse"
				data-bs-target="#main-navbar"> <span></span>
			</a>
		</div>
	</nav>


	<main id="main">

		<section class="section">
			<div class="container">
				<div class="row mb-4 align-items-center">
					<div class="col-md-6" data-aos="fade-up">
						<h2>성수동 **카페</h2>
					</div>
				</div>
			</div>

			<div class="site-section pb-0">
				<div class="container">
					<div class="row align-items-stretch">
						<div class="col-md-8" data-aos="fade-up">
							<img src="assets/img/cafe3.jpg" alt="Image" class="img-fluid detailimg">
						</div>
						<div class="col-md-3 ml-auto" data-aos="fade-up"
							data-aos-delay="100">
							<div class="sticky-content">
								<h3 class="h3">성수동 **카페</h3>
								<p class="mb-4">
									<span class="text-muted">서울시 성동구 성수동2가 123-45</span>
								</p>

								<div class="mb-5">
									<p>**카페는 넓은 공간과 쾌적한 환경이 장점입니다</p>

								</div>

								<h4 class="h4 mb-3">시설이용사항</h4>
								<ul class="list-unstyled list-line mb-5">
									<li>주차가능</li>
									<li>애견동반x</li>
									<li>흡연실x</li>
								</ul>

								<p>
									<a href="#" class="readmore">예약하기</a>
								</p>
							</div>
						</div>
					</div>
				</div>
		</section>


		<!-- ======= Footer ======= -->
		<jsp:include page="footer.jsp"></jsp:include>



		<!-- Vendor JS Files -->
		<script src="assets/vendor/aos/aos.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
		<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
		<script src="assets/vendor/php-email-form/validate.js"></script>

		<!-- Template Main JS File -->
		<script src="assets/js/main.js"></script>
</body>
</html>