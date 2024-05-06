<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employer-login</title>
<%@ include file = "empcss.jsp" %>
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
							<img src="assets/img/logo.png" alt=""> <span
								class="d-none d-lg-block logo d-flex align-items-center w-auto">CareerHub</span>
						</h2>
					</div>
					<!-- End Logo -->

					<div class="card mb-3">

						<div class="card-body">

							<div class="pt-4 pb-2">
								<h5 class="card-title text-center pb-0 fs-4">Employer Login</h5>
								<p class="text-center small">Enter your Email & password to
									login</p>
							</div>

							<form action="../emplogin" method="post"
								class="row g-3 needs-validation" novalidate>

								<div class="col-12">
									<label for="yourUsername" class="form-label">Email</label>
									<div class="input-group has-validation">
										<span class="input-group-text" id="inputGroupPrepend">@</span>
										<input type="email" name="email" class="form-control"
											id="yourUsername" required>
										<div class="invalid-feedback">Please enter your Email.</div>
									</div>
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
										Don't have account? <a href="employer-register.jsp">Create
											an account</a>
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