package com.jobportal.daos;

import com.jobportal.models.User;

public interface UserDao {
	public boolean register(User userobj);
	public User getUser(String email);
	public boolean updateUser(User userObj);
	public boolean changePassword(String email,String newPassword);
}
