package org.com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.com.dao.DriverDao;
import org.com.dao.LoginDao;
import org.com.model.DriverVO;
import org.com.model.LoginVO;

 
@WebServlet("/DriverController")
public class DriverController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		DriverVO driverVO=new DriverVO();
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		Long phone=Long.parseLong(request.getParameter("phone"));
		String curr_loc=request.getParameter("curr_loc");
		String dest=request.getParameter("dest");
		String city=request.getParameter("city");
		String start_time=request.getParameter("start_time");
		String end_time=request.getParameter("end_time");
		
		driverVO.setFname(fname);
		driverVO.setLname(lname);
		driverVO.setAge(age);
		driverVO.setGender(gender);
		driverVO.setPhone(phone);
		driverVO.setCurr_loc(curr_loc);
		driverVO.setDest(dest);
		driverVO.setCity(city);
		driverVO.setStart_time(start_time);
		driverVO.setEnd_time(end_time);
		
		
		DriverDao dao=new DriverDao();
		
		RequestDispatcher disp;
		
	try {
		boolean status=dao.RegisterDriver(driverVO);
		if(status) {
			
			disp=request.getRequestDispatcher("templates/DriverCreation.jsp");
			disp.forward(request, response);			
		}
		else {
			disp=request.getRequestDispatcher("templates/DriverError.jsp");
			disp.forward(request, response);			
		}
			
		
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
		
		
		
		
		
	}

	 
}