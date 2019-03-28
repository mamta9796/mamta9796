package com.jobportal.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jobportal.daos.LoginDao;
import com.jobportal.daosimpl.LoginDaoImpl;
import com.jobportal.models.Login;


@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			String s1=request.getParameter("t1");
			String s2=request.getParameter("t2");
			
			LoginDao loginDaoObj=new LoginDaoImpl();
			Login obj=loginDaoObj.validate(s1,s2);
			if(obj==null) {
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				request.setAttribute("errorMsg","Email or Password is incorrect");
				rd.forward(request, response);
			}
			else {
				String role=obj.getRole();
				if(role.equals("Admin")) {
					RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
					rd.forward(request, response);
				}
				else if(role.equals("User")){
					RequestDispatcher rd=request.getRequestDispatcher("UserHome.jsp");
					rd.forward(request, response);	
				}
			}
			
		}
}


