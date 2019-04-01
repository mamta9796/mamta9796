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
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("t1");
			String s2=request.getParameter("t2");
			HttpSession session=request.getSession();
			String str1=(String)session.getAttribute("email");
											
			UserDao obj=new UserDaoImpl();
			boolean obj2=obj.changePassword(str1,s2);
			if(obj2){
				request.setAttribute("msg", "Password Changed Succesfully");
	    		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
	    		rd.forward(request, response);
			}
			else{
				request.setAttribute("msg", "Problem in  Changing Password");
	    		RequestDispatcher rd=request.getRequestDispatcher("UserChangePassword.jsp");
	    		rd.forward(request, response);
	    	}	    	    	
			}			
}



