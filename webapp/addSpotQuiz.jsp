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
<title>Add Spot Quiz Page</title>
<link rel="stylesheet" href="css/addQuiz.css">
</head>
<body>

	<header>
		<nav>
			<div class="logo">
				<a href="ContactUs.jsp">StudyVerse</a>
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
		<h1>Enter your Questions!</h1>
		<form action="">
			<div class="container">
				<fieldset>
					<label for="question"> Question 1 </label> <br>
					<textarea name="title" id="message" cols="50" rows="2"
						placeholder="Type your question here"></textarea>
					<br> <input type="radio" name="option" id="option"> <label
						for="option"><textarea name="option1" id="option1"
							cols="50" rows="2" placeholder="Option 1"></textarea></label> <br> <input
						type="radio" name="option" id="option"> <label
						for="option"><textarea name="option2" id="option2"
							cols="50" rows="2" placeholder="Option2"></textarea></label> <br> <input
						type="radio" name="option" id="option"> <label
						for="option"><textarea name="option3" id="option3"
							cols="50" rows="2" placeholder="Option3"></textarea></label> <br> <input
						type="radio" name="option" id="option"> <label
						for="option"><textarea name="option4" id="option4"
							cols="50" rows="2" placeholder="Option 4"></textarea></label>
				</fieldset>
			</div>
			<button type="button" id="addQuestion">Add Another Question</button>
			<button type="submit">Submit</button>

			<script>
				var questionCount = 1;
				document
						.getElementById("addQuestion")
						.addEventListener(
								"click",
								function() {
									var container = document
											.querySelector(".container");
									var newFieldset = container.querySelector(
											"fieldset").cloneNode(true);
									questionCount++;
									newFieldset.querySelector("label").textContent = "Question "
											+ questionCount;
									clearInputFields(newFieldset);
									container.appendChild(newFieldset);
								});
				function clearInputFields(fieldset) {
					var inputs = fieldset
							.querySelectorAll("input[type='radio'], textarea");
					inputs.forEach(function(input) {
						if (input.tagName === "TEXTAREA") {
							input.value = "";
						} else if (input.tagName === "INPUT"
								&& input.type === "radio") {
							input.checked = false;
						}
					});
				}
			</script>

		</form>
	</main>


</body>
</html>