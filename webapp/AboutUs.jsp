<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us - EduPeps</title>
  <link rel="stylesheet" type="text/css" href="css/AboutUs.css">
  <style>
  .logo:hover {
  font-size: 28px;
}
.logo a{
color:white;
text-decoration:none;
}

nav {
  background-color: black;
  color: white;
  padding: 15px;
  display: flex;
  justify-content: space-between;
}
nav ul {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  gap: 25px;
  padding-right: 25px;
}
nav ul li {
  text-decoration: none;
  text-align: center;
  list-style-type: none;
}
nav ul li a {
  font-size: 20px;
  text-decoration: none;
  color: rgb(247, 245, 245);
  transition: 0.5s ease-in-out;
}
nav ul li a:hover {
  font-size: 18px;
}
  </style>
  
</head>

<body>

<header>
		<nav>
			<div class="logo">
				<a href="ContactUs.jsp">StudyVerse</a>
			</div>
			
			<ul>
			<li><a href="index.jsp">HOME</a></li>
				</a></li>
				<li><a href="StudentProfile.jsp">COURSES</a></li>
				<li><a href="StudentGrades.jsp">GRADES</a></li>
				<li><a href="AboutUs.jsp">ABOUT US</a></li>
				</a></li>
			</ul>
		</nav>
	</header>
  <!-- Main content starts here -->
  <section id="about">
    <div class="about-box">
      <div style="background-color: #F2F2F2; padding: 20px;">
        <h2 style="font-family: Arial, sans-serif; color: #333;font-size: xx-large; text-align: center;">About StudyVerse
        </h2>
        <p style="font-family: Arial, sans-serif; color: #666; font-size: 20px; text-align: justify;">StudyVerse
          is a revolutionary event management platform that aims to simplify the process of organizing events.
          With its user-friendly interface and powerful features, StudyVerse makes it easy for event organizers
          to plan, promote, and manage events of any size. Whether you're planning a small conference or a
          large-scale music festival, StudyVerse has everything you need to make your event a success. From
          ticketing and registration to marketing and analytics, StudyVerse has got you covered.</p>

        <p style="font-family: Arial, sans-serif; color: #666; font-size: 20px; text-align: justify;">Welcome to
          our education finding website! We are dedicated to helping you find the perfect events for
          your
          needs, whether
          you're looking for a fun night out with friends, a corporate team-building activity, or a
          family-friendly outing.
          .</p>
        <p style="font-family: Arial, sans-serif; color: #666; font-size: 20px; text-align: justify;">Our team
          is passionate about event planning and has years of experience in the industry. We
          understand
          that everyone has
          different tastes and preferences when it comes to events, which is why we have a wide range of
          options
          to choose from.
          From music festivals and art exhibits to sports games and charity events, we have something for
          everyone.
        </p>
        <p style="font-family: Arial, sans-serif; color: #666; font-size: 20px; text-align: justify;">Our
          mission is to make event planning stress-free and enjoyable for everyone. We believe that events
          bring people
          together and create lasting memories, and we're committed to helping you find the perfect event for
          your
          needs. Thank
          you for choosing our event finding website, and we look forward to helping you discover your next
          adventure!
        </p>
      </div>
      <div class="team-box">
        <h2 class="meet">Meet Our Team</h2>
        <div class="team-container">
          <div class="person-box">
            <img
              src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvf18kQI4235LHGMjsXPL2C3zLoYwxxjkBhw&usqp=CAU"
              alt="John Smith">
            <h3>Dipendra Bhatta</h3>
          </div>
          <div class="person-box">
            <img
              src="https://images.unsplash.com/photo-1619183036291-4dbe7854a859?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG5vJTIwZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80"
              alt="Jane Doe">
            <h3>Kiran Paudel</h3>
          </div>
          <div class="person-box">
            <img
              src="https://media.istockphoto.com/id/1371332055/photo/mysterious-man.jpg?b=1&s=170667a&w=0&k=20&c=1uGSqMkOVcVeYmUQ3wKI88sUnVMRXxBMGctBnYJGv0s="
              alt="Bob Johnson">
            <h3>Avhinaya Panthi</h3>
          </div>
          <div class="person-box">
            <img src="https://i1.sndcdn.com/avatars-000154031661-w0yehj-t500x500.jpg" alt="Samantha Lee">
            <h3>Aakash Subedi</h3>
          </div>
        </div>



  </section>

  <footer>
    <div class="footer-content">
      <p>Copyright © 2023 StudyVerse</p>
      <ul>
        <li><a href="PrivacyPolicy.jsp">Privacy Policy</a></li>
        <li><a href="#">Terms of Use</a></li>
        <li><a href="ContactUs.jsp">Contact Us</a></li>
      </ul>
    </div>
  </footer>

</body>

</html>
