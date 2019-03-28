package com.jobportal.daos;

import com.jobportal.models.Login;

public interface LoginDao {
	public Login validate(String loginId,String pass);

}
