<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.job.DB.DBConnect"%>
<%@ page import="com.job.entity.Employer"%>
<%@ page import="com.job.DAO.EmployerDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employer Profile</title>
<%@ include file="empcss.jsp"%>

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
					<a href="#about" class="nav-item nav-link">About</a> <a
						href="Jobs.jsp" class="nav-item nav-link">Jobs</a><a
						href="contact.jsp" class="nav-item nav-link">Contact</a>
				</div>

				<a href="#" class="btn rounded-0 py-3 px-lg-3 d-none d-lg-block"><i
					class="bi bi-person-circle"></i> Employer </a>
			</div>
		</nav>
		<!-- Navbar end -->
		<%@ include file="_empsidebar.jsp"%>
		 <%
		 int id = Integer.parseInt(request.getParameter("id"));
		EmployerDAO dao = new EmployerDAO(DBConnect.getConn());
		Employer us = dao.getEmployerById(id);
		%>
		<%--<%
		ServletContext sc2 = request.getServletContext();
		EmployerDAO ad1 = new EmployerDAO(DBConnect.getConn());
		int id = (Integer) sc2.getAttribute("e-id");
		Employer us = ad1.getEmployerById(id);
		%>--%>
		<div style="background-color: #f1f2f6" class=content>
			<div class="pagetitle">
				<h3>Profile</h3>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="recruiter-login.jsp">Home</a></li>
						<li class="breadcrumb-item">Recruiter</li>
						<li class="breadcrumb-item active">Profile</li>
					</ol>
				</nav>
			</div>
			<!-- End Page Title -->

			<section class="section profile">
				<div class="row">
					<!--  <div class="col-xl-4">

					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">

							
							<img src="#" alt="Profile"
								class="rounded-circle">

							<img src="#" alt="Profile"
								class="rounded-circle">
							<h2>
							</h2>
							<h4>
								HR Name:
							</h4>
						




							<div class="social-links mt-2">
								<a href="" class="twitter"><i
									class="bi bi-globe"></i></a> <a href=""
									class="instagram"><i class="bi bi-twitter"></i></a> <a
									href="" class="twitter"><i
									class="bi bi-facebook"></i></a> <a href=""
									class="linkedin"><i class="bi bi-linkedin"></i></a>
							</div>
						</div>
					</div>

				</div>-->

					<div class="col-xl-8">

						<div class="card">
							<div class="card-body pt-3">
								<!-- Bordered Tabs -->
								<ul class="nav nav-tabs nav-tabs-bordered">

									<li class="nav-item">
										<button class="nav-link active" data-bs-toggle="tab"
											data-bs-target="#profile-overview">Overview</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-edit">Edit Company Profile</button>
									</li>

									<li class="nav-item">
										<button class="nav-link" data-bs-toggle="tab"
											data-bs-target="#profile-change-password">Change
											Password</button>
									</li>

								</ul>
								<div class="tab-content pt-2">

									<div class="tab-pane fade show active profile-overview"
										id="profile-overview">
										<h5 class="card-title">Company Description</h5>

										<p class="small fst-italic" style="color: red">**Please
											Complete Your Profile</p>

										<p class="small fst-italic"></p>




										<h5 class="card-title">Company Details</h5>

										<div class="row py-1">
											<div class="col-lg-3 col-md-4 label ">HR Name</div>

											<div class="col-lg-9 col-md-8 small fst-italic"
												style="color: red">**Please Complete Your Profile</div>

											<div class="col-lg-9 col-md-8"></div>

										</div>

										<div class="row py-1">
											<div class="col-lg-3 col-md-3 label">HR Phone</div>

											<div class="col-lg-3 col-md-3 small fst-italic"
												style="color: red">**Incomplete</div>

											<div class="col-lg-3 col-md-3"></div>
										</div>
										<div class="row py-1">
											<div class="col-lg-3 col-md-3 label">HR Email</div>

											<div class="col-lg-3 col-md-8 small fst-italic"
												style="color: red">**Incomplete</div>

											<div class="col-lg-3 col-md-8"></div>

										</div>

										<div class="row py-1">
											<div class="col-lg-3 col-md-4 label">Contact Email</div>
											<div class="col-lg-3 col-md-8"></div>

											<div class="col-lg-3 col-md-4 label">Contact Phone</div>
											<div class="col-lg-3 col-md-8"></div>
										</div>

										<div class="row py-1">
											<div class="col-lg-3 col-md-4 label">Company Address</div>
											<div class="col-lg-3 col-md-8"></div>

											<div class="col-lg-3 col-md-4 label">Company Size</div>
											<div class="col-lg-3 col-md-8"></div>
										</div>

										<div class="row py-1">
											<div class="col-lg-3 col-md-4 label">Industry</div>
											<!-- <div class="col-lg-3 col-md-8"></div>
										<div class="col-lg-3 col-md-4 label">Verified Account</div>
										<div class="col-lg-3 col-md-8">
											<b><i class="bi bi-check-circle-fill"
												style="color: green"></i></b>
										</div>-->
										</div>



									</div>

									<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

										<!-- Profile Edit Form -->
										<form action="../updateprofile" method="post"
											enctype='multipart/form-data'>
											<input type="hidden" value="" name="id">
											<!--  <div class="row mb-3">
											<label for="profileImage"
												class="col-md-4 col-lg-3 col-form-label">Profile
												Image</label>
											<div class="col-md-8 col-lg-9">
												
												<img src="../user-images/avtar.jpg" alt="Profile">
												
            	  <img src="../company-images/" alt="Profile" class="rounded-circle">


												<


												<div class="pt-2">
													<input type="hidden" value=""
														name="id"> <input type="file" name="photo"
														accept="image/*">

													<!-- <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a></input>
                          <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-tr ash"></i></a>
												</div>
											</div>
										</div>-->

											<!-- <div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Registration
												No</label>
											<div class="col-md-8 col-lg-9">
												<input name="regno" type="text" class="form-control"
													id="fullName" value="">
											</div>
										</div>
										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Registration
												Date</label>
											<div class="col-md-8 col-lg-9">
												<input name="regdate" type="date" class="form-control"
													id="fullName" value="">
											</div>
										</div>-->
											<div class="row mb-3">
												<label for="fullName"
													class="col-md-4 col-lg-3 col-form-label">Company
													Size</label>
												<div class="col-md-8 col-lg-9">
													<select name="size" class="form-select"
														aria-label="Default select example">
														<option value="0-100" selected>0-100</option>
														<option value="101-1000">101-1000</option>
														<option value="1000-10000">1000-10000</option>

													</select>
												</div>
											</div>

											<div class="row mb-3">
												<label for="about" class="col-md-4 col-lg-3 col-form-label">Company
													Description</label>
												<div class="col-md-8 col-lg-9">
													<textarea name="dec" class="form-control" id="dec"
														style="height: 100px"></textarea>
												</div>
											</div>

											<div class="row mb-3">
												<label for="inputDate"
													class="col-md-4 col-lg-3 col-form-label">Contact
													Email</label>
												<div class="col-md-8 col-lg-9">
													<input name="email" type="email" value=""
														class="form-control">
												</div>
											</div>

											<div class="row mb-3">
												<label for="inputDate"
													class="col-md-4 col-lg-3 col-form-label">Contact
													Phone</label>
												<div class="col-md-8 col-lg-9">
													<input name="phone" type="text" value=""
														class="form-control">
												</div>
											</div>
											<div class="row mb-3">
												<label for="inputDate"
													class="col-md-4 col-lg-3 col-form-label">City</label>
												<div class="col-md-8 col-lg-9">
													<input name="city" type="text" value=""
														class="form-control">
												</div>
											</div>
											<div class="row mb-3">
												<label for="inputDate"
													class="col-md-4 col-lg-3 col-form-label">State</label>
												<div class="col-md-8 col-lg-9">
													<input name="state" type="text" value=""
														class="form-control">
												</div>
											</div>
											<div class="row mb-3">
												<label for="inputDate"
													class="col-md-4 col-lg-3 col-form-label">Country</label>
												<div class="col-md-8 col-lg-9">
													<input name="country" type="text" value=""
														class="form-control">
												</div>
											</div>



											<!--  <div class="row mb-3">
											<label for="Twitter" class="col-md-4 col-lg-3 col-form-label">Twitter
												Profile</label>
											<div class="col-md-8 col-lg-9">
												<input name="twitter" type="url" class="form-control"
													id="Twitter" value="">
											</div>
										</div>-->

											<div class="row mb-3">
												<label for="Facebook"
													class="col-md-4 col-lg-3 col-form-label">LinkedIn
													Profile</label>
												<div class="col-md-8 col-lg-9">
													<input name="linkedin" type="url" class="form-control"
														id="Facebook" value="">
												</div>
											</div>

											<div class="row mb-3">
												<label for="Instagram"
													class="col-md-4 col-lg-3 col-form-label">Company
													Website </label>
												<div class="col-md-8 col-lg-9">
													<input name="web" type="url" class="form-control"
														id="Instagram" value="">
												</div>
											</div>



											<div class="text-center">
												<button type="submit" class="btn btn-primary">Save
													Changes</button>
											</div>
										</form>
										<!-- End Profile Edit Form -->

									</div>


									<div class="tab-pane fade pt-3" id="profile-change-password">
										<!-- Change Password Form -->
										<form>

											<div class="row mb-3">
												<label for="currentPassword"
													class="col-md-4 col-lg-3 col-form-label">Current
													Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="password" type="password" class="form-control"
														id="currentPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="newPassword"
													class="col-md-4 col-lg-3 col-form-label">New
													Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="newpassword" type="password"
														class="form-control" id="newPassword">
												</div>
											</div>

											<div class="row mb-3">
												<label for="renewPassword"
													class="col-md-4 col-lg-3 col-form-label">Re-enter
													New Password</label>
												<div class="col-md-8 col-lg-9">
													<input name="renewpassword" type="password"
														class="form-control" id="renewPassword">
												</div>
											</div>

											<div class="text-center">
												<button type="submit" class="btn btn-primary">Change
													Password</button>
											</div>
										</form>
										<!-- End Change Password Form -->

									</div>

								</div>
								<!-- End Bordered Tabs -->

							</div>
						</div>

					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>