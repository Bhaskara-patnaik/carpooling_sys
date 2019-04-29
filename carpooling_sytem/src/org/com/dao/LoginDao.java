package org.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.com.model.LoginVO;
import org.com.model.UserVO;
import org.com.util.DatabaseUtil;

public class LoginDao {

	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet rs;

	public LoginDao() {
		connection = DatabaseUtil.retrieveConnection();
	}

	public boolean LoginValidate(LoginVO loginVO) throws SQLException {

		preparedStatement = connection.prepareStatement("select * from user_signup where cuname=? and cpass=?");

		preparedStatement.setString(1, loginVO.getUname());
		preparedStatement.setString(2, loginVO.getUpass());

		rs = preparedStatement.executeQuery();
		if (rs.next())
			return true;
		else
			return false;
	}

	public boolean SearchUser(String cuname) throws SQLException {
		preparedStatement = connection.prepareStatement("select * from  user_signup  where cuname=?");
		preparedStatement.setString(1, cuname);
		rs = null;
		rs = preparedStatement.executeQuery();
		if (rs.next())
			return false;
		else
			return true;

	}

	public boolean RegisterUser(UserVO userVO) throws SQLException {
		if (SearchUser(userVO.getCuname())) {

			preparedStatement = connection.prepareStatement("insert into  user_signup  values(?,?,?,?,?,?,?)");
			preparedStatement.setString(1, userVO.getFname());
			preparedStatement.setString(2, userVO.getLname());
			preparedStatement.setInt(3, userVO.getAge());
			preparedStatement.setString(4, userVO.getGender());
			preparedStatement.setLong(5, userVO.getCnumber());
			preparedStatement.setString(6, userVO.getCuname());
			preparedStatement.setString(7, userVO.getCpass());

			preparedStatement.executeUpdate();
			System.out.println("Success");
			return true;
		}
		else 
			return false;
	}
}
