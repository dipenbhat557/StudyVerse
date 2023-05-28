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
<title>Course Syllabus page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
}

* {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
}

.logo {
	text-decoration: none;
	font-family: sans-serif;
	font-size: 25px;
	font-weight: 800;
}

.logo a {
	text-decoration: none;
	color: rgb(251, 248, 248);
	transition: 0.5s ease-in-out;
}

.logo:hover {
	font-size: 28px;
}

nav {
	width: 100vw;
	background-color: black;
	padding: 15px;
	display: flex;
	justify-content: space-between;
}

nav ul {
	padding-right: 25px;
	display: flex;
	justify-content: space-between;
	gap: 25px;
}

nav ul li {
	text-decoration: none;
	text-align: center;
	list-style-type: none;
}

nav ul li a {
	font-size: 20px;
	text-decoration: none;
	color: rgb(247, 246, 246);
	transition: 0.5s ease-in-out;
}

nav ul li a:hover {
	font-size: 18px;
}

h1 {
	text-align: center;
	color: #333;
}

.chapter {
	cursor: pointer;
	font-weight: bold;
	margin-bottom: 10px;
	color: #333;
	background-color: #fff;
	padding: 10px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.chapter:hover {
	background-color: #f2f2f2;
}

.contents {
	margin-left: 20px;
	padding-left: 10px;
	border-left: 2px solid #ccc;
	display: none;
}

.contents ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.contents li {
	margin-bottom: 5px;
}

.contents li:before {
	content: "•";
	margin-right: 5px;
	color: #333;
}

.contents li a {
	color: #333;
	text-decoration: none;
}

.contents li a:hover {
	text-decoration: underline;
}

@media screen and (max-width: 480px) {
	.contents {
		margin-left: 10px;
		padding-left: 5px;
		border-left: none;
	}
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
				<li><a href="StudentProfile.jsp">COURSES</a></li>
				<li><a href="Profilepage.jsp">PROFILE</a></li>
				<li><a href="StudentGrades.jsp">GRADES</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
			</ul>
		</nav>
	</header>

	<script>
		function toggleContents(chapterId) {
			var contents = document.getElementById(chapterId + "-contents");
			contents.style.display = contents.style.display === "none" ? "block"
					: "none";
		}
	</script>

	<h1>Python for Everyone - Syllabus</h1>
	<br />
	<br />
	<div class="chapter" onclick="toggleContents('chapter1')">
		Chapter 1: Introduction to Python</div>
	<div id="chapter1-contents" class="contents">
		<ul>
			<li>Python installation and setup</li>
			<li>Basic syntax and variables</li>
			<li>Control flow: if-else statements and loops</li>
			<li>Functions and modules</li>
		</ul>
	</div>

	<div class="chapter" onclick="toggleContents('chapter2')">
		Chapter 2: Data Types and Operations</div>
	<div id="chapter2-contents" class="contents">
		<ul>
			<li>Numeric data types: integers, floats, and complex numbers</li>
			<li>Strings and string operations</li>
			<li>Lists, tuples, and dictionaries</li>
			<li>Basic operations on data types</li>
		</ul>
	</div>

	<div class="chapter" onclick="toggleContents('chapter3')">
		Chapter 3: File Handling</div>
	<div id="chapter3-contents" class="contents">
		<ul>
			<li>Reading and writing files</li>
			<li>File modes and file objects</li>
			<li>Working with text and CSV files</li>
			<li>Exception handling</li>
		</ul>
	</div>
	<div class="chapter" onclick="toggleContents('chapter4')">
		Chapter 4: Data Structures</div>
	<div id="chapter4-contents" class="contents">
		<ul>
			<li>Arrays</li>
			<li>Linked List</li>
			<li>Stack and Queue</li>
			<li>Hash Maps</li>
		</ul>
	</div>
	<div class="chapter" onclick="toggleContents('chapter5')">
		Chapter 5: Object Oriented Programming</div>
	<div id="chapter5-contents" class="contents">
		<ul>
			<li>Arrays</li>
			<li>Linked List</li>
			<li>Stack and Queue</li>
			<li>Hash Maps</li>
		</ul>
	</div>


</body>
</html>