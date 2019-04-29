package org.com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.com.dao.LoginDao;
import org.com.model.LoginVO;
import org.com.model.UserVO;

 
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		UserVO userVO=new UserVO();
	
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		Long cnumber=Long.parseLong(request.getParameter("cnumber"));
		String cuname=request.getParameter("cuname");
		String cpass=request.getParameter("cpass");
		
		
		
		
		userVO.setFname(fname);
		userVO.setLname(lname);
		userVO.setAge(age);
		userVO.setGender(gender);
		userVO.setCnumber(cnumber);
		userVO.setCuname(cuname);
		userVO.setCpass(cpass);
		LoginDao dao=new LoginDao();
	
		RequestDispatcher disp;
		
		try {
			if(dao.RegisterUser(userVO))
			{
				response.getWriter().print("<script language='JavaScript'>alert('Hello');</script>");
				
				request.setAttribute("user",userVO);
				
				disp=request.getRequestDispatcher("templates/login.jsp");
				disp.forward(request, response);			
			}
			
			else {
				disp=request.getRequestDispatcher("templates/LoginError.jsp");
				disp.forward(request, response);			
			}
		} catch (SQLException e) {
//		System.out.println(e);
			e.printStackTrace();
		}
	}  
		
	

	 
}
