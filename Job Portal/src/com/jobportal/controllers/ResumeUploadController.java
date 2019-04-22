package com.jobportal.controllers;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.jobportal.daos.ResumeUploadDao;
import com.jobportal.daosimpl.ResumeUploadDaoImpl;
import com.jobportal.models.ResumeUpload;
import com.jobportal.models.User;


@WebServlet("/resumeupload")
@MultipartConfig(maxFileSize = 16177215)
public class ResumeUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession();
		User usr=(User)session.getAttribute("user");
		
		String s1=usr.getEmail();
		
		Part filePart1=request.getPart("res");
		
		ResumeUpload d=new ResumeUpload();
		d.setResume(filePart1.getSubmittedFileName());
		d.setEmail(s1);
		
		String fileName1=filePart1.getSubmittedFileName();
		System.out.println("File Name : "+fileName1);
						
		String serverLocation=session.getServletContext().getRealPath("/");
		System.out.println(serverLocation);
		
		String filePath=serverLocation+"\\images";
		System.out.println("filePath : "+filePath);
		
		File fileObj=new File(filePath);
		if(!fileObj.exists()){
			fileObj.createNewFile();
		}
		
		InputStream is=filePart1.getInputStream();
		BufferedInputStream bis=new BufferedInputStream(is);
		
		FileOutputStream fos=new FileOutputStream(filePath+"/"+fileName1);
		BufferedOutputStream bos=new BufferedOutputStream(fos);
		int ch;
		while((ch=bis.read())!=-1){
			bos.write(ch);
		}
		
		bos.close();
		fos.close();
		ResumeUploadDao daoObj=new ResumeUploadDaoImpl();
		boolean r=daoObj.Document(d);
		if(r){
			
			RequestDispatcher rd=request.getRequestDispatcher("ViewResume.jsp");
			request.setAttribute("msg", "resume uploaded");
			rd.forward(request, response);
		}
		else {
			
			RequestDispatcher rd=request.getRequestDispatcher("UploadUserResume.jsp");
			request.setAttribute("msg", "resume Not uploaded");
			rd.forward(request, response);
		}
				
	}
}






                          

