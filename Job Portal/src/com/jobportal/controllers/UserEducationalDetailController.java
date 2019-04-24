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
import com.jobportal.daos.UserEducationalDetailDao;
import com.jobportal.daosimpl.EmployerDaoImpl;
import com.jobportal.daosimpl.UserEducationalDetailDaoImpl;
import com.jobportal.models.Employer;
import com.jobportal.models.User;
import com.jobportal.models.UserEducationalDetail;


@WebServlet("/educationDetail")
public class UserEducationalDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String s1=request.getParameter("medium");
			String s2=request.getParameter("subject");
			String s3=request.getParameter("school");
			String s4=request.getParameter("board");
			String s5=request.getParameter("opt");
			String s6=request.getParameter("percentage");
			String s7=request.getParameter("year");
			String s8=request.getParameter("medium1");
			String s9=request.getParameter("stream");
			String s10=request.getParameter("subject1");
			String s11=request.getParameter("school1");
			String s12=request.getParameter("board1");
			String s13=request.getParameter("opt1");
			String s14=request.getParameter("percentage1");
			String s15=request.getParameter("year1");
			String s16=request.getParameter("Qualification");
			String s17=request.getParameter("course");
			String s18=request.getParameter("specialization");
			String s19=request.getParameter("college");
			String s20=request.getParameter("opt2");
			String s21=request.getParameter("year2");
			String s22=request.getParameter("qualification3");
			String s23=request.getParameter("course3");
			String s24=request.getParameter("specialization3");
			String s25=request.getParameter("college3");
			String s26=request.getParameter("opt3");
			String s27=request.getParameter("year3");
			
						
			HttpSession session=request.getSession();
			User usr=(User)session.getAttribute("user");
			String s28=usr.getEmail();
			
			UserEducationalDetail eobj=new UserEducationalDetail();
			eobj.setMedium(s1);
			eobj.setSubject(s2);
			eobj.setsName(s3);
			eobj.setBoard(s4);
			eobj.setcType(s5);
			eobj.setPerc(s6);
			eobj.setpYear(s7);
			eobj.setMedium1(s8);
			eobj.setStream(s9);
			eobj.setSubject1(s10);
			eobj.setsName1(s11);
			eobj.setBoard1(s12);
			eobj.setcType1(s13);
			eobj.setPerc1(s14);
			eobj.setpYear1(s15);
			eobj.setQual(s16);
			eobj.setCourse(s17);
			eobj.setSpecialization(s18);
			eobj.setCollege(s19);
			eobj.setcType2(s20);				
			eobj.setpYear2(s21);
			eobj.setQual1(s22);
			eobj.setCourse1(s23);
			eobj.setSpecialization1(s24);
			eobj.setCollege1(s25);
			eobj.setcType3(s26);				
			eobj.setpYear3(s27);
			eobj.setEmail(s28);
			
			UserEducationalDetailDao obj=new UserEducationalDetailDaoImpl();
			boolean obj2=obj.AddDetail(eobj);
			if(obj2==false) {
				RequestDispatcher rd=request.getRequestDispatcher("UserEducationalDetail.jsp");
				request.setAttribute("msg", "Problem in Adding Detail");
			}
			else {
				RequestDispatcher rd=request.getRequestDispatcher("UploadUserResume.jsp");
				request.setAttribute("msg1", "Education Detail Added Succesfully");
				rd.include(request, response);
				}
			}			
}



