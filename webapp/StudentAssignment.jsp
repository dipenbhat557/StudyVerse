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
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Student Assignment page</title>
<link rel="stylesheet" href="css/StudentAssignment.css" />
</head>
<body style="background-image: url(img/sassignbg.jpg);">
	<header>
		<nav>
			<div class="logo">
				<a href="ContactUs.jsp">StudyVerse</a>
			</div>
			<ul>
				<li><a href="StudentProfile.jsp">COURSES</a></li>
				<li><a href="ProfilePage.jsp">PROFILE</a></li>
				<li><a href="StudentGrades.jsp">GRADES</a></li>
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
				<h2>Assignment 1 : "Data Structures and Algorithms"</h2>
				<h2>Que : Write a program in java that deals wiht ...</h2>
				<input type="file" />
				<button>Submit</button>
			</div>
			<div class="assignment1">
				<h2>Assignment 2 : "Java Programming"</h2>
				<h2>Que : Write a program in java that deals wiht ...</h2>
				<input type="file" />
				<button>Submit</button>
			</div>
		</div>
		<!-- //second div  -->
		<div class="contents">
			<div class="assignment1">
				<h2>Assignment 3: "Introduction to Objects"</h2>
				<h2>Que : Write a program in java that deals with and this is
					what nit included in the syllybus</h2>
				<input type="file" />
				<button>Submit</button>
			</div>
			<div class="assignment1">
				<h2>Assignment 4 : "Object Oriented Programming"</h2>
				<h2>Que : Write a program in java that deals wiht ...</h2>
				<input type="file" />
				<button>Submit</button>
			</div>
		</div>
	</section>

</body>
</html>