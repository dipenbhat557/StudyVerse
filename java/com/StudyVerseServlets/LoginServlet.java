package com.StudyVerseServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.StudyVerseEntities.Message;
import com.StudyVerseDao.UserDao;
import com.StudyVerseEntities.User;
import com.StudyVerseHelper.ConnectionProvider;

public class LoginServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		User user = dao.getUserByEmailandPassword(email, password);

		if (user == null) {
			Message message = new Message("Invalid username or password!!", "alert");
			HttpSession session = request.getSession();
			session.setAttribute("Message", message);
			response.sendRedirect("LoginPage.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user);
			if (user.getCategory().trim().equals("Teacher")) {
				out.println("done");
				response.sendRedirect("TeacherProfile.jsp");
			} else if (user.getCategory().trim().equals("Student")) {
				out.println("done");
				response.sendRedirect("StudentProfile.jsp");
			} else {
				Message message = new Message("Something went wrong!!", "alert");
				session.setAttribute("Message", message);
				response.sendRedirect("LoginPage.jsp");
			}
		}
	}

}
