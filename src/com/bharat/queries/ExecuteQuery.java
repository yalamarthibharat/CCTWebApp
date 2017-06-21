package com.bharat.queries;

import com.bharat.dbconnection.OracleConnectionFactory;
import com.bharat.propertyhelper.KeyConstants;
import com.bharat.propertyhelper.PropertyHelper;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ExecuteQuery {

	Statement stmt;
	ResultSet rset;
	String sqlString;
	String SERVER_URL = PropertyHelper.getValueFromConfig(KeyConstants.CONNECTION_ORACLE_JDBC_KEY);
	String userid = PropertyHelper.getValueFromConfig(KeyConstants.ORACLE_USERNAME);
	String password = PropertyHelper.getValueFromConfig(KeyConstants.ORACLE_PASSWORD);

	public boolean authenticateUser(String userid, String password) throws SQLException, ClassNotFoundException {

		this.userid = userid;
		this.password = password;
		try {
			Connection conn = OracleConnectionFactory.getConnection(); //connect to DB
			return true;
		} catch (SQLException ex) {
			System.out.println("Invalid user credentials");
			this.SERVER_URL = null;
			this.userid = null;
			this.password = null;
			return false;
		}
	}

	//Query 1
	public int query1(String mname, String maddr) throws
			SQLException, FileNotFoundException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);//connection to Oracle
		sqlString = "INSERT INTO manufacture_tab VALUES ('" + mname + "','" + maddr + "')"; //Writing the query
		System.out.println("\nInserting: " + sqlString);
		stmt.execute(sqlString);//Executing Query
		return 1;
	}

	//Query 2
	public String query2(String lord, String sno, String speed, String price, String memory, String soft, String mname, String weight, String mtype) throws
			SQLException, FileNotFoundException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);//Connection to Oracle
		String[] softadd = new String[100]; //Loading data from JSP to an array
		int length = soft.length();
		int j = 0;
		for (int i = 0; i < 100; i++) {
			softadd[i] = "";
		}
		for (int i = 0; i < length; i++) {

			if (soft.charAt(i) != ',') {
				softadd[j] = softadd[j] + soft.charAt(i);
			} else {
				j++;
			}
		}

		String softout = "";
		for (int i = 0; i <= j; i++) {        //Creating a String to pass the software values to the query
			softout = softout + "'" + softadd[i] + "'";
			if (i != j) {
				softout = softout + ",";
			}
		}

		System.out.println(softout);
		sqlString = "insert into computer_tab values(" + sno + ",'" + speed + "'," + price + "," + memory + ",software_typ(" + softout + "),(select REF(M) from manufacture_tab M WHERE M.mname = '" + mname + "'))";
		System.out.println("\nInserting: " + sqlString);
		stmt.execute(sqlString);    //executing query
		if (lord.equals("D") || lord.equals("d")) {    //condition for inserting tuple in Desktop table

			String sqlString1 = "insert into desktop_tab values(" + sno + ",'" + speed + "'," + price + "," + memory + ",software_typ(" + softout + "),(select REF(M) from manufacture_tab M WHERE M.mname = '" + mname + "')," + mtype + ")";
			stmt.execute(sqlString1);
			System.out.println("\nInserting: " + sqlString1);
		} else {    //Inserting tuple into Laptop table
			String sqlString2 = "insert into laptop_tab values(" + sno + ",'" + speed + "'," + price + "," + memory + ",software_typ(" + softout + "),(select REF(M) from manufacture_tab M WHERE M.mname = '" + mname + "')," + weight + ")";
			stmt.execute(sqlString2);
			System.out.println("\nInserting: " + sqlString2);
		}
		return "Success";
	}

	//Query 3
	public int query3(String cname, String caddr_street, String caddr_city, String caddr_state, String caddr_zipcode, String sno, String ono, String odate_month, String odate_year) throws
			SQLException, FileNotFoundException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY); //Oracle Connection
		//Queries for inserting a customer who ordered a Particular computer
		sqlString = "Insert into customer_tab values ('" + cname + "',caddress_obj('" + caddr_street + "','" + caddr_city + "','" + caddr_state + "'," + caddr_zipcode + "))";
		String sqlString1 = "Insert into order_tab values((SELECT REF(CT) FROM computer_tab CT WHERE CT.sno=" + sno + "),(SELECT REF(CS) FROM customer_tab CS where CS.cname ='" + cname + "')," + ono + ",odate_obj('" + odate_month + "','" + odate_year + "'))";
		System.out.println("\nInserting: " + sqlString);
		stmt.execute(sqlString);    //Queries Execution
		stmt.execute(sqlString1);
		return 1;
	}

	//Query 4
	public int query4(String sno, String cname) throws
			SQLException, FileNotFoundException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY); //Database Connection
		//Query for giving technical support ordered by a particular customer
		sqlString = "insert into techsupport_tab values((select REF(CT) FROM computer_tab CT WHERE CT.sno=" + sno + "),(select REF(CS) FROM customer_tab CS WHERE CS.cname = '" + cname + "'))";
		System.out.println("\nInserting: " + sqlString);
		stmt.execute(sqlString);    //Executing query
		return 1;
	}

	//Query 5
	public ResultSet query5(String cname, String year1) throws SQLException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY); // Database Connection
		//Implementing Query
		String query = "select (sno).sno,(sno).speed,(sno).price,(sno).\"memory\" from order_tab ot where (cname).cname='" + cname + "' AND ot.odate.\"year\"=" + year1 + " AND (sno).sno in (select sno from laptop_tab)";
		System.out.println("\nExecuting query: " + query);
		//Executing query and storing result in ResultSet rset
		rset = stmt.executeQuery(query);
		return rset;
	}

	//Query 6
	public ResultSet query6(String mname) throws SQLException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
		//Implementing Query
		String query = "select * from customer_tab where cname in (select  (cname).cname from techsupport_tab where (sno).sno in (select sno from computer_tab where (mname).mname in (select mname from manufacture_tab where mname='" + mname + "')))";
		System.out.println("\nExecuting query: " + query);
		//Executing query and storing result in ResultSet rset
		rset = stmt.executeQuery(query);
		return rset;
	}

	//Query 7
	public ResultSet query7(String os) throws SQLException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);    //Database Connection
		// Implementing Query
		String query = "select cname from customer_tab where cname in (select (cname).cname from order_tab where (sno).sno in (select sno from laptop_tab lt where '" + os + "' in (select n.* from computer_tab,   TABLE(computer_tab.software) n where sno = lt.sno)))";
		System.out.println("\nExecuting query: " + query);
		//Executing query and storing result in ResultSet rset
		rset = stmt.executeQuery(query);
		return rset;
	}

	//Query 8
	public ResultSet query8(String price) throws SQLException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);    //Database Connection
		//Implementing Query
		String query = "select * from customer_tab where cname in (select (cname).cname from order_tab where (sno).sno in ( select sno from desktop_tab where price>" + price + "))";
		System.out.println("\nExecuting query: " + query);
		//Executing query and storing result in ResultSet rset
		rset = stmt.executeQuery(query);
		return rset;
	}

	//Query 9
	public ResultSet query9(String sno) throws SQLException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);    //Database Connection
		//Query Implementation
		String query = "select n.* from computer_tab,   TABLE(computer_tab.software) n where computer_tab.sno=" + sno + "";
		System.out.println("\nExecuting query: " + query);
		//Executing query and storing result in ResultSet rset
		rset = stmt.executeQuery(query);
		return rset;
	}

	//Query 10
	public int query10(String year2) throws
			SQLException, FileNotFoundException, ClassNotFoundException {
		Connection conn = OracleConnectionFactory.getConnection();
		stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);    //Database Connection
		//Query Implementation
		sqlString = "delete customer_tab where cname in (select cname from customer_tab where cname not in (select (cname).cname from order_tab o where o.odate.\"year\">" + year2 + "))";
		System.out.println("\nDeleting: " + sqlString);
		stmt.execute(sqlString);    //Query Execution
		return 1;
	}
}