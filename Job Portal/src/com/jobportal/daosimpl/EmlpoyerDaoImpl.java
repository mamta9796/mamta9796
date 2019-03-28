package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.jobportal.daos.EmployerDao;
import com.jobportal.models.Employer;
import com.jobportal.utility.ConnectionProvider;

public class EmlpoyerDaoImpl implements EmployerDao {

	public boolean EmployerRegister(Employer empobj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into Registertab1 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,empobj.getEmail());
			ps.setString(2,empobj.getPassword());
			ps.setString(3,empobj.getLoc());
			ps.setString(4,empobj.getCompanyName());
			ps.setString(5,empobj.getIndustryType());
			ps.setString(6,empobj.getType());
			ps.setString(7,empobj.getEmployerName());
			ps.setString(8,empobj.getDes());
			ps.setString(9,empobj.getAddress());
			ps.setString(10,empobj.getCountry());
			ps.setString(11,empobj.getState());
			ps.setString(12,empobj.getCity());
			ps.setLong(13,empobj.getPinCode());
			ps.setLong(14,empobj.getMobileNo());
			
			
			
			int i=ps.executeUpdate();
			
			
			if(i!=0){
				ps=conn.prepareStatement("insert into Logintab values(?,?,?)");
				ps.setString(1, empobj.getEmail());
				ps.setString(2,empobj.getPassword());
				ps.setString(3,"Employer");
				ps.executeUpdate();
				return true;
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
}
