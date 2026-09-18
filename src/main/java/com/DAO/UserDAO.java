package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Users;
import com.utility.DBConnection;

public class UserDAO {
	DBConnection db = new DBConnection();
	Connection con = null;
	boolean status = false;

	public boolean registerUser(Users user) {
		String insert = "insert into users (name , email , password , role) values (?,?,?,?)";
		con = db.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(insert);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getRole());

			int n = ps.executeUpdate();
			if (n > 0) {
				status = true;
				System.out.println("inserted successfully !!!!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public boolean validateUser(String email, String password) {
		String query = "select * from users where email = ? and password = ?";
		con = db.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				status = true;
				System.out.println("validation successful");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
