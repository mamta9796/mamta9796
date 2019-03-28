package com.jobportal.models;

public class User {
	private String Name;
	private String Email;
	private String password;
	private Long MobileNo;
	private String CurrentLoc;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public 	Long getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(Long mobileNo) {
		MobileNo = mobileNo;
	}
	public String getCurrentLoc() {
		return CurrentLoc;
	}
	public void setCurrentLoc(String currentLoc) {
		CurrentLoc = currentLoc;
	}
	
	
}
