<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>OMDS</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/gijgo.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/slicknav.css">
<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->


	<!-- header-start -->
	<header>
		<div class="header-area ">
			<div id="sticky-header" class="main-header-area">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-3">
							<div class="logo-img">
								<a href="index"> <img src="img/logo.jpg" alt=""
									height="70px">
								</a>
							</div>
						</div>
						<div class="col-xl-9 col-lg-9">
							<div class="menu_wrap d-none d-lg-block">
								<div
									class="menu_wrap_inner d-flex align-items-center justify-content-end">
									<div class="main-menu">
										<nav>
											<ul id="navigation">
												<li><a href="index">home</a></li>
												<li><a href="about">About</a></li>
												<li><a href="register">Medicines</a></li>
												<li><a href="contact">Contact</a></li>
												<li><a href="donor">Donate</a></li>
											</ul>
										</nav>
									</div>
									<div class="book_room">
										<div class="book_btn">
											<a class="popup-with-form" href="#test-form">Login</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->

	<!-- bradcam_area_start  -->
	<div class="bradcam_area breadcam_bg_1">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="bradcam_text">
						<h3>Contact</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bradcam_area_end  -->

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<%
		String message1 = (String) session.getAttribute("submit1");
		if (message1 != null) {
		%>
		<%=message1%>
		<%
		}
		%>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">Get in Touch</h2>
				</div>
				<div class="col-lg-8">
					<form class="form-contact contact_form" action="contact"
						method="post" id="contactForm" novalidate="novalidate">
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="name" id="name"
										type="text" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter your name'"
										placeholder="Enter your name">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group">
									<input class="form-control valid" name="email" id="email"
										type="email" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter email address'"
										placeholder="Email">
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<input class="form-control" name="subject" id="subject"
										type="text" onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Subject'"
										placeholder="Enter Subject">
								</div>
							</div>
							<div class="col-12">
								<div class="form-group">
									<textarea class="form-control w-100" name="message"
										id="message" cols="30" rows="9"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = 'Enter Message'"
										placeholder="Message"></textarea>
								</div>
							</div>
						</div>
						<div class="form-group mt-3">
							<button type="submit" class="button button-contactForm boxed-btn">Send</button>
						</div>
					</form>
				</div>
				<div class="col-lg-3 offset-lg-1">
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-home"></i></span>
						<div class="media-body">
							<h3>Wai, Maharashtra</h3>
							<p>Satara, CA 415519</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-tablet"></i></span>
						<div class="media-body">
							<h3>+917057256754</h3>
							<p>24*7</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-email"></i></span>
						<div class="media-body">
							<h3>medonation@gmail.com</h3>
							<p>Send us your query anytime!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ contact section end ================= -->


	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-md-6 col-lg-4 ">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="#"> <img src="img/logo.png" alt="">
								</a>
							</div>
							<p class="address_text">
								Wai, <br> Satara, Maharashtra <br> India.
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="ti-twitter-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-4  col-md-6 col-lg-4">
						<div class="footer_widget">
							<h3 class="footer_title">We are Available</h3>
							<h3 class="footer_title">24*7</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right_text">
			<div class="container">
				<div class="row">
					<div class="bordered_1px "></div>
					<div class="col-xl-12">
						<p class="copy_right text-center">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This is made with <i
								class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">OMDS</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!-- form itself end-->
	<form id="test-form" class="white-popup-block mfp-hide">
		<div class="popup_box ">
			<div class="popup_inner">
				<%
				String message = (String) session.getAttribute("failed-msg");
				if (message != null) {
				%>
				<%=message%>
				<%
				}
				%>
				<h3>Registration Form</h3>
				<form action="register" method="post">
					<div class="row">
						<div class="col-xl-9">
							<input type="text" name="name" placeholder="Name" required>
						</div>
						<div class="col-xl-3">
							<input type="text" name="address" placeholder="Address" required>
						</div>
						<div class="col-xl-6">
							<input type="text" name="phone" placeholder="Phone number"
								required>
						</div>
						<div class="col-xl-6">
							<input type="email" name="email" placeholder="Email Id" required>
						</div>
						<div class="col-xl-6">
							<input type="password" name="password" placeholder="Password"
								required>
						</div>
						<div class="col-xl-12">
							<button type="submit" class="boxed-btn3">SUBMIT</button>
						</div>
					</div>
					<span>If already registered?<a href="login">Login Here!</a></span>
				</form>
			</div>
		</div>
	</form>
	<!-- form itself end -->

	<!-- JS here -->
	<script src="js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/ajax-form.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/scrollIt.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/nice-select.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/gijgo.min.js"></script>

	<!--contact js-->
	<script src="js/contact.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>

	<script src="js/main.js"></script>
	<script>
		$('.datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-calendar"></span>'
			}
		});

		$('.timepicker').timepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-clock-o"></span>'
			}
		});
		$(document).ready(function() {
			$('.js-example-basic-multiple').select2();
		});
	</script>
</body>

</html>