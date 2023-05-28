package com.StudyVerseServlets;

import java.io.File;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.StudyVerseHelper.Helper;
import com.StudyVerseDao.UserDao;
import com.StudyVerseEntities.User;
import com.StudyVerseHelper.ConnectionProvider;

@MultipartConfig
public class RegisterServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		Date dob = null;
		String dobParameter = request.getParameter("dob");
		if (dobParameter != null) {
		    try {
		        dob = new Date(dateFormat.parse(dobParameter).getTime());
		    } catch (ParseException e) {
		        e.printStackTrace();
		    }
		} 
		Part profile = request.getPart("profile");
		String profileName = null;
		if (profile != null) {
			profileName = profile.getSubmittedFileName();
		}
		else {
			profileName="default.png";
		}
		String experience = request.getParameter("experience");
		Part pcertificate = request.getPart("certificates");
		String certificateName = null;
		if (pcertificate != null) {
			certificateName = pcertificate.getSubmittedFileName();
		}
		String course=request.getParameter("Course");
		String branch=request.getParameter("Branch");

		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		User user = null;

		if (certificateName == null) {
			user = new User(name, email, password, mobile, gender, dob, profileName, experience,
					certificateName, "Student",course,branch);
			String path = "D:\\Eclipse_workspace\\StudyVerse\\src\\main\\webapp\\StudyVersePics"+File.separator+profileName;
			String path2 = "D:\\Eclipse_workspace\\StudyVerse\\src\\main\\webapp\\StudyVersePics"+File.separator+certificateName;
			//Helper.saveFile(profile.getInputStream(),path);
			//Helper.saveFile(pcertificate.getInputStream(),path2);
		} else {
			user = new User(name, email, password, mobile, gender, dob, profileName, experience,
					certificateName, "Teacher",course,branch);
			String path = "D:\\Eclipse_workspace\\StudyVerse\\src\\main\\webapp\\StudyVersePics"+File.separator+profileName;
			//Helper.saveFile(profile.getInputStream(),path);
		}
		if (dao.saveUser(user)) {
			out.println("Done");
		} else {
			out.println("Sorry!! Something went wrong");
		}
	}
	
}
