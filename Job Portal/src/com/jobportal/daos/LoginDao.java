package com.jobportal.daos;

import java.util.List;



import com.jobportal.models.Login;

public interface LoginDao {
	public Login validate(String loginId,String pass);
    public Login getDataById(String email);
    public boolean changePassword(String email,String newPassword,String ConfirmPassword);
}
