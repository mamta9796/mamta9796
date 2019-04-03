package com.jobportal.controllers;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.jobportal.daos.UserDao;
import com.jobportal.daosimpl.UserDaoImpl;
import com.jobportal.models.User;


@WebServlet("/SignUp")
public class UserSignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("name");
			String s2=request.getParameter("email");
			String s3=request.getParameter("password");
			String s4=request.getParameter("phone");
			String s5=request.getParameter("location");
			
			User obj1=new User();
			obj1.setName(s1);
			obj1.setEmail(s2);
			obj1.setPassword(s3);
			obj1.setMobileNo(Long.parseLong(s4));
			obj1.setCurrentLoc(s5);
			
			UserDao obj=new UserDaoImpl();
			boolean obj2=obj.register(obj1);
			if(obj2==false) {
				RequestDispatcher rd=request.getRequestDispatcher("UserSignUp.jsp");
				request.setAttribute("msg", "Problem in registering");
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				request.setAttribute("msg1", "Registered Succesfully . Now u can login");
				rd.include(request, response);
				}
			}			
}






