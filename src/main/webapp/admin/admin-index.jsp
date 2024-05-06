<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Index</title>
</head>
<body>
	<div class="container-xxl b
    g-white p-0">
		<c:if test="${userobj.role ne 'admin' }">
			<c:redirect url="index.jsp"></c:redirect>
		</c:if>
		<!-- Navbar Start -->
		<nav
			class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
			<a href="index.html"
				class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5">
				<h1 class="m-0">CareerHub</h1>
			</a>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-secondary" type="submit">
				  <i class="bi bi-search"></i>
				</button>
			</form>

			<button type="button" class="navbar-toggler me-4"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto p-4 p-lg-0">
					<a href="#" class="nav-item nav-link active">Home</a> <a
						href="#about" class="nav-item nav-link">About</a> <a
						href="Jobs.jsp" class="nav-item nav-link">Jobs</a><a
						href="contact.jsp" class="nav-item nav-link">Contact</a>
				</div>

				<a href="#" class="btn rounded-0 py-3 px-lg-3 d-none d-lg-block"><i class="bi bi-person-circle"></i> Admin
					
				</a>
			</div>
		</nav>
		<!-- Navbar end -->
        <%@ include file="sidebar.jsp" %>
        <div class= content>
        <div class="pagetitle py-3">
			<%
			GregorianCalendar time = new GregorianCalendar();
			int hour = time.get(Calendar.HOUR_OF_DAY);
			if (hour < 12) {
			%>
			<h3>Admin DashBoard | Good Morning , Admin</h3>
			<%
			} else if (hour >= 12 && hour < 17) {
			%>
			<h3>Admin DashBoard | Good Afternoon , Admin</h3>
			<%
			} else {
			%>
			<h3>Admin DashBoard | Good Evening , Admin</h3>
			<%
			}
			%>

			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin-index.jsp">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		</div>
	</div>
</body>
</html>