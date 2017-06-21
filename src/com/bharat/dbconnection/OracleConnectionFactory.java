package com.bharat.dbconnection;

import com.bharat.propertyhelper.KeyConstants;
import com.bharat.propertyhelper.PropertyHelper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Bharat Yalamarthi on 6/20/2015.
 */

/**
 * Manages connections to Oracle
 */
public class OracleConnectionFactory {
	/*
		Oracle jdbc url, userid and password
	 */
	public static final String SERVER_URL = PropertyHelper.getValueFromConfig(KeyConstants.CONNECTION_ORACLE_JDBC_KEY);
	public static final String userid = PropertyHelper.getValueFromConfig(KeyConstants.ORACLE_USERNAME);
	public static final String password = PropertyHelper.getValueFromConfig(KeyConstants.ORACLE_PASSWORD);
	private static Connection OracleConnection = null;

	/*
			To overrride the default public constructor
	*/
	private OracleConnectionFactory() {
	}

	/**
	 * Return an existing connection / creates one if required.
	 *
	 * @return
	 */
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if (OracleConnection == null) {
			try {
				//Need to load the class to register with DriverManager.
				Class.forName("oracle.jdbc.OracleDriver");
				OracleConnection = DriverManager.getConnection(SERVER_URL, userid, password);
			} catch (ClassNotFoundException e) {
				System.err.println("Make sure you have the required JDBC driver on classpath");
				throw e;
			} catch (SQLException e) {
				System.err.println("Check the JDBC URL: " + SERVER_URL);
				throw e;
			}
		}
		return OracleConnection;
	}
}
