package com.jobportal.models;

public class Employer {
	
	
	private String Email;
	private String password;
	private String Loc;
	private String CompanyName;
	private String IndustryType;
	private String Type;
	private String EmployerName;
	private String Des;
	private String Address;
	private String Country;
	private String State;
	private String City;
	private Long PinCode;
	private Long MobileNo;
	
	
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getCompanyName() {
		return CompanyName;
	}
	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}
	public String getEmployerName() {
		return EmployerName;
	}
	public void setEmployerName(String employerName) {
		EmployerName = employerName;
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
	public Long getMobileNo() {
		return MobileNo;
	}
	public void setMobileNo(Long mobileNo) {
		MobileNo = mobileNo;
	}
	public String getLoc() {
		return Loc;
	}
	public void setLoc(String loc) {
		Loc = loc;
	}
	public String getIndustryType() {
		return IndustryType;
	}
	public void setIndusrtyType(String indusrtyType) {
		IndustryType = indusrtyType;
	}
	public String getDes() {
		return Des;
	}
	public void setDes(String des) {
		Des = des;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public Long getPinCode() {
		return PinCode;
	}
	public void setPinCode(Long pinCode) {
		PinCode = pinCode;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	

	
	
}
