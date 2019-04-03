package com.jobportal.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;

import com.jobportal.daos.EmployerDao;
import com.jobportal.daos.UserDao;
import com.jobportal.daosimpl.EmployerDaoImpl;
import com.jobportal.daosimpl.UserDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.User;


@WebServlet("/EmployerChangePassword")
public class EmployerChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("t1");
			String s2=request.getParameter("t2");
			HttpSession session=request.getSession();
			Employer emp=(Employer)session.getAttribute("employer");
											
			EmployerDao obj=new EmployerDaoImpl();
			boolean obj2=obj.changePassword(emp.getEmail(),s1,s2);
			if(obj2){
				
	    		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    		request.setAttribute("msg1", "Password Changed Succesfully");
	    		rd.forward(request, response);
			}
			else{
				
	    		RequestDispatcher rd=request.getRequestDispatcher("EmployerChangePassword.jsp");
	    		request.setAttribute("msg", "Problem in  Changing Password");
	    		rd.forward(request, response);
	    	}	    	    	
			}			
}



