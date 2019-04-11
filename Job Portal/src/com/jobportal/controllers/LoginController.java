package com.jobportal.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobportal.daos.EmployerDao;
import com.jobportal.daos.LoginDao;
import com.jobportal.daos.UserDao;
import com.jobportal.daosimpl.EmployerDaoImpl;
import com.jobportal.daosimpl.LoginDaoImpl;
import com.jobportal.daosimpl.UserDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.Login;
import com.jobportal.models.User;


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
					
					UserDao userDao=new UserDaoImpl();
					User userObj=userDao.getUser(s1);		
					
					HttpSession session=request.getSession();
					session.setAttribute("user",userObj);
					RequestDispatcher rd=request.getRequestDispatcher("USER.jsp");
					rd.forward(request, response);	
				}
                 else if(role.equals("Employer")){		
					
                	 EmployerDao obj1=new EmployerDaoImpl();
					Employer empObj=obj1.getEmployer(s1);		
															
					HttpSession session=request.getSession();
					session.setAttribute("employer",empObj);
					
					RequestDispatcher rd=request.getRequestDispatcher("EMPLOYER.jsp");
					rd.forward(request, response);	
				}
				
			}
			
		}
}


