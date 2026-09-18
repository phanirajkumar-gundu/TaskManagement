package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static Connection instance = null;
	public static Connection getConnection() {
		if(instance == null) {
			try {
				System.out.println("req to create connection");
				Class.forName("com.mysql.cj.jdbc.Driver");
				instance = DriverManager.getConnection("jdbc:mysql://localhost:3306/taskmanagement","root","12345");
				System.out.println("db connected successfully ");
			}
			catch(Exception e) {
				System.out.println(e);
			}
		}
		
		return instance;
	}
}
