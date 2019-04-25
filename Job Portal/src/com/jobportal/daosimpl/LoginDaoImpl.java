package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jobportal.daos.LoginDao;
import com.jobportal.models.Employer;
import com.jobportal.models.Job;
import com.jobportal.models.Login;
import com.jobportal.models.User;
import com.jobportal.utility.ConnectionProvider;

public class LoginDaoImpl implements LoginDao {	
	public Login validate(String loginId, String pass) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from Logintab where loginId=? and password=?");
			ps.setString(1,loginId);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				String s1=rs.getString(1);
				String s2=rs.getString(2);
				String s3=rs.getString(3);
				
				Login obj=new Login();
				obj.setLoginId(s1);
				obj.setPassword(s2);
				obj.setRole(s3);
				return obj;
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public Login getDataById(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from adminTab where loginid=?");
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{  Login obj=new Login();
				obj.setfName(rs.getString(2));
				obj.setlName(rs.getString(3));
				obj.setLoginId(rs.getString(4));
				
				return obj;
			}						
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	}





