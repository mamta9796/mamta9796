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


@WebServlet("/UpdateEmployer")
public class EmployerUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("location");
			String s2=request.getParameter("companyName");
			String s3=request.getParameter("industry");
			String s4=request.getParameter("optradio");
			String s5=request.getParameter("name");
			String s6=request.getParameter("designation");
			String s7=request.getParameter("address");
			String s8=request.getParameter("country");
			String s9=request.getParameter("state");
			String s10=request.getParameter("city");
			String s11=request.getParameter("pincode");
			String s12=request.getParameter("phone");
			String s13=request.getParameter("email");
			
			Employer obj1=new Employer();
			obj1.setLoc(s1);
			obj1.setCompanyName(s2);
			obj1.setIndustryType(s3);
			obj1.setType(s4);
			obj1.setEmployerName(s5);
			obj1.setDes(s6);
			obj1.setAddress(s7);
			obj1.setCountry(s8);
			obj1.setState(s9);
			obj1.setCity(s10);
			obj1.setPinCode(Long.parseLong(s11));
			obj1.setMobileNo(Long.parseLong(s12));
			obj1.setEmail(s13);
			
			EmployerDao obj=new EmployerDaoImpl();
			boolean obj2=obj.updateEmployer(obj1);
			if(obj2==true){
				System.out.println("I m here");
	    		HttpSession session=request.getSession();
	    		request.setAttribute("msg", "Employer updated Succesfully");
	    		session.setAttribute("employer",obj1);
	    		RequestDispatcher rd=request.getRequestDispatcher("EmployerViewProfile.jsp");
	    		rd.forward(request, response);
	    	}
	    	else {
	    		System.out.println("I m here i");
	    		
	    		RequestDispatcher rd=request.getRequestDispatcher("EmployerUpdateProfile.jsp");
	    		rd.forward(request, response);
	    				
	    	}
	    	
			}
}



