package com.jobportal.daos;

import com.jobportal.models.Employer;
import com.jobportal.models.User;


public interface EmployerDao {
	public boolean EmployerRegister(Employer empobj);
	public Employer getEmployer(String email);
	public boolean updateEmployer(Employer empobj);
	public boolean changePassword(String email,String newPassword);
}
