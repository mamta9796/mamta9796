package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jobportal.daos.EmployerDao;
import com.jobportal.models.Employer;
import com.jobportal.models.User;
import com.jobportal.utility.ConnectionProvider;

public class EmployerDaoImpl implements EmployerDao {

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

	@Override
	public Employer getEmployer(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from RegisterTab1 where email=?");
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{  Employer obj=new Employer();
			obj.setEmail(rs.getString(1));
			obj.setPassword(rs.getString(2));
			obj.setLoc(rs.getString(3));
			obj.setCompanyName(rs.getString(4));
			obj.setIndustryType(rs.getString(5));
			obj.setType(rs.getString(6));
			obj.setEmployerName(rs.getString(7));
			obj.setDes(rs.getString(8));
			obj.setAddress(rs.getString(9));
			obj.setCountry(rs.getString(10));
			obj.setState(rs.getString(11));
			obj.setCity(rs.getString(12));
			obj.setPinCode(rs.getLong(13));
			obj.setMobileNo(rs.getLong(14));	
				return obj;
			}						
			} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean updateEmployer(Employer empobj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update RegisterTab1 set Location=?,CompanyName=?,IndustryType=?,Type=?,EmployerName=?,Designation=?,Address=?,Country=?,State=?,City=?,Pincode=?,MobileNo=? where email=?");
			ps.setString(13,empobj.getEmail());
			ps.setString(1,empobj.getLoc());
			ps.setString(2,empobj.getCompanyName());
			ps.setString(3,empobj.getIndustryType());
			ps.setString(4,empobj.getType());
			ps.setString(5,empobj.getEmployerName());
			ps.setString(6,empobj.getDes());
			ps.setString(7,empobj.getAddress());
			ps.setString(8,empobj.getCountry());
			ps.setString(9,empobj.getState());
			ps.setString(10,empobj.getCity());
			ps.setLong(11,empobj.getPinCode());
			ps.setLong(12,empobj.getMobileNo());
			
									
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
	public boolean changePassword(String email, String newPassword) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update RegisterTab1 set password=? where email=?");
			ps.setString(1,newPassword);
			ps.setString(2,email);
			
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

	
}
