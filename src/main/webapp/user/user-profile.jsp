<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
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
					<a href="#about" class="nav-item nav-link">About</a>
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
						<li><a class="dropdown-item d-flex align-items-center"
							href="users-profile.html"> <i class="bi bi-gear"></i> <span>Account
									Settings</span>
						</a></li>
						<li><a class="dropdown-item d-flex align-items-center"
							href="#"> <i class="bi bi-box-arrow-right"></i> <span>Sign
									Out</span>
						</a></li>
					</ul>
					<!-- End Profile Dropdown Items -->
				</div>
			</div>
		</nav>
		<%@ include file="_usersidebar.jsp"%>
		<div style="background-color: #f1f2f6" class=content>

			<div class="pagetitle">
				<h1>Profile</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="">Home</a></li>
						<li class="breadcrumb-item">Users</li>
						<li class="breadcrumb-item active">Profile</li>
					</ol>
				</nav>
			</div>
			<!-- End Page Title -->

			<section class="section profile">
				<div class="row">

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
											data-bs-target="#profile-edit">Edit Profile</button>
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
										<h5 class="card-title">About</h5>
										<%--<%try{
              if(us.getAbout()==null){
            	  %>--%>
										<p class="small fst-italic" style="color: red">**Please
											Complete Your Profile</p>
										<%--<% 
              }else{
            	  %>--%>
										<p class="small fst-italic">
											<%--<%=us.getAbout() %>--%>
										</p>
										<%--<% 
              }}catch(Exception e){
            	  e.printStackTrace();
              }
              %>--%>



										<h5 class="card-title">Profile Details</h5>

										<div class="row px-1">
											<div class="col-lg-3 col-md-4 label ">Full Name</div>
											<%--<%try{
              if(us.getFirst_name()==null){
            	  %>--%>
											<div class="col-lg-9 col-md-8 small fst-italic"
												style="color: red">**Please Complete Your Profile</div>
											<%--<% 
              }else{
            	  %>--%>
											<div class="col-lg-9 col-md-8">
												<%--<%=us.getFirst_name() %> <%=us.getMiddle_name() %> <%=us.getLast_name() %>--%>
											</div>
											<%--<% 
              }}catch(Exception e){
            	  e.printStackTrace();
              }
             %>--%>
										</div>

										<div class="row px-1">
											<div class="col-lg-3 col-md-3 label">Gender</div>
											<%--<%try{
              if(us.getGender()==null){
            	  %>--%>
											<div class="col-lg-3 col-md-3 small fst-italic"
												style="color: red">**Incomplete</div>
											<%--<% 
              }else{
            	  %>--%>
											<div class="col-lg-3 col-md-3">
												<%--<%=us.getGender() %>--%>
											</div>
											<%--<% 
              }}catch(Exception e){
            	  e.printStackTrace();
              }
              %>--%>
											<div class="row">
												<div class="col-lg-3 col-md-3 label">DoB</div>
												<%--<%try{
              if(us.getDob()==null){
            	  %>--%>
												<div class="col-lg-3 col-md-8 small fst-italic"
													style="color: red">**Incomplete</div>
												<%--<% 
              }else{
            	  %>--%>
												<div class="col-lg-3 col-md-8">
													<%--<%=us.getDob() %>--%>
												</div>
												<%--<% 
              }}catch(Exception e){
            	  e.printStackTrace();
              }
              %>--%>
											</div>
										</div>

										<div class="row px-1">
											<div class="col-lg-3 col-md-4 label">Phone No</div>
											<div class="col-lg-9 col-md-8">
												<%--<%=us.getPhon_no() %>--%>
											</div>
										</div>

										<div class="row px-1">
											<div class="col-lg-3 col-md-4 label">Email-Id</div>
											<div class="col-lg-9 col-md-8">
												<%--<%=us.getEmail_id() %>--%>
											</div>
										</div>

										<div class="row px-1">
											<div class="col-lg-3 col-md-4 label">UserName</div>
											<div class="col-lg-9 col-md-8">
												<%--<%=us.getUsername() %>--%>
											</div>
										</div>

									</div>

									<div class="tab-pane fade profile-edit pt-3" id="profile-edit">

										<!-- Profile Edit Form -->
										<form action="../PersonalProfileController" method="post"
											enctype='multipart/form-data'>


											<div class="row mb-3">
												<label for="fullName"
													class="col-md-4 col-lg-3 col-form-label">First Name</label>
												<div class="col-md-8 col-lg-9">
													<input name="fname" type="text" class="form-control"
														id="fullName" value="<%--<%=us.getFirst_name() %>--%>">
												</div>
											</div>
											<div class="row mb-3">
												<label for="fullName"
													class="col-md-4 col-lg-3 col-form-label">Middle
													Name</label>
												<div class="col-md-8 col-lg-9">
													<input name="mname" type="text" class="form-control"
														id="fullName" value="<%--<%=us.getMiddle_name() %>--%>">
												</div>
											</div>
											<div class="row mb-3">
												<label for="fullName"
													class="col-md-4 col-lg-3 col-form-label">Last Name</label>
												<div class="col-md-8 col-lg-9">
													<input name="lname" type="text" class="form-control"
														id="fullName" value="<%--<%=us.getLast_name()%>--%>">
												</div>
											</div>

											<div class="row mb-3">
												<label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
												<div class="col-md-8 col-lg-9">
													<textarea name="about" class="form-control" id="about"
														style="height: 100px"><%--<%=us.getAbout() %>--%></textarea>
												</div>
											</div>

											<div class="row mb-3">
												<label for="inputDate"
													class="col-md-4 col-lg-3 col-form-label">DoB</label>
												<div class="col-md-8 col-lg-9">
													<input name="dob" type="date"
														value="<%--<%=us.getDob() %>--%>" class="form-control">
												</div>
											</div>

											<div class="row mb-3">
												<label class="col-md-4 col-lg-3 col-form-label">Gender</label>
												<div class="col-md-8 col-lg-9">
													<select name="gender" class="form-select"
														aria-label="Default select example">
														<option value="Male" selected>Male</option>
														<option value="Female">Female</option>
														<option value="Other">Other</option>

													</select>
												</div>
											</div>


											

											<div class="row mb-3">
												<label for="Facebook"
													class="col-md-4 col-lg-3 col-form-label">LinkedIn
													Profile</label>
												<div class="col-md-8 col-lg-9">
													<input name="linkedin" type="url" class="form-control"
														id="Facebook" value="<%--<%=us.getLinkedin_url() %>--%>">
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
		</div>
	</div>


</body>
</html>