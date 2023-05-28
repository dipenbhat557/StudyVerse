package com.StudyVerseEntities;

import java.util.Date;

public class User {

	public int uId;
	public String name;
	public String email;
	public String password;
	public String mobile;
	public String gender;
	public Date dob;
	public String profileName;
	public String experience;
	public String certificateName;
	public String category;
	public String course;
	public String branch;
	
	public User(int uId, String name, String email, String password, String mobile, String gender,
			Date dob, String profileName, String experience, String certificateName,String category,String Course,String Branch) {
		super();
		this.uId = uId;
		this.name = name;
		this.email = email;
		this.password = password;
		this.mobile = mobile;
		this.gender = gender;
		this.dob = dob;
		this.profileName = profileName;
		this.experience = experience;
		this.certificateName = certificateName;
		this.category=category;
		this.course = Course;
		this.branch=Branch;
	}


	public User(String name, String email, String password, String mobile, String gender, Date dob,
			String profileName, String experience, String certificateName,String category,String Course,String Branch) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.mobile = mobile;
		this.gender = gender;
		this.dob = dob;
		this.profileName = profileName;
		this.experience = experience;
		this.certificateName = certificateName;
		this.category=category;
		this.course = Course;
		this.branch=Branch;
	}
	

	public User() {
		
	}

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getCertificateName() {
		return certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}


	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}
	
}
