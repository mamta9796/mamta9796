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

@WebServlet("/addjob")
public class AddJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String s1=request.getParameter("jobtitle");
		String s2=request.getParameter("desc");
		String s3=request.getParameter("qualification");
		String s4=request.getParameter("postedon");
		String s5=request.getParameter("companyname");
		String s6=request.getParameter("loc");
		String s7=request.getParameter("vacancy");
		String s8=request.getParameter("empid");
		
		
		//String s9=request.getParameter("email");
		HttpSession session=request.getSession();
		Employer emp=(Employer)session.getAttribute("employer");
		System.out.println("Emp = "+emp);
	    String s9=emp.getEmail();
	  
			
		
		Job jobObj=new Job();	
		jobObj.setJobTitle(s1);
		jobObj.setDesc(s2);
		jobObj.setQualification(s3);
		jobObj.setPostedOn(new Date());
		jobObj.setCompanyName(s5);
		jobObj.setLocation(s6);
		jobObj.setVacancy(Integer.parseInt(s7));
		jobObj.setEmployerId(s9);	
		
				
		JobDao daoObj=new JobDaoImpl();
		boolean r=daoObj.addJob(jobObj);
		if(r){
			List<Job> jobsList=daoObj.getAllJob();
			
			request.setAttribute("jList",jobsList);
			request.setAttribute("msg","Job Added Succesfully");
			
			RequestDispatcher rd=request.getRequestDispatcher("ViewJob.jsp");
			rd.forward(request, response);
		}
		else {
			
		}
		
	}	}

