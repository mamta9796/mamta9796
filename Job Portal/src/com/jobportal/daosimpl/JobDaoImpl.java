package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.jobportal.daos.JobDao;
import com.jobportal.models.Job;
import com.jobportal.utility.ConnectionProvider;

public class JobDaoImpl implements JobDao {

	@Override
	public boolean addJob(Job jobObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement
					("insert into JobTab values(jobseq.nextval,?,?,?,?,?,?,?,?)");
			ps.setString(1,jobObj.getJobTitle());
			ps.setString(2,jobObj.getDesc());
			ps.setString(3,jobObj.getQualification());
			ps.setString(5,jobObj.getCompanyName());
			ps.setString(6,jobObj.getLocation());
			ps.setInt(7,jobObj.getVacancy());
			ps.setString(8,jobObj.getEmployerId());
			
			/*Converting java.util.Date into java.sql.Date*/
			Date pdate=jobObj.getPostedOn();
			long l=pdate.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(4, dob);
		
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
	public boolean deleteJob(int jobId) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("delete from JobTab where jobid=?");
			ps.setInt(1,jobId);
			int i=ps.executeUpdate();
			if(i!=0)return true;
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean updateJob(Job jobObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("update JobTab set jobtitle=?,description=?,qualification=?,postedOn=?,companyname=?,locations=?,vacancy=?,email=? where jobid=?");
			ps.setString(1,jobObj.getJobTitle());
			ps.setString(2,jobObj.getDesc());
			ps.setString(3,jobObj.getQualification());
			ps.setString(5,jobObj.getCompanyName());
			ps.setString(6,jobObj.getLocation());
			ps.setInt(7,jobObj.getVacancy());
			ps.setString(8,jobObj.getEmployerId());
			ps.setInt(9,jobObj.getJobId());
			
			/*Converting java.util.Date into java.sql.Date*/
			Date pdate=jobObj.getPostedOn();
			long l=pdate.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(4, dob);
			int i=ps.executeUpdate();
			if(i!=0)return true;
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public Job getJobById(int jobId) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from JobTab where jobId=?");
			ps.setInt(1,jobId);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				Job obj=new Job();
				obj.setJobId(rs.getInt(1));
				obj.setJobTitle(rs.getString(2));
				obj.setDesc(rs.getString(3));
				obj.setQualification(rs.getString(4));
				obj.setPostedOn(rs.getDate(5));
				obj.setCompanyName(rs.getString(6));
				obj.setLocation(rs.getString(7));
				obj.setVacancy(rs.getInt(8));
				obj.setEmployerId(rs.getString(9));			
				return obj;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	@Override
	public List<Job> getAllJob() {
		List<Job> job=new ArrayList<>();
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from JobTab");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Job obj=new Job();
				obj.setJobId(rs.getInt(1));
				obj.setJobTitle(rs.getString(2));
				obj.setDesc(rs.getString(3));
				obj.setQualification(rs.getString(4));
				obj.setPostedOn(rs.getDate(5));
				obj.setCompanyName(rs.getString(6));
				obj.setLocation(rs.getString(7));
				obj.setVacancy(rs.getInt(8));
				obj.setEmployerId(rs.getString(9));			
				
				job.add(obj);
				
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return job;
	}

}
