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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Module 1</title>
<link rel="stylesheet" href="module1.css">
</head>
<body>
	<header>
		<nav>
			<div class="logo">
				<a href="#">StudyVerse</a>
			</div>
			<ul>
				<li><a href="StudentProfile.jsp">COURSES</a></li>
				<li><a href="ProfilePage.jsp">PROFILE</a></li>
				<li><a href="StudentGrades.jsp">GRADES</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
			</ul>
		</nav>
	</header>

	<main>

		<form action="#">
			<div class="container">
				<fieldset>
					<div class="qn1">
						<h2>Which type of Programming does Python support ?</h2>
						<p>
							<input type="radio" name="question" id="question1" value="oop">
							<label for="question1">Object-oriented Programming</label>
						</p>
						<p>
							<input type="radio" name="question" id="question1" value="sp">
							<label for="question1">Structural Programming</label>
						</p>
						<p>
							<input type="radio" name="question" id="question1" value="pop">
							<label for="question1">Procedural Programming</label>
						</p>
						<p>
							<input type="radio" name="question" id="question1" value="all">
							<label for="question1">All of the above</label>
						</p>
					</div>
				</fieldset>

				<fieldset>
					<div class="qn2">
						<h2>Is Python case sensitive when dealing with identifiers ?</h2>
						<p>
							<input type="radio" name="question" id="question2" value="no">
							<label for="question2">No</label>
						</p>
						<p>
							<input type="radio" name="question" id="question2" value="yes">
							<label for="question2">Yes</label>
						</p>
						<p>
							<input type="radio" name="question" id="question2"
								value="machine"> <label for="question2">Machine
								dependent</label>
						</p>
						<p>
							<input type="radio" name="question" id="question2" value="none">
							<label for="question2">None of the above</label>
						</p>
					</div>
				</fieldset>

				<fieldset>
					<div class="qn3">
						<h2>Which of the following is the correct extension of the
							Python file ?</h2>
						<p>
							<input type="radio" name="question" id="question3" value="python">
							<label for="question3">.python</label>
						</p>
						<p>
							<input type="radio" name="question" id="question3" value="pl">
							<label for="question3">.pl</label>
						</p>
						<p>
							<input type="radio" name="question" id="question3" value="py">
							<label for="question3">.py</label>
						</p>
						<p>
							<input type="radio" name="question" id="question3" value="p">
							<label for="question3">.p</label>
						</p>
					</div>
				</fieldset>
				<fieldset>
					<div class="qn4">
						<h2>Which of the following is the correct extension of the
							Python file ?</h2>
						<p>
							<input type="radio" name="question" id="question4" value="python">
							<label for="question4">.python</label>
						</p>
						<p>
							<input type="radio" name="question" id="question4" value="pl">
							<label for="question4">.pl</label>
						</p>
						<p>
							<input type="radio" name="question" id="question4" value="py">
							<label for="question4">.py</label>
						</p>
						<p>
							<input type="radio" name="question" id="question4" value="p">
							<label for="question4">.p</label>
						</p>
					</div>
				</fieldset>

				<fieldset>
					<div class="qn5">
						<h2>Which keyword is used for function in Python language ?</h2>
						<p>
							<input type="radio" name="question" id="question5"
								value="function"> <label for="question5">function</label>
						</p>
						<p>
							<input type="radio" name="question" id="question5" value="def">
							<label for="question5">def</label>
						</p>
						<p>
							<input type="radio" name="question" id="question5" value="fun">
							<label for="question5">fun</label>
						</p>
						<p>
							<input type="radio" name="question" id="question5" value="define">
							<label for="question5">define</label>
						</p>
					</div>
				</fieldset>
				<p>
					<button type="submit" formaction="#" formmethod="post">Submit</button>
				</p>
			</div>
		</form>
	</main>


</body>
</html>