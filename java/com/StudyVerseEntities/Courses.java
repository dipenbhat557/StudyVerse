package com.StudyVerseEntities;

public class Courses {
	
	private int cId;
	private String name;
	private String branch;
	
	public Courses(int cId, String name, String branch) {
		super();
		this.cId = cId;
		this.name = name;
		this.branch = branch;
	}

	public Courses(String name, String branch) {
		super();
		this.name = name;
		this.branch = branch;
	}
	
	public Courses() {
		
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	
}
