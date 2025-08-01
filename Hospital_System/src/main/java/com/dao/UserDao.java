package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.User;

public class UserDao {
private Connection conn;

public UserDao(Connection conn) {
	super();
	this.conn = conn;
}

public boolean userRegister(User u) {
	boolean f=false;

	try {
		String sql="insert into user_details(full_name,email,passowrd) values(?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, u.getFullname());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPassword());

		int i=ps.executeUpdate();
		if(i==1) {f=true;}

	} catch(Exception e) {e.printStackTrace();
	}

	return f;

}

}
