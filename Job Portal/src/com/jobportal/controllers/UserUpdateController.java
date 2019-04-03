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

import com.jobportal.daos.UserDao;
import com.jobportal.daosimpl.UserDaoImpl;
import com.jobportal.models.User;


@WebServlet("/UpdateUser")
public class UserUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("name");
			String s2=request.getParameter("email");
			String s3=request.getParameter("phone");
			String s4=request.getParameter("location");
			
			User obj1=new User();
			obj1.setName(s1);
			obj1.setEmail(s2);
			obj1.setMobileNo(Long.parseLong(s3));
			obj1.setCurrentLoc(s4);
			
			UserDao obj=new UserDaoImpl();
			boolean obj2=obj.updateUser(obj1);
			if(obj2){
	    		HttpSession session=request.getSession();
	    		session.setAttribute("user",obj1);
	    		RequestDispatcher rd=request.getRequestDispatcher("UserViewProfile.jsp");
	    		request.setAttribute("msg", "User updated Succesfully");
	    		rd.forward(request, response);
	    	}
	    	else {
	    		RequestDispatcher rd=request.getRequestDispatcher("UserUpdateProfile.jsp");
	    		rd.forward(request, response);
	    				
	    	}
	    	
			}			
}



