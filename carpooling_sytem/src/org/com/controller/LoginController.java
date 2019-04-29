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

 
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		LoginVO loginVO=new LoginVO();
		
		String uname=request.getParameter("uname");
		String upass=request.getParameter("upass");
		
		loginVO.setUname(uname);
		loginVO.setUpass(upass);
		
		LoginDao dao=new LoginDao();
		
		RequestDispatcher disp;
		
	try {
		boolean status=dao.LoginValidate(loginVO);
		if(status) {
			
			request.setAttribute("login",loginVO);
			
			disp=request.getRequestDispatcher("templates/Menu.jsp");
			disp.forward(request, response);			
		}
		else {
			disp=request.getRequestDispatcher("templates/LoginError.jsp");
			disp.forward(request, response);			
		}
			
		
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
		
		
		
		
		
	}

	 
}