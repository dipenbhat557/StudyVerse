<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Page</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
/* Basic styles */
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

form {
	background-color: #fff;
	padding: 20px;
	margin: 50px auto;
	max-width: 600px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	position: relative;
	height: 120vh;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="email"], input[type="password"], input[type="tel"],
	input[type="file"]
select, input[type="date"] {
	display: block;
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease-in-out;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

/* Advanced styles */
/* 
form:before {
    content: "";
    position: absolute;
    top: -20px;
    left: 0;
    right: 0;
    height: 20px;
    background-color: #4CAF50;
}

form:after {
    content: "";
    position: absolute;
    bottom: -20px;
    left: 0;
    right: 0;
    height: 20px;
    background-color: #4CAF50;
} */
input:focus {
	outline: none;
	border-color: #4CAF50;
	box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
}

input[type="submit"] {
	background-color: #066a0a;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease-in-out;
	position: relative;
	overflow: hidden;
}

input[type="submit"]:hover {
	background-color: #f3f5f3;
}

input[type="submit"]:before {
	content: "";
	position: absolute;
	top: 0;
	left: -100%;
	width: 100%;
	height: 100%;
	background-color: rgba(255, 255, 255, 0.2);
	transition: all 0.3s ease-in-out;
}

input[type="submit"]:hover:before {
	left: 0;
}

input[type="submit"]:after {
	content: "";
	position: absolute;
	top: 0;
	left: -100%;
	width: 100%;
	height: 100%;
	background-color: rgba(255, 255, 255, 0.2);
	transition: all 0.3s ease-in-out;
}

input[type="submit"]:hover:after {
	left: 0;
}

label {
	position: relative;
	display: inline-block;
	cursor: pointer;
	margin-right: 10px;
}

.submit {
	display: flex;
	justify-content: center;
	align-items:  center;
}

.home {
	display: flex;
	justify-content: center;
	align-items:  center;
}
</style>

</head>
<body>

	<form action="RegisterServlet" method="post" id="signup-form"
		enctype="multipart/form-data">
		<h2>Sign Up</h2>
		<label for="name">Name:</label> <input type="text" id="name"
			name="name" placeholder="Enter the name" required /> <br> <label
			for="email">Email:</label> <input type="email" id="email"
			name="email" placeholder="Enter the email" required /> <label
			for="password">Password:</label> <input type="password" id="password"
			placeholder="Enter the password" name="password" required /> <label
			for="confirm-password">Confirm Password:</label> <input
			type="password" id="confirm-password"
			placeholder="Re-enter the password" name="confirm-password" required />

		<label for="mobile">Mobile Number:</label> <input type="tel"
			id="contact-number" name="mobile" placeholder="Enter Mobile No"
			required /> <label for="gender">Gender<br> <input
			type="radio" name="gender" value="male"> Male <br> <input
			type="radio" name="gender" value="female"> Female <br> <input
			type="radio" name="gender" value="other"> Other
		</label><br> <label for="dob">Date of Birth:</label> <input type="date"
			id="dob" name="dob" required /> <label for="photo">Photo:</label> <input
			type="file" id="photo" name="profile" required /><br> <br>


		<label for="Course">Course:</label><br> <select id="Course"
			name="Course" required>
			<option value="" disabled selected>Select Your Course</option>
				<option value="Btech">B-Tech</option>
				<option value="BBA">BBA</option>
				<option value="MBA">MBA</option>
				<option value="Mtech">M-Tech</option>


		</select><br> <br>
		<div id="Branch">
			<label for="Branch">Branch:</label><br>
		</div>

		<div id="Branchbtech">
			<select name="Branch">
				<option value="" disabled selected>Select Your Branch</option>
				<option value="CSE-Gen">CSE-gen</option>
				<option value="CSE-SE">CSE-SE</option>
				<option value="CSE-DS">CSE-DS</option>
				<option value="CSE-AI">CSE-AI</option>
			</select>
		</div>

		<div id="Branchbba">
			<select name="Branch">
				<option value="" disabled selected>Select Your Branch</option>
				<option value="Account">Accounts</option>
				<option value="Economics">Economics</option>
				<option value="Mathematics">Mathematics</option>
				<option value="Computer">Computer</option>
			</select>
		</div>

		<div id="Branchmba">
			<select name="Branch">
				<option value="" disabled selected>Select Your Branch</option>
				<option value="Btech">Accounts</option>
				<option value="BBA">Economics</option>
				<option value="MBA">Mathematics</option>
				<option value="Mtech">Computer</option>
			</select>
		</div>

		<div id="Branchmtech">
			<select name="Branch">
				<option value="" disabled selected>Select Your Branch</option>
				<option value="CSE-gen">CSE-Gen</option>
				<option value="CSE-SE">CSE-SE</option>
				<option value="CSE-DS">CSE-DS</option>
				<option value="CSE-AI">CSE-AI</option>
			</select><br>
		</div>

		<div class="container text-center" id="loader" style="display: none;">
			<span class="fa fa-refresh fa-spin fa-3x"></span>
			<h4>Please wait...</h4>
		</div>

		<div class="submit">
			<input type="submit" value="Sign Up" /> &nbsp &nbsp &nbsp
			<button onclick="redirectToIndexPage(event)">Home</button>
		</div>
	</form>


	<script src="https://code.jquery.com/jquery-3.6.4.min.js"
		integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

	<script>
	$(document).ready(function(){
		console.log("loaded.."),
		
		$('#signup-form').on('submit',function(event){
			event.preventDefault();
			
			let form = new FormData(this);
			$('#submit.btn').hide();
			$('#loader').show();
			
			$.ajax({
				url:"RegisterServlet",
				type:'POST',
				data:form,
				success: function(data,textStatus,jqXHR){
					console.log(data)
					$('#submit.btn').show();
					$('#loader').hide();
					
					if(data.trim()=='Done'){
						swal("Registered Successfully...Redirecting to login page")
						.then((value) => {
						  window.location="LoginPage.jsp"
						});
					}
					else{
						swal(data);
					}
				},
				error: function(jqXHR, textStatus, errorThrown){
					$('#submit.btn').show();
					$('#loader').hide();
					swal("Something went wrong..");
				},
				processData :false,
				contentType:false
			});
		});
	});
	
    </script>

	<script>
	$(document).ready(function() {
		  $('#Branch').hide();
		  $('#Branchbtech, #Branchbba, #Branchmba, #Branchmtech').hide();

		  $('#Course').on('change', function() {
		    var selectedCourse = $(this).val();
		    var selectedBranch = '';

		    switch (selectedCourse) {
		      case 'Btech':
		        selectedBranch = 'Branchbtech';
		        break;
		      case 'BBA':
		        selectedBranch = 'Branchbba';
		        break;
		      case 'MBA':
		        selectedBranch = 'Branchmba';
		        break;
		      case 'Mtech':
		        selectedBranch = 'Branchmtech';
		        break;
		      default:
		        swal("Something went wrong..");
		        return;
		    }

		    $('#Branch').show();
		    $('#' + selectedBranch).show();
		  });
		});

    </script>

	<script>
    function redirectToIndexPage(event){
		event.preventDefault();
    	window.location.href="index.jsp";
    }
    
    </script>

</body>
</html>