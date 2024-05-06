<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.job.entity.Employer" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Post</title>
<%@ include file="empcss.jsp" %>
</head>
<body>
<div class="container-xxl b
    g-white p-0">
<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-1">
			<a href="#"
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
			</div>
		</nav>
		<!-- Navbar end -->
		<%@ include file="_empsidebar.jsp"%>
		<div style="background-color : #f1f2f6"class= content>
		 <div class="pagetitle">
      
      <nav class="py-3">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="employer-index.jsp">Home</a></li>
          <li class="breadcrumb-item">Recruiter</li>
          <li class="breadcrumb-item active">Post a Job</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
     <div class="card">
    <div class="card-body">
      <h5 class="card-title"><i class="bi bi-file-earmark-post"></i> Post a job</h5>

      <!-- Multi Columns Form -->
      <form action="../PostJob" method="post" class="row g-3">
        
        <input type="hidden" name="id" value="">
         <input type="hidden" name="name" value="">
        <div class="col-md-4">
          <label for="inputTitle" class="form-label">Job Title</label>
          <input type="text" class="form-control" id="jobTitle" name="title">
        </div>

        <div class="col-md-4">
          <label for="inputType" class="form-label">Job Type</label>
          <select id="jobType" class="form-select" name="type">
            <option selected>Select...</option>
            <option value="Full-Time">Full-Time</option>
            <option value="part-Time">Part-Time</option>
            <option value="Contract">Contract</option>
            <option value="Internship">Internship</option>
            <option value="Temporary">Temporary</option>
          </select>
        </div>
        
        <div class="col-md-4">
          <label for="inputVac" class="form-label">Vacancy</label>
          <input type="number" class="form-control" id="jobVac" name="vacancy">
        </div>
        
        <div class="col-4">
          <label for="inputLoc" class="form-label">Job Location</label>
          <input type="text" class="form-control" id="jobLoc" name="location">
        </div>


        <div class="col-md-4">
          <label for="inputSal" class="form-label">Salary</label>
          <div class="input-group mb-3">
            <input type="text" class="form-control" aria-label="Amount" name="salary">
          </div>
        </div>

        <div class="col-md-4">
          <label for="inputDate" class="form-label">Application Deadline</label>
          <input type="date" class="form-control" id="inputDead" name="deadline">
        </div>
        
         <div class="col-md-8">
          <label for="inputTitle" class="form-label">Skills and Qualification</label>
          <input type="text" class="form-control" id="jobTitle" name="skills">
        </div>
        
        <div class="col-md-6">
          <label for="inputDesc" class="form-label">Job Description</label>
          <textarea class="form-control" id="jobDesc" style="height: 100px;" name="desc"></textarea>
        </div>
        
         <div class="col-md-6">
          <label for="inputSkills" class="form-label">Responsibilities</label>
          <textarea class="form-control" id="skills" style="height: 100px;" name="res"></textarea>
        </div>
        
         
        
        <div class="col-12">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
              Check me out
            </label>
          </div>
        </div>
        <div class="text-center">
          <button type="submit" class="btn btn-primary">Submit</button>
          <button type="reset" class="btn btn-secondary">Reset</button>
        </div>
      </form><!-- End Multi Columns Form -->

    </div>
  </div>
     </section>
  </div>
		</div>
</body>
</html>