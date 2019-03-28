package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;

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

	
}
