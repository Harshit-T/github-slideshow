<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User-Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
	<section
		class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
		<div class="container">
			<div class="row justify-content-center">
				<div
					class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

					<div class="d-flex justify-content-center py-4">
						<h2 class="logo d-flex align-items-center w-auto">
							<img src="img/logo.png" alt=""> <span
								class="d-none d-lg-block logo d-flex align-items-center w-auto">CareerHub</span>
						</h2>
					</div>
					<!-- End Logo -->

					<div class="card mb-3">

						<div class="card-body">

							<div class="pt-4 pb-2">
								<h5 class="card-title text-center pb-0 fs-4">Login to Your
									Account</h5>
								<p class="text-center small">Enter your email & password to
									login</p>
							</div>
							<c:if test="${not empty succMsg }">
								<h4 class="text-center text-danger">${succMsg}</h4>
								<c:remove var="succ Msg" />
							</c:if>

							<form action="../adminlogin" method="post"
								class="row g-3 needs-validation" novalidate>

								<div class="col-12">
									<label for="yourEmail" class="form-label">Your Email</label> <input
										type="email" name="email" class="form-control" id="yourEmail"
										required>
									<div class="invalid-feedback">Please enter a valid Email
										adddress!</div>
								</div>

								<div class="col-12">
									<label for="yourPassword" class="form-label">Password</label> <input
										type="password" name="password" class="form-control"
										id="yourPassword" required>
									<div class="invalid-feedback">Please enter your password!</div>
								</div>

								<div class="col-12">
									<button class="btn btn-primary w-100" type="submit">Login</button>
								</div>
								<div class="col-12">
									<p class="small mb-0">
										Don't have account? <a href="user-register.jsp">Create an
											account</a>
									</p>
								</div>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
</body>
</html>