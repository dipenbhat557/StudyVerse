package com.StudyVerseDao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.StudyVerseEntities.User;

public class UserDao {

Connection conn;
	
	public UserDao(Connection conn) {
		this.conn=conn;
	}
	
	//saving a user
	public boolean saveUser(User user) {
		boolean f = false;
		
		try {
			String query = "insert into user(name,email,password,mobile,gender,dob,profileName,experience,certificateName,category,course,branch) values(?,?,?,?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1,user.getName());
			pstmt.setString(2,user.getEmail());
			pstmt.setString(3,user.getPassword());
			pstmt.setString(4,user.getMobile());
			pstmt.setString(5,user.getName());
			pstmt.setDate(6,(Date) user.getDob());
			pstmt.setString(7,user.getProfileName());
			pstmt.setString(8,user.getExperience());
			pstmt.setString(9,user.getCertificateName());
			pstmt.setString(10, user.getCategory());
			pstmt.setString(11, user.getCourse());
			pstmt.setString(12, user.getBranch());

			pstmt.executeUpdate();
			
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	//getting user by email and password
	public User getUserByEmailandPassword(String email,String password) {
		User user = null;
		
		try {
			String query = "select * from user where email = ? and password = ?";
			
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2,password);;
			
			ResultSet set = pstmt.executeQuery();
			if(set.next()) {
				int uId = set.getInt("uId");
				String name = set.getString("name");
				String mobile = set.getString("mobile");
				String gender = set.getString("gender");
				Date dob = set.getDate("dob");
				String profileName = set.getString("profileName");
				String experience = set.getString("experience");
				String certificateName = set.getString("certificateName");
				String category = set.getString("category");
				String course = set.getString("course");
				String branch = set.getString("branch");
				
				user = new User(uId,name,email,password,mobile,gender,dob,profileName,experience,certificateName,category,course,branch);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
}
