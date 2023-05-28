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
<title>Spot Quiz Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="spotQuiz.css">
</head>
<body style="background-image: url(img/quiz.avif);">

	<header>
		<nav>
			<div class="logo">
				<a href="#">StudyVerse</a>
			</div>
			<ul>
				<li><a href="TeacherProfile.jsp">COURSES</a></li>
				<li><a href="TeacherProfile.jsp">PROFILE</a></li>
				<li><a href="addSpotQuiz.jsp">ADD QUIZ</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
			</ul>
		</nav>
	</header>

	<main>
		<div class="quiz-bar">
			<h1>Spot Quiz</h1>
		</div>

		<br>

		<div class="container">
			<div class="mod1">
				<a href="module1.jsp"><h2>Module 1 MCQs</h2></a>
			</div>
			<div class="mod2">
				<a href="module1.jsp"><h2>Module 2 MCQs</h2></a>
			</div>
			<div class="mod3">
				<a href="module1.jsp"><h2>Module 3 MCQs</h2></a>
			</div>
			<div class="mod4">
				<a href="module1.jsp"><h2>Module 4 MCQs</h2></a>
			</div>
			<div class="mod5">
				<a href="module1.jsp"><h2>Module 5 MCQs</h2></a>
			</div>
			<div class="add">
				<a href="addSpotQuiz.jsp"><h2>Add Spot Quiz +</h2></a>
			</div>
		</div>
	</main>
</body>
</html>