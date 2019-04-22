package com.jobportal.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jobportal.daos.ResumeUploadDao;
import com.jobportal.models.Job;
import com.jobportal.models.ResumeUpload;
import com.jobportal.utility.ConnectionProvider;

public class ResumeUploadDaoImpl implements ResumeUploadDao {

	@Override
	public boolean Document(ResumeUpload doc) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into Documenttab values(documentseq.nextval,?,?)");
			ps.setString(1, doc.getResume());
			ps.setString(2, doc.getEmail());
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
	public ResumeUpload getResume(String email) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from DocumentTab where loginId=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				ResumeUpload robj=new ResumeUpload();
				robj.setResume(rs.getString(1));
				robj.setEmail(rs.getString(2));
				
				return robj;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	
}
