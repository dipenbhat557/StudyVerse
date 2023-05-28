<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.StudyVerseEntities.*"%>
<%@page import="com.StudyVerseDao.*"%>
<%@ page import="com.StudyVerseHelper.*"%>
<%@ page import="java.util.*"%>

<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("LoginPage.jsp");
	return;
}

CoursesDao cDao = new CoursesDao(ConnectionProvider.getConnection());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Student Profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="css/profile.css" />
</head>
<body style="background-image: url(img/bgimg3.jpg);">
	<header>
		<nav>
			<div class="logo">
				<a href="ContactUs.jsp">StudyVerse</a>
			</div>
			<ul>
				<li><a href="StudentProfile.jsp">COURSES</a></li>
				<li><a href="StudentGrades.jsp">GRADES</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
				<li><a href="ProfilePage.jsp"><%=user.getName()%>
				</a></li>
			</ul>
		</nav>
	</header>
	<section class="hero">
		<section class="overview">
			<div class="overview-contents">
				<h2>COURSE : CSE - AI</h2>
				<br />
				<h3>
					<span class="hero-span"> PSO1 :</span>Gain knowledge of fundamental
					concepts, design strategies, advanced technical architecture,
					progress infrastructural requirements, services, deployment models,
					tools, and techniques. <br /> <br /> <span class="hero-span">PSO2
						:</span> Augment curriculum with a pragmatic approach through projects,
					knowledge exchange forums, and sessions by professionals.
					
				</h3>
			</div>
			<br />
			<div class="contents">
				<%
				ArrayList<Courses> courses = cDao.getCoursesByBranch(user.getBranch());
				for (Courses course : courses) {
				%>
				<div class="items">
					<a href="ShowCoursesStudent.jsp"> <img src="img/img1.jpg"
						style="height: 100%; width: 100%; border-radius: 50%" />
						<p><%=course.getName() %></p>
					</a>
				</div>
				<%
				}
				%>
			</div>
		</section>
	</section>
</body>
</html>