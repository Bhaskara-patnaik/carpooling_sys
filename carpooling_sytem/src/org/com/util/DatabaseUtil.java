package org.com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
static Connection con;

   static {
	   try {
		Class.forName ("com.mysql.jdbc.Driver");
		if(con==null)
			   con=DriverManager.getConnection("jdbc:mysql://localhost/carpool","root","root");
	} catch (ClassNotFoundException | SQLException e) {
		 
		e.printStackTrace();
	}	   
   }
   
   public static Connection retrieveConnection() {
	   return con;
   }
	
}
