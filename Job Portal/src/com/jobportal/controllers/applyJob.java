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

@WebServlet("/apply")
public class applyJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		String s1=request.getParameter("useremailId");
					
		JobDao jDao=new JobDaoImpl();                            
		boolean r=jDao.applyJob(s1);                              
		if(r==true){
			RequestDispatcher rd=request.getRequestDispatcher("viewalljobtouser.jsp");
			request.setAttribute("msg","job applied successfully");
			rd.forward(request, response);	
			
		}
		else {
			request.setAttribute("msg1","Problem in Applying Job . Try again");
		}
			
		}
}

