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
import com.jobportal.daosimpl.EmployerDaoImpl;
import com.jobportal.models.Employer;



@WebServlet("/viewEmployees")
public class ViewEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
	    EmployerDao obj=new EmployerDaoImpl();
	    List<Employer> obj1=obj.getAllEmployeeDetail("not applicable");
	    	   				
		request.setAttribute("eList",obj1);
	    
		RequestDispatcher rd=request.getRequestDispatcher("viewallemployer.jsp");
		rd.forward(request, response);
				
	}

}
