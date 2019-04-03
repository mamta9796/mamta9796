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


@WebServlet("/UserChangePassword")
public class UserChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String s1=request.getParameter("t1");
			String s2=request.getParameter("t2");
			
			HttpSession session=request.getSession();
			User user=(User)session.getAttribute("user");
	
			if(s1.equals(s2)){
			UserDao obj=new UserDaoImpl();
			boolean obj2=obj.changePassword(user.getEmail(),s1,s2);
			if(obj2==true){
				
	    		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    		request.setAttribute("msg1", "Password Changed Succesfully");
	    		rd.forward(request, response);
			}
			else{
				
	    		RequestDispatcher rd=request.getRequestDispatcher("UserChangePassword.jsp");
	    		request.setAttribute("msg", "Problem in  Changing Password");
	    		rd.forward(request, response);
	    	}
			}
			}			
}



