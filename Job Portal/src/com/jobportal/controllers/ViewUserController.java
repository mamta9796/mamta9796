package com.jobportal.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobportal.daos.EmployerDao;
import com.jobportal.daos.UserDao;
import com.jobportal.daosimpl.EmployerDaoImpl;
import com.jobportal.daosimpl.UserDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.User;



@WebServlet("/viewUser")
public class ViewUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
	    UserDao obj=new UserDaoImpl();
	    List<User> obj1=obj.getAllUserDetail("not applicable");
	    	   				
		request.setAttribute("uList",obj1);
	    
		RequestDispatcher rd=request.getRequestDispatcher("viewalluser.jsp");
		rd.forward(request, response);
				
	}

}
