<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CareerHub</title>
<%@include file="css_component/allcss.jsp"%>
</head>
<body>
	<div class="container-xxl b
    g-white p-0">
		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
			<a href="index.html"
				class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
				<h1 class="text">CareerHub</h1>
			</a>
			<button type="button" class="navbar-toggler me-4"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
					<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
						href="#about" class="nav-item nav-link">About</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Jobs</a>
						<div class="dropdown-menu rounded-0 m-0">
							<a href="category.jsp" class="dropdown-item">Job Category</a> <a
								href="job-list.jsp" class="dropdown-item">Job List</a> <a
								href="job-detail.jsp" class="dropdown-item">Job Detail</a>
						</div>
					</div>

					<a href="contact.jsp" class="nav-item nav-link">Contact </a>
				</div>
				<div class="dropdown">
					<a href="#" role="button"
						class="btn btn-primary rounded-0 py-4 px-lg-5 d-none d-lg-block"
						data-bs-toggle="dropdown">Login <i
						class="fa fa-arrow-right ms-3"></i></a>

					<ul class="dropdown-menu dropdown-menu-light" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="user/user-login.jsp">User Login</a></li>
						<li><a class="dropdown-item" href="employer/employer-login.jsp">Employer Login</a></li>
					</ul>
				</div>
			</div>

		</nav>
		<!-- Navbar End -->

		<!-- Carousel Start -->
		<div id="carouselExampleInterval" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="10000">
					<img src="img/carousel-1.jpg" class="d-block w-100" alt="...">
					<div
						class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
						style="background: rgba(43, 57, 64, .5);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-10 col-lg-8">
									<h1 class="text-white animated slideInDown mb-4">Discover
										Exciting Job Opportunities and Unlock Your Potential</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="2000">
					<img src="img/carousel-2.jpg" class="d-block w-100" alt="...">
					<div
						class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
						style="background: rgba(43, 57, 64, .5);">
						<div class="container">
							<div class="row justify-content-start">
								<div class="col-10 col-lg-8">
									<h1 class="text-white animated slideInDown mb-4">Find Top
										Talent to Drive Innovation and Growth</h1>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleInterval" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- Carousel End -->

		<!-- Search Start -->
		<div class="container-fluid bg-dark mb-5 wow fadeIn"
			data-wow-delay="0.1s" style="padding: 35px;">
			<div class="container">
				<div class="row g-2">
					<div class="col-md-10">
						<div class="row g-2">
							<div class="col-md-4">
								<input type="text" class="form-control border-0"
									placeholder="Keyword" />
							</div>
							<div class="col-md-4">
								<select class="form-select border-0">
									<option selected>Category</option>
									<option value="1">Project Management</option>
									<option value="2">Frontend dev</option>
									<option value="3">Backend dev</option>
								</select>
							</div>
							<div class="col-md-4">
								<select class="form-select border-0">
									<option selected>Location</option>
									<option value="1">Pune</option>
									<option value="2">Mumbai</option>
									<option value="3">Bangalore</option>
								</select>
							</div>
						</div>
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary border-0 w-100">Search</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Search End -->

		<!-- About Start -->
		<div class="container-xxl py-5" id="about">
			<div class="container">
				<div class="row g-5 align-items-center">
					<div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
						<div class="row g-0 about-bg rounded overflow-hidden">
							<img class="img-fluid w-100" src="img/about-1.jpg">
						</div>
					</div>
					<div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
						<h2 class="mb-4">CareerHub - Your One-Stop Destination for
							Finding Your Dream Job</h2>
						<p class="mb-4">Welcome to CareerHub, the ultimate platform
							for job seekers to find their ideal job! Our website is designed
							to simplify your job search process by providing you with a wide
							range of job opportunities from various industries and locations.</p>
						<p class="mb-4">Whether you are a fresh graduate or an
							experienced professional, CareerHub has something for everyone.
							Our search filters allow you to narrow down your job search based
							on your preferences. We offer a range of resources and tools to
							help you succeed in your job search, including resume-building
							tool.</p>
						<p class="mb-4">At CareerHub, we are committed to helping you
							find your dream job and take the next step in your career. Start
							your job search today and take the first step towards a brighter
							future!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- About End -->

		<!-- Footer Start -->
		<div class="container-fluid bg-dark text-white-50 footer">
			<h5 class="text-center text-white py-2">CareerHub</h5>
			<p class=" py-3">Welcome to CareerHub, the ultimate platform for
				job seekers to find their ideal job! Best platform for recruiters to
				find individuals who are passionate about their work and eager to
				make a meaningful impact in their field.</p>
		</div>
	</div>
</body>
</html>