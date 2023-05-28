<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
	integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e"
	crossorigin="anonymous">
<!--Link for bootstrap icon-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
.logo:hover {
	font-size: 28px;
}

.logo a {
	color: white;
	text-decoration: none;
}

nav {
	background-color: black;
	color: white;
	padding: 15px;
	display: flex;
	justify-content: space-between;
}

nav ul {
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	gap: 25px;
	padding-right: 25px;
}

nav ul li {
	text-decoration: none;
	text-align: center;
	list-style-type: none;
}

nav ul li a {
	font-size: 20px;
	text-decoration: none;
	color: rgb(247, 245, 245);
	transition: 0.5s ease-in-out;
}

nav ul li a:hover {
	font-size: 18px;
}
</style>
</head>

<body>

	<header>
		<nav>
			<div class="logo">
				<a href="ContactUs.jsp">StudyVerse</a>
			</div>

			<ul>
				<li><a href="index.jsp">HOME</a></li>
				</a>
				</li>
				<li><a href="StudentProfile.jsp">COURSES</a></li>
				<li><a href="StudentGrades.jsp">GRADES</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
				</a>
				</li>
			</ul>
		</nav>
	</header>
	<section id="learn" class="p-t">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-md p-5">
					<h2>Learn The Fundamental</h2>
					<p class="lead"><big>“Education is the passport to the future, for
						tomorrow belongs to those who prepare for it today.”</big></p>
					<div class="container">
						<div class="row">
							<div class="col">
								<a href="LoginPage.jsp" class="btn btn-warning me-3 mt-3">
									Log in </a>
							</div>
							<div class="col">
								<div class="dropdown">
									<button type="button"
										class="btn btn-warning dropdown-toggle mt-3"
										data-bs-toggle="dropdown">Sign up</button>
									<ul class="dropdown-menu">
										<li><a class="dropdown-item" href="TeacherRegister.jsp">Sign
												up as Teacher</a></li>
										<li><a class="dropdown-item" href="StudentRegister.jsp">Sign
												up as Student</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="col-md">
					<img src="img/indexbg.jpg" alt="frontend languages"
						class="img-fluid w-100">
				</div>
			</div>
		</div>
	</section>


</body>
</html>