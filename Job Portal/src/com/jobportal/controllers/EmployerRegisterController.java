package com.jobportal.controllers;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jobportal.daos.EmployerDao;
import com.jobportal.daosimpl.EmlpoyerDaoImpl;
import com.jobportal.models.Employer;


@WebServlet("/employer")
public class EmployerRegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("email");
			String s2=request.getParameter("password");
			String s3=request.getParameter("location");
			String s4=request.getParameter("companyName");
			String s5=request.getParameter("industry");
			String s6=request.getParameter("optradio");
			String s7=request.getParameter("name");
			String s8=request.getParameter("designation");
			String s9=request.getParameter("address");
			String s10=request.getParameter("country");
			String s11=request.getParameter("state");
			String s12=request.getParameter("city");
			String s13=request.getParameter("pincode");
			String s14=request.getParameter("phone");
			
						
			Employer obj1=new Employer();
			obj1.setEmail(s1);
			obj1.setPassword(s2);
			obj1.setLoc(s3);
			obj1.setCompanyName(s4);
			obj1.setIndusrtyType(s5);
			obj1.setType(s6);
			obj1.setEmployerName(s7);
			obj1.setDes(s8);
			obj1.setAddress(s9);
			obj1.setCountry(s10);
			obj1.setState(s11);
			obj1.setCity(s12);
			obj1.setPinCode(Long.parseLong(s13));
			obj1.setMobileNo(Long.parseLong(s14));
			
			
			EmployerDao obj=new EmlpoyerDaoImpl();
			boolean obj2=obj.EmployerRegister(obj1);
			if(obj2==false) {
				out.println("Problem in Registering User. Try again");
			}
			else {
				out.println("Registered Succesfully . Now u can login");
				RequestDispatcher rd=request.getRequestDispatcher("EmployerRegister.jsp");
				rd.include(request, response);
				}
			}			
}



