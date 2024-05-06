<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Employer Index</title>
<%@ include file="empcss.jsp" %>
</head>
<body>

	<div class="container-xxl b
    g-white p-0">

		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
			<a href="index.html"
				class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
				<h1 style="color : #27187e;" class="m-0">CareerHub</h1>
			</a>


			<button type="button" class="navbar-toggler me-4"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
				 <a
					href="#about" class="nav-item nav-link">About</a> <a
						href="Jobs.jsp" class="nav-item nav-link">Jobs</a><a
						href="contact.jsp" class="nav-item nav-link">Contact</a>
				</div>

				<a href="#" class="btn rounded-0 py-3 px-lg-3 d-none d-lg-block"><i class="bi bi-person-circle"></i> Employer
					
				</a>
			</div>
		</nav>

		<!-- Navbar end -->
		<%@ include file="_empsidebar.jsp"%>
		<div style="background-color : #f1f2f6"class= content>
		<div class="pagetitle py-3">
			<%
			GregorianCalendar time = new GregorianCalendar();
			int hour = time.get(Calendar.HOUR_OF_DAY);
			if (hour < 12) {
			%>
			<h3>Recruiter DashBoard | Good Morning</h3>
			<%
			} else if (hour >= 12 && hour < 17) {
			%>
			<h3>Recruiter DashBoard | Good Afternoon</h3>
			<%
			} else {
			%>
			<h3>Recruiter DashBoard | Good Evening</h3>
			<%
			}
			%>

			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item ">Home</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-8">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">
								<div class="card-body">
									<h5 class="card-title">Total Jobs</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">
								<div class="card-body">
									<h5 class="card-title">No of Applications</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>

										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">
								<div class="card-body">
									<h5 class="card-title">Total Hired</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>

										</div>
									</div>
								</div>

							</div>
						</div>
						</div>
						</div>
				</div>
		</section>

		<!-- ======= Footer ======= -->
	<!-- <footer id="footer" class="footer">
			<div class="copyright">
				&copy; Copyright <strong><span>WorkConnect</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">

				Designed by <a href="">WorkConnect Team</a>
			</div>
		</footer>  -->	
		<!-- End Footer -->
	</div>
	</div>
	
</body>
</html>