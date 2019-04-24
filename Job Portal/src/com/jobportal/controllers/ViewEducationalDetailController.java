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
import javax.servlet.http.HttpSession;

import com.jobportal.daos.JobDao;
import com.jobportal.daos.UserEducationalDetailDao;
import com.jobportal.daosimpl.JobDaoImpl;
import com.jobportal.daosimpl.UserEducationalDetailDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.Job;
import com.jobportal.models.User;
import com.jobportal.models.UserEducationalDetail;


@WebServlet("/ViewEducation")
public class ViewEducationalDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		User usr=(User)session.getAttribute("user");
		String e1=usr.getEmail();
	  		
		UserEducationalDetailDao daoObj=new UserEducationalDetailDaoImpl();
		UserEducationalDetail obj=daoObj.getEducationDetail(e1);
		
		session.setAttribute("detail",obj);		
		RequestDispatcher rd=request.getRequestDispatcher("ViewEducationDetail.jsp");
		rd.forward(request, response);
	}

}
