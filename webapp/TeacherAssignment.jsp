<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.StudyVerseEntities.*"%>

<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("LoginPage.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/TeacherAssignment.css" />
<title>Teacher Assignment Page</title>
</head>
<body style="background-image: url(img/showcoursebg.jpg);">
	<header>
		<nav>
			<div class="logo">
				<a href="#">StudyVerse</a>
			</div>
			<ul>
				<li><a href="TeacherProfile.jsp">COURSES</a></li>
				<li><a href="ProfilePage.jsp">PROFILE</a></li>
				<li><a href="AddAssignment.jsp">ADD ASSIGNMENT</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
			</ul>
		</nav>
	</header>
	<section class="main">
		<div class="declare">
			<h1>Assignments</h1>
		</div>
		<div class="contents">
			<div class="assignment1">
				<h2>Task 1</h2>
				<h2>Data Structures</h2>
				<div class="question">
					<h2>Write a simple Program in c which shwos alll the input
						form the user and helps in getting the ootput....</h2>
				</div>
				<button>View Submission</button>
			</div>
			<div class="assignment1">
				<h2>Task 1</h2>
				<h2>Data Structures</h2>
				<div class="question">
					<h2>Write a simple Program in c which shwos alll the input
						form the user and helps in getting the ootput....</h2>
				</div>
				<button>View Submission</button>
			</div>
		</div>
		<!-- //second div  -->
		<div class="contents">
			<div class="assignment1">
				<h2>Task 1</h2>
				<h2>Data Structures</h2>
				<div class="question">
					<h2>Write a simple Program in c which shwos alll the input
						form the user and helps in getting the ootput....</h2>
				</div>
				<button>View Submission</button>
			</div>
			<div class="assignment1">
				<h2>Task 1</h2>
				<h2>Data Structures</h2>
				<div class="question">
					<h2>Write a simple Program in c which shwos alll the input
						form the user and helps in getting the ootput....</h2>
				</div>
				<button>View Submission</button>
			</div>
		</div>

		<div class="contents">
			<div class="assignment1">
				<img src="img/addAddignment.jpg" alt="" srcset="" />
			</div>
		</div>
	</section>
</body>
</html>