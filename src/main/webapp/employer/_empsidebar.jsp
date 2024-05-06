<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title></title>
<meta content="" name="description">
<meta content="" name="keywords">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
body {
	margin: 0;
	font-family: "Lato", sans-serif;
}

.sidebar {
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #ffffff;
	position: fixed;
	height: 100%;
	overflow: auto;
}

.sidebar a {
	display: block;
	color: black;
	padding: 16px;
	text-decoration: none;
}

.sidebar a.active {
	background-color: #04AA6D;
	color: white;
}

.sidebar a:hover:not(.active) {
	background-color: #edf2fb;
	color: #0077b6;
}

div.content {
	margin-left: 200px;
	padding: 1px 16px;
	height: 1000px;
}

@media screen and (max-width: 700px) {
	.sidebar {
		width: 100%;
		height: auto;
		position: relative;
	}
	.sidebar a {
		float: left;
	}
	div.content {
		margin-left: 0;
	}
}

@media screen and (max-width: 400px) {
	.sidebar a {
		text-align: center;
		float: none;
	}
}
</style>
</head>
<body>
	<div class="sidebar">
			<a class="nav-link "
				href="employer-index.jsp"> <i class="bi bi-grid"></i> <span>Dashboard</span>
			</a>
			<!-- End Dashboard Nav -->


		       <a class="nav-link collapsed"
				href="employer-profile.jsp"> <i class="bi bi-person"></i> <span>Profile</span>
			</a>
			<!-- End Profile Page Nav -->


			<a class="nav-link collapsed"
				href="job-post.jsp"> <i class="bi bi-person"></i> <span>Post
						a Job</span>
			</a>
			<!-- End Profile Page Nav -->
			<a class="nav-link collapsed"
				href="#"> <i class="bi bi-person"></i> <span>Posted
						Jobs</span>
			</a>
			<!-- End Profile Page Nav 
			<a class="nav-link collapsed"
				href="#"> <i
					class="bi bi-file-earmark-code"></i> <span>Applied
						Candidates</span>
			</a>
			<a class="nav-link collapsed"
				href="#"> <i class="bi bi-person"></i> <span>Post
						Non-It Job</span>
			</a>
			<!-- End Profile Page Nav -->
	
		</div>
</body>
</html>