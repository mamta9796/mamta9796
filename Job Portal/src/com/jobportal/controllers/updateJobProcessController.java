package com.jobportal.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobportal.daos.EmployerDao;
import com.jobportal.daos.JobDao;
import com.jobportal.daosimpl.EmployerDaoImpl;
import com.jobportal.daosimpl.JobDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.Job;

@WebServlet("/updateJobProcess")
public class updateJobProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
	    int id=Integer.parseInt(request.getParameter("jobid")); 
		String s1=request.getParameter("jobtitle");
		String s2=request.getParameter("desc");
		String s3=request.getParameter("qualification");
		String s4=request.getParameter("companyname");
		String s5=request.getParameter("loc");
		String s6=request.getParameter("vacancy");	
		HttpSession session=request.getSession();
		Employer emp=(Employer)session.getAttribute("employer");
	    String s7=emp.getEmail();

		
		Job jobObj=new Job();
		jobObj.setJobId(id);
		jobObj.setJobTitle(s1);
		jobObj.setDesc(s2);
		jobObj.setQualification(s3);
		jobObj.setCompanyName(s4);
		jobObj.setLocation(s5);
		jobObj.setVacancy(Integer.parseInt(s6));
		jobObj.setEmployerId(s7);
	
		
				
		JobDao daoObj=new JobDaoImpl();
		boolean r=daoObj.updateJob(jobObj);
		
		if(r){
			List<Job> jobsList=daoObj.getAllJob(s7);
			
			request.setAttribute("jList",jobsList);
			request.setAttribute("msg","Job Updated Succesfully");
	
			RequestDispatcher rd=request.getRequestDispatcher("ViewJob.jsp");
			rd.forward(request, response);
		}				
	}
}





