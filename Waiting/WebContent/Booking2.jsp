<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Waiting One Click</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=https://fonts.googleapis.com/css?family=Inconsolata:400,500,600,700|Raleway:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/booking2.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: MyPortfolio - v4.7.0
  * Template URL: https://bootstrapmade.com/myportfolio-bootstrap-portfolio-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<meta charset="UTF-8">



<!-- responsive-->
<link rel="stylesheet" href="assets/css/booking2.css">

<head>
  <meta charset="utf-8">
<body>
<div class="container rounded shadow-sm">
    <form action="">
        <div class="row">
            <div class="col-md-2 pe-0 col-sm-12">
                <div class="btn radio-btn mb-3"> <label class="radio"> <input type="radio" value="a" name="book" checked> Roundtrip <span></span> </label> </div>
            </div>
            <div class="col-md-2 pe-0 col-sm-12">
                <div class="btn radio-btn mb-3"> <label class="radio"> <input type="radio" value="a" name="book"> One way <span></span> </label> </div>
            </div>
            <div class="col-md-2 pe-0 col-sm-12">
                <div class="btn radio-btn mb-3"> <label class="radio"> <input type="radio" value="a" name="book"> Multi-City <span></span> </label> </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-12 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">FLYING FROM</p> <input class="inputbox" placeholder="City or Airport" type="text">
                </div>
            </div>
            <div class="col-md-6 col-12 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">FLYING TO</p> <input class="inputbox" placeholder="City or Airport" type="text">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-12 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">DEPARTING</p> <input class="inputbox textmuted" type="date">
                </div>
            </div>
            <div class="col-md-6 col-12 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">RETURNING</p> <input class="inputbox textmuted " type="date">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">ADULTS(18+)</p> <select class="border-0 outline-none">
                        <option value="" hidden selected>0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">CHILDREN(0-17)</p> <select class="border-0 outline-none">
                        <option value="" hidden selected>0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="form-control d-flex flex-column">
                    <p class="h-blue">TRAVEL CLASS</p> <select class="border-0 outline-none">
                        <option value="" hidden selected>Class</option>
                        <option value="1">Economy</option>
                        <option value="2">Premium</option>
                        <option value="3">Business</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="btn btn-primary form-control text-center">SHOWN FLIGHTS</div>
    </form>
</div>
</body>
</html>