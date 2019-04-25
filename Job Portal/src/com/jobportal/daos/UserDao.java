package com.jobportal.daos;

import java.util.List;



import com.jobportal.models.User;

public interface UserDao {
	public boolean register(User userobj);
	public User getUser(String email);
	public boolean updateUser(User userObj);
	public boolean changePassword(String email,String newPassword,String ConfirmPassword);
	public List<User> getAllUserDetail(String email);
	public boolean deleteUser(String email);
}
