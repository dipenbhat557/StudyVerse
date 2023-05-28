<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.StudyVerseEntities.*" %>
    
    <%
    User user =(User)session.getAttribute("currentUser");
    if(user==null){
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
    <link rel="stylesheet" href="css/showCourses.css" />
<title>Show Courses</title>
</head>
<body>

    <header>
      
        <nav>
            <div class="logo"><a href="index.jsp">StudyVerse</a></div>
            <ul>
              <li><a href="TeacherProfile.jsp">COURSES</a></li>
              <li><a href="TeacherProfile.jsp">PROFILE</a></li>
              <li><a href="TeacherGrades.jsp">GRADES</a></li>
              <li><a href="AboutUs.jsp">ABOUT US</a></li>
            </ul>
          </nav>
    </header>
    <section class="hero">
      <section class="entry">
        <div class="left">
          <ul>
            <li><a href="TeacherAssignment.jsp"> Assignment</a></li>
            <li><a href="spotQuiz.jsp"> Spot Quiz</a></li>
            <li><a href="Syllabus.jsp"> Course Syllabus</a></li>
            <li><a href="Feedback.jsp"> Feedback</a></li>
          </ul>
        </div>
        <div class="right">
          <img src="img/showcoursebg.jpg" />
        </div>
      </section>
    </section>
 

</body>
</html>