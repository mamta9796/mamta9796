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

import com.jobportal.daos.ResumeUploadDao;
import com.jobportal.daosimpl.ResumeUploadDaoImpl;
import com.jobportal.models.Job;
import com.jobportal.models.ResumeUpload;
import com.jobportal.models.User;



@WebServlet("/viewResume")
public class ViewResumeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		ResumeUpload usr=(ResumeUpload)session.getAttribute("res1");
				  
		String s1=usr.getEmail();
		ResumeUploadDao daoObj=new ResumeUploadDaoImpl();
		ResumeUpload res1=daoObj.getResume(s1);
		
		request.setAttribute("resume1",res1);
				
		RequestDispatcher rd=request.getRequestDispatcher("ViewResume.jsp");
		rd.forward(request, response);
		
		
		
	}

}
