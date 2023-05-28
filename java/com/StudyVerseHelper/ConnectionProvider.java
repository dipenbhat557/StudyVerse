package com.StudyVerseHelper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {

	public static Connection conn;
	public static Connection getConnection() {
		if(conn==null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/StudyVerse","root","Mume@143");
				
						
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return conn;
	}
	
	
}
