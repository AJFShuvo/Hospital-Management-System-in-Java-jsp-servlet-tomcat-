package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn;

	public static Connection getConn() {
		try {
			// for loading driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// creating connection
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_2", "root", "T#9758@qlph");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

}