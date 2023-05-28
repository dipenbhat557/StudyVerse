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
<title>Feedback Page</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.feedback {
	text-align: center;
	height: 60%;
	padding: 20px;
	background-color: whitesmoke;
	font-size: 30px;
	margin-bottom: 40px;
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
    background-color: black;
    padding: 15px;
    display: flex;
    justify-content: space-between;
}
nav ul {
    padding-right: 25px;
    display: flex;
    justify-content: space-between;
    align-items: center;
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


input[type="text"] {
	padding: 13px;
	border: 1px solid lightskyblue;
	border-radius: 7px;
	border-width: 15%;
	margin-top: 15px;
}

input[type="date"] {
	padding: 13px;
	border: 1px solid lightskyblue;
	border-radius: 7px;
	border-width: 25%;
}

textarea {
	padding: 13px;
	border: 1px solid lightskyblue;
	border-radius: 7px;
	width: 20%;
}

#date {
	font-size: 17px;
	width: 15%;
}

#student {
	font-size: 17px;
}

#upto {
	font-size: 17px;
	text-align: center;
}

.info2 {
	display: flex;
	flex-direction: row;
}

.info2 input[type="text"] {
	padding: 13px;
	border: 1px solid lightskyblue;
	border-radius: 7px;
	border-width: 15%;
}

.inclass {
	text-align: center;
	height: 10%;
	padding: 10px;
	width: 100%;
	background-color: lightblue;
}

.grade {
	text-align: center;
	font-size: 17px;
}

.email {
	font-size: 17px;
}

.info3 {
	display: flex;
	flex-direction: row;
}

.course {
	text-align: center;
	font-size: 17px;
}

.ques {
	font-size: 20px;
	margin-left: 13px;
}

.ab {
	text-align: center;
	height: 10%;
	padding: 10px;
	width: 100%;
	background-color: lightblue;
}

.ques1 {
	font-size: 20px;
	margin-left: 13px;
}

.abc {
	text-align: center;
	height: 10%;
	padding: 10px;
	width: 100%;
	background-color: lightblue;
}

#abcd {
	font-size: 17px;
}

input[type="submit"] {
	padding: 10px;
	border: 1px solid whitesmoke;
	border-radius: 7px;
	size: 16px;
	margin-top: 30px;
	margin-bottom: 60px;
	margin-right: 40px;
	color:green;
}

#login1 {
	text-align: center;
}

.courf {
	margin-left: 13px;
}
</style>
</head>
<body>
	<header>
	<nav>
        <div class="logo"><a href="ContactUs.jsp">StudyVerse</a></div>
        <ul>
          <li><a href="TeacherProfile.jsp">COURSES</a></li>
          <li><a href="ProfilePage.jsp">PROFILE</a></li>
          <li><a href="TeacherGrades.jsp">GRADES</a></li>
          <li><a href="AboutUs.jsp">ABOUT US</a></li>
        </ul>
      </nav>
		<div class="feedback">
			<h1>Feedback Form</h1>
		</div>
	</header>
	<form action="#">
	<div class="inclass">
		<h1>In Class Activity</h1>
	</div>
	<br />
	<br />
	<div class="ques">
		<span>The mentor/Teacher is punctual in class</span> <br /> <label
			for="id1"> <input type="radio" value="1" name="group"
			id="id1" />1&nbsp;&nbsp;&nbsp;
		</label> <label for="id2"> <input type="radio" value="2" name="group"
			id="id2" />2&nbsp;&nbsp;&nbsp;
		</label> <label for="id3"> <input type="radio" value="3" name="group"
			id="id3" />3&nbsp;&nbsp;&nbsp;
		</label> <label for="id4"> <input type="radio" value="4" name="group"
			id="id4" />4&nbsp;&nbsp;&nbsp;
		</label> <label for="id5"> <input type="radio" value="5" name="group"
			id="id5" />5&nbsp;&nbsp;&nbsp;
		</label> <br>
		<br> <span>The teacher teaches all the required contain</span> <br />
		<label for="id1"> <input type="radio" value="1" name="group"
			id="id1" />1&nbsp;&nbsp;&nbsp;
		</label> <label for="id2"> <input type="radio" value="2" name="group"
			id="id2" />2&nbsp;&nbsp;&nbsp;
		</label> <label for="id3"> <input type="radio" value="3" name="group"
			id="id3" />3&nbsp;&nbsp;&nbsp;
		</label> <label for="id4"> <input type="radio" value="4" name="group"
			id="id4" />4&nbsp;&nbsp;&nbsp;
		</label> <label for="id5"> <input type="radio" value="5" name="group"
			id="id5" />5&nbsp;&nbsp;&nbsp; <br>
		<br>
		</label> <span>The Teacher conduct extra Activity?</span> <br> <label
			for="id1"> <input type="radio" value="1" name="group"
			id="id1" />1&nbsp;&nbsp;&nbsp;
		</label> <label for="id2"> <input type="radio" value="2" name="group"
			id="id2" />2&nbsp;&nbsp;&nbsp;
		</label> <label for="id3"> <input type="radio" value="3" name="group"
			id="id3" />3&nbsp;&nbsp;&nbsp;
		</label> <label for="id4"> <input type="radio" value="4" name="group"
			id="id4" />4&nbsp;&nbsp;&nbsp;
		</label> <label for="id5"> <input type="radio" value="5" name="group"
			id="id5" />5&nbsp;&nbsp;&nbsp; <br>
		<br> <span>The teacher interact with student properly</span> <br />
			<label for="id1"> <input type="radio" value="1" name="group"
				id="id1" />1&nbsp;&nbsp;&nbsp;
		</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
		</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
		</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
		</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp;
		</label> <br>
		<br> <span>The mentor/Teacher is punctual in class</span> <br />
			<label for="id1"> <input type="radio" value="1" name="group"
				id="id1" />1&nbsp;&nbsp;&nbsp;
		</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
		</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
		</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
		</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp;
		</label>
	</div>
	<div class="courf">
		<div class="ab">
			<h1>About Course</h1>
		</div>
		<br />
		<br />
		<div class="ques1">
			<span>Course contain all the required modules</span> <br /> <label
				for="id1"> <input type="radio" value="1" name="group"
				id="id1" />1&nbsp;&nbsp;&nbsp;
			</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
			</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
			</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
			</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp; <br>
			<br>
			</label> <span>The course contain helps to improve the level</span> <br /> <label
				for="id1"> <input type="radio" value="1" name="group"
				id="id1" />1&nbsp;&nbsp;&nbsp;
			</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
			</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
			</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
			</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp;
			</label> <br>
			<br> </label> <span>Do course contain unwanted modules?</span> <br /> <label
				for="id1"> <input type="radio" value="1" name="group"
				id="id1" />1&nbsp;&nbsp;&nbsp;
			</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
			</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
			</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
			</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp;
			</label> <br>
			<br> </label> <span>The Syllabus in the course are hard</span> <br /> <label
				for="id1"> <input type="radio" value="1" name="group"
				id="id1" />1&nbsp;&nbsp;&nbsp;
			</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
			</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
			</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
			</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp;
			</label> <br>
			<br> </label> <span>The module can be Easily accessed through
				LMS?</span> <br /> <label for="id1"> <input type="radio" value="1"
				name="group" id="id1" />1&nbsp;&nbsp;&nbsp;
			</label> <label for="id2"> <input type="radio" value="2" name="group"
				id="id2" />2&nbsp;&nbsp;&nbsp;
			</label> <label for="id3"> <input type="radio" value="3" name="group"
				id="id3" />3&nbsp;&nbsp;&nbsp;
			</label> <label for="id4"> <input type="radio" value="4" name="group"
				id="id4" />4&nbsp;&nbsp;&nbsp;
			</label> <label for="id5"> <input type="radio" value="5" name="group"
				id="id5" />5&nbsp;&nbsp;&nbsp; <br>
			<br>
			</label>
		</div>
		<div class="courf1">
			<div class="abc">
				<h1>For Improvement</h1>
				<br>
			</div>
			<br />
			<br />
			<div id="abcd">What you like really like in this college</div>
			<textarea name="feedback" id="feedback" placeholder="">
        </textarea>
			<br>
			<br>
			<div id="abcdef">What Should you like to change about this
				collage</div>
			<textarea name="feedback" id="feedback" placeholder="">
            </textarea>
			</label> <br>
			<br>
			<div id="login1">
				<input type="submit" value="Submit" name="submit" id="submit" /> <br />
			</div>
		</div>
		</form>
</body>
</html>