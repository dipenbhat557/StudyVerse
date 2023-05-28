package com.StudyVerseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.StudyVerseEntities.Courses;

public class CoursesDao {
	Connection conn;
	
	public CoursesDao(Connection conn) {
		this.conn=conn;
	}
	
	public ArrayList<Courses> getCoursesByBranch(String  branch){
		ArrayList<Courses> courses = new ArrayList<Courses>();
		
		try {
			String query="select * from courses where branch = ?";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, branch);
			ResultSet set = pstmt.executeQuery();
			
			while(set.next()) {
				int cId = set.getInt("cId");
				String name = set.getString("name");
				
				Courses course= new Courses(cId,name,branch);
				
				courses.add(course);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return courses;
	}
}
