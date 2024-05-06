<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User-Index</title>
<%@ include file="usercss.jsp"%>
</head>
<body>
	<div class="container-xxl b
    g-white p-0">
		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
			<a href="index.html"
				class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
				<h1 style="color: #27187e;" class="m-0">CareerHub</h1>
			</a>
			<button type="button" class="navbar-toggler me-4"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
				 <a
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
				<!--  <a href="#" class="btn rounded-0 py-3 px-lg-3 d-none d-lg-block">User
					<i class="bi bi-person-circle"></i>
				</a>-->
				<div class="nav-item dropdown pe-3">
				<a class="nav-link d-flex align-items-center pe-0" href="#"
					data-bs-toggle="dropdown"> <span
					class="d-none d-md-block dropdown-toggle ps-2">User</span>
				</a>
				<!-- End Profile Iamge Icon -->
				<ul class="dropdown-menu dropdown-menu-end">
					<li>
					<a class="dropdown-item d-flex align-items-center"
						href="users-profile.html"> <i class="bi bi-gear"></i> <span>Account
							Settings</span>
					</a>
					</li>
					<li>
					<a class="dropdown-item d-flex align-items-center" href="#"> <i
						class="bi bi-box-arrow-right"></i> <span>Sign Out</span>
					</a>
					</li>
				</ul>
				<!-- End Profile Dropdown Items -->
			</div>
			</div>
		</nav>
		<%@ include file="_usersidebar.jsp"%>
		<div style="background-color: #f1f2f6" class=content></div>
	</div>


</body>
</html>