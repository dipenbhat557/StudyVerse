package com.StudyVerseServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.StudyVerseEntities.Message;

public class LogoutServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		session.removeAttribute("currentUser");
		
		response.sendRedirect("index.jsp");
		
	}
}
