package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jobportal.daos.UserDao;
import com.jobportal.models.User;
import com.jobportal.utility.ConnectionProvider;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean register(User userobj) {
		
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into Registertab values(?,?,?,?)");
			ps.setString(1,userobj.getName());
			ps.setString(2,userobj.getEmail());
			ps.setLong(3,userobj.getMobileNo());
			ps.setString(4,userobj.getCurrentLoc());
			int i=ps.executeUpdate();
			
			
			if(i!=0){
				ps=conn.prepareStatement("insert into Logintab values(?,?,?)");
				ps.setString(1, userobj.getEmail());
				ps.setString(2,userobj.getPassword());
				ps.setString(3,"User");
				ps.executeUpdate();
				return true;
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public User getUser(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from RegisterTab where email=?");
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{  User obj=new User();
				obj.setName(rs.getString(1));
				obj.setEmail(rs.getString(2));
				obj.setMobileNo(rs.getLong(3));
				obj.setCurrentLoc(rs.getString(4));	
				return obj;
			}						
			} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean updateUser(User userObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update RegisterTab set Name=?,MobileNo=?,CurrentLocation=? where email=?");
			ps.setString(1,userObj.getName());
			ps.setString(4,userObj.getEmail());
			ps.setLong(2,userObj.getMobileNo());
			ps.setString(3,userObj.getCurrentLoc());
									
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean changePassword(String email, String newPassword,String ConfirmPassword) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update Logintab set password=? where loginId=?");
			ps.setString(1,newPassword);
			ps.setString(2,email);
			
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			
			}
			else
			{ 
				return false;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	
}
