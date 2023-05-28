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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/TeacherGrades.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Teacher Grades Page</title>
</head>
<body>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grades</title>
    <link rel="stylesheet" href="grade.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>

    <header>
        <nav>
          <div class="logo"><a href="#">StudyVerse</a></div>
          <ul>
            <li><a href="TeacherProfile.jsp">COURSES</a></li>
              <li><a href="TeacherProfile.jsp">PROFILE</a></li>
              <li><a href="TeacherGrades.jsp">GRADES</a></li>
              <li><a href="AboutUs.jsp">ABOUT US</a></li>
          </ul>
        </nav>
    </header>

    <main>
    <div class="course">
        <h1>Course Grades</h1>
    </div>

    <hr>
    <!-- <div class="grade-bar">
        <div class="name">
            <h2>Abhinaya Panthi</h2>
        </div>
        <div class="grd">
            <h2>Overall Grade: &nbsp;</h2>
            <h2>A+</h2>
        </div>
        </div>
    </div> -->

    <div class="container">
    <div class="main-cont">
        <h4>Student Name</h4>
        <h4>Grade</h4>
        <h4>Feedback</h4>
    </div>
    <hr>
    <div class="cont1">
        <h4>Abhinaya Panthi</h4>
        <h4>A</h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>
    <div class="cont1">
        <h4>Aakash Subedi</h4>
        <h4><A></A></h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>
    <div class="cont1">
        <h4>Dipendra Bhatta</h4>
        <h4>A+</h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>
    <div class="cont1">
        <h4>Kiran Poudel</h4>
        <h4>A</h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>
    <div class="cont1">
        <h4>Sargam Poudel</h4>
        <h4>F</h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>
    <div class="cont1">
        <h4>Pawan Pandey</h4>
        <h4>A</h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>
    <div class="cont1">
        <h4>Aavash Neupane</h4>
        <h4>B</h4>
        <h4><i class="material-icons" style="font-size:25px">feedback</i></h4>
    </div>    
    </div>
    </main>

    <footer>
        <section class="address">
            <h4>Kanakapura, Jakkasandra Post</h4>
            <h4>Bangalore, Karnataka</h4>  
        </section>

        <section class="contact">
            <h4>Phone: <a href="tel:+919223837272">+91 9223837272</a></h4>
            <h4>Mail: <a href="mailto: contact@xyz.com">contact@studyverse.com</a></h4>

        </section>

        <hr>

        <p>Copyright &copy; 2023 StudyVerse. All rights reserved</p>
    </footer>


</body>
</html>