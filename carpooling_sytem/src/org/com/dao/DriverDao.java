package org.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.com.model.DriverVO;
import org.com.model.LoginVO;
import org.com.model.UserVO;
import org.com.util.DatabaseUtil;

public class DriverDao {

	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet rs;

	public DriverDao() {
		connection = DatabaseUtil.retrieveConnection();
	}

	public boolean DriverValidate(LoginVO loginVO) throws SQLException {

		preparedStatement = connection.prepareStatement("select * from user_signup where cuname=? and cpass=?");

		preparedStatement.setString(1, loginVO.getUname());
		preparedStatement.setString(2, loginVO.getUpass());

		rs = preparedStatement.executeQuery();
		if (rs.next())
			return true;
		else
			return false;
	}

	public boolean SearchDriver(long  phone) throws SQLException {
		preparedStatement = connection.prepareStatement("select * from   driverregistermain  where phone=?");
		preparedStatement.setLong(1, phone);
		rs = null;
		rs = preparedStatement.executeQuery();
		if (rs.next())
			return false;
		else
			return true;

	}

	public boolean RegisterDriver(DriverVO driverVO) throws SQLException {
		if (SearchDriver(driverVO.getPhone())) {

			preparedStatement = connection.prepareStatement("insert into driverregistermain values(?,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, driverVO.getFname());
			preparedStatement.setString(2, driverVO.getLname());
			preparedStatement.setInt(3, driverVO.getAge());
			preparedStatement.setString(4, driverVO.getGender());
			preparedStatement.setLong(5, driverVO.getPhone());
			preparedStatement.setString(6, driverVO.getCurr_loc());
			preparedStatement.setString(7, driverVO.getDest());
			preparedStatement.setString(8, driverVO.getCity());
			preparedStatement.setString(9, driverVO.getStart_time());
			preparedStatement.setString(10, driverVO.getEnd_time());
			preparedStatement.executeUpdate();
			System.out.println("Success");
			return true;
		}
		else 
			return false;
	}
}
