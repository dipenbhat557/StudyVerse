<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.StudyVerseEntities.*" %>
    
    <%
    User user = (User)session.getAttribute("currentUser");
    if(user==null){
    	response.sendRedirect("LoginPage.jsp");
    	return;
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Profile Page</title>
    <link rel="stylesheet" href="css/Profilepage.css" />
</head>
<body>
    <header>
      <nav>
        <div class="logo"><a href="ContactUs.jsp">StudyVerse</a></div>
        <ul>
          <li><a href="TeacherProfile.jsp">COURSES</a></li>
          <li><a href="ProfilePage.jsp">PROFILE</a></li>
          <li><a href="TeacherGrades.jsp">GRADES</a></li>
          <li><a href="Aboutus.jsp">ABOUT US</a></li>
        </ul>
      </nav>
    </header>
    <div class="all">
      <div class="contant">
        <div class="pic"><img src="StudyVersePics/default.png"  height="150px" ></div>
        <div class="name">
          <div id="profile">
            <p><u>Student's Profile</u></p>
          </div>
          <div class="name1">
            <p>Name:Kiran Sharma</p>
          </div>
          <br />
          <div class="college">
            <p>College:Jain University</p>
          </div>
          <br />
          <div class="male">
            <p>Gender:Male</p>
          </div>
          <br />
          <div class="usn">
            <p>USN:22BTRCN143</p>
          </div>
          <br />
          <div class="program">
            <p>Program:Bachelor</p>
          </div>
          <br />
          <div class="stream">
            <p>Steam:CSE</p>
          </div>
          <br />
          <div class="enrollment">
            <p>Enrollment Year:2022</p>
          </div>
          <br />
          <div class="email">
            <p>Email:paudelkiran.np@gmail.com</p>
          </div>
          <br />
          <div class="phone">
            <p>Phone No:9036756033</p>
          </div>
          <br />
          <div class="sex">
            <p>Sex:male</p>
          </div>
          <br />
          <div class="dov">
            <p>D.O.B:09-10-2002</p>
          </div>
          <br />
          <div class="nationality">
            <p>Nationality:Nepali</p>
          </div>
          <br />
          <div class="current">
            <p>Current Address:Bangalore,Karnataka</p>
          </div>
          <br />
          <div class="permanent">
            <p>Permanent Address:Nepal,Rupandehi</p>
          </div>
          <br />
          <div>
          <a href="LogoutServlet"><button style="align:center; padding:4px;">Log Out</button></a>
          </div>
        </div>
      </div>
    </div>
    <footer>
      <section class="address">
        <h4>Kanakapura, Jakkasandra Post</h4>
        <h4>Bangalore, Karnataka</h4>
      </section>

      <section class="contact">
        <h4>Phone: <a href="tel:+919223837272">+91 9223837272</a></h4>
        <h4>
          Mail: <a href="mailto: contact@xyz.com">contact@studyverse.com</a>
        </h4>
      </section>

      <hr />

      <p>Copyright &copy; 2023 StudyVerse. All rights reserved</p>
    </footer>
</body>
</html>