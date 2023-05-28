<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="com.StudyVerseEntities.*" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.login {
	position: relative;
	left: 40%
}

.login-box {
	/* position: absolute;
    top: 10vh;
    left: 60vw; */
	background-color: #fff;
	padding: 20px;
	margin: 50px auto;
	width: 30vw;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
	border-radius: 24px;
	height: 50vh;
}

h2 {
	display: flex;
	justify-items: center;
	align-items: center;
	text-align: center;
	margin-bottom: 20px;
	margin-right: 20vw;
}

form label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

form input[type="email"], form input[type="password"] {
	display: block;
	width: 90%;
	padding: 10px;
	margin-bottom: 20px;
	border: 2px solid #ccc;
	border-radius: 4px;
}

.button {
	display: flex;
	justify-content: center;
}

button[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	/* margin-left: 60px; */
	padding: 10px 30px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #3e8e41;
}

p {
	text-align: center;
	margin-top: 20px;
}

a {
	color: #4CAF50;
	text-decoration: none;
}

.githublogo {
	/* margin-right: 6px; */
	
}

.logos {
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 15px;
}
</style>

</head>
<body>


	<div class="login-box">
		<div class="login">
			<h2>Login</h2>
		</div>
		<%
		Message message = (Message) session.getAttribute("Message");
		if (message != null) {
		%>
		<div class="<%=message.getType()%>"><%=message.getContent()%></div>
		<%
		session.removeAttribute("Message");
		}
		%>
		<form action="LoginServlet">
			<label for="email">Email</label> <input type="email" name="email"
				id="email" required placeholder="Enter the email" /> <label
				for="password">Password </label> <input type="password"
				placeholder="Enter the Password" name="password" id="password"
				required />
			<div class="button">
				<button type="submit">Login</button>
				&nbsp &nbsp &nbsp
				<button>
					<a href="index.jsp">Home</a>
				</button>
			</div>
		</form>
		<p>
			Don't have an account? <a href="StudentRegister.jsp">Sign up</a>
		</p>
	</div>

</body>
</html>