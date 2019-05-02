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

@WebServlet("/deleteJob")
public class DeleteJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		int id=Integer.parseInt(request.getParameter("jId"));
		
		HttpSession session=request.getSession();
		Employer emp=(Employer)session.getAttribute("employer");
	    String s9=emp.getEmail();
	  
		
		JobDao jDao=new JobDaoImpl();                            
		boolean r=jDao.deleteJob(id);                              
		if(r==true){
			request.setAttribute("msg","Job Deleted Succesfully");
		}
		else {
			request.setAttribute("msg1","Problem in Deleting Job . Try again");
		}
		request.setAttribute("jList",jDao.getAllJob(s9));
		RequestDispatcher rd=request.getRequestDispatcher("ViewJob.jsp");
		rd.forward(request, response);
		
		}
}

