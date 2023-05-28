<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Register Page</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
/* Global styles */
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f8f8f8;
}

/* Form styles */
#signup-form {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	margin-bottom: 30px;
	color: #333;
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	color: #666;
	font-size: 16px;
	font-weight: bold;
}

input, select, textarea {
	width: 100%;
	padding: 10px;
	border-radius: 5px;
	border: none;
	background-color: #f4f4f4;
	font-size: 16px;
	color: #333;
	transition: all 0.3s ease-in-out;
}

input:focus, select:focus, textarea:focus {
	outline: none;
	box-shadow: 0 0 5px #00bfff;
}

input[type="radio"] {
	display: none;
}

label[for="male"]::before, label[for="female"]::before, label[for="other"]::before
	{
	content: "";
	display: inline-block;
	vertical-align: middle;
	width: 20px;
	height: 20px;
	margin-right: 10px;
	border-radius: 50%;
	border: 2px solid #ccc;
}

/* label[for="male"]::before {
  background-color: #00bfff;
}

label[for="female"]::before {
  background-color: #ff69b4;
}

label[for="other"]::before {
  background-color: #f1c40f;
} */
input[type="radio"]:checked+label::before {
	border-color: #00bfff;
}

.input[type="file"]+label {
	display: inline-block;
	margin-top: 10px;
	padding: 10px;
	background-color: #00bfff;
	color: #fff;
	border-radius: 5px;
	cursor: pointer;
	transition: all 0.3s ease-in-out;
}

.input[type="file"]+label:hover {
	background-color: #0195db;
}

.button[type="submit"] {
	display: inline-block;
	margin-top: 20px;
	padding: 10px;
	background-color: #00bfff;
	color: #fff;
	border-radius: 5px;
	cursor: pointer;
	transition: all 0.3s ease-in-out;
	border: none;
}

.button[type="submit"]:hover {
	background-color: #0195db;
}

/* Media queries */
@media ( max-width : 767px) {
	#signup-form {
		padding: 10px;
	}
	input, select, textarea {
		font-size: 14px;
	}
	label {
		font-size:  14px;
		  
	}
}
</style>

</head>
<body>

	<form id="signup-form" action="RegisterServlet" method="post"
		enctype="multipart/form-data">
		<h1>Teacher Sign Up</h1>
		<label for="name">Name:</label> <input type="text" id="name"
			name="name" placeholder="Enter the name" required> <label
			for="email">Email:</label> <input type="email" id="email"
			name="email" placeholder="Enter the email" required> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password" placeholder="Enter the password" required> <label
			for="confirm-password">Confirm Password:</label> <input
			type="password" id="confirm-password" name="confirm-password"
			placeholder="Re-enter the password" required> <label
			for="mobile">Mobile:</label> <input type="tel" id="mobile"
			name="mobile" placeholder="Enter Mobile No" required> <label>Gender:</label>
		<input type="radio" id="male" name="gender" value="male" required>
		<label for="male">Male</label> <input type="radio" id="female"
			name="gender" value="female" required> <label for="female">Female</label>
		<input type="radio" id="other" name="gender" value="other" required>
		<label for="other">Other</label> <label for="dob">Date of
			Birth:</label> <input type="date" id="dob" name="dob" required> <label
			for="photo">Photo:</label> <input type="file" id="photo"
			name="profile" required /><br> <br> <label
			for="job-experience">Job Experience:</label>
		<textarea id="job-experience" name="experience" rows="5" required></textarea>

		<label for="certificates">Certificates:</label> <input type="file"
			id="certificates" name="certificates" required /> <label
			for="Course">Course:</label><br> <select id="Course"
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
				<option value="Account">Accounts</option>
				<option value="Economics">Economics</option>
				<option value="Mathematics">Mathematics</option>
				<option value="Computer">Computer</option>
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


		<div style="text-align: center;">
			<button
				style="display: inline-block; margin-top: 20px; padding: 10px; background-color: #00bfff; color: #fff; border-radius: 5px; cursor: pointer; transition: all 0.3s ease-in-out; border: none;"
				class="button" type="submit">Sign Up</button>
			&nbsp &nbsp &nbsp
			<button onclick="redirectToIndexPage(event)"
				style="display: inline-block; margin-top: 20px; padding: 10px; background-color: #00bfff; color: #fff; border-radius: 5px; cursor: pointer; transition: all 0.3s ease-in-out; border: none;">Home</button>
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
    $(document).ready(function(){
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

    })
    
    </script>

	<script>
    function redirectToIndexPage(event){
		event.preventDefault();
    	window.location.href="index.jsp";
    }
    
    </script>

</body>