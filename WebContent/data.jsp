<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection connection = null;
	Statement statement =null;
	ResultSet result = null;
	ResultSetMetaData rsmd = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = DriverManager.getConnection(/* resources/data/applicant.sql*/"jdbc:mysql://localhost:8889/applicants", "vision", "vision");
		statement = connection.createStatement();
		String s = "Select * from applicant";
		result = statement.executeQuery(s);
		
	}
	catch(SQLException e) {
		out.println("error connecting to database");
	}
	
 	int columns=0;
    try {
      rsmd = result.getMetaData();
      columns = rsmd.getColumnCount();
    }
    catch (SQLException e) {
       System.out.println("Error occurred " + e);
    }
%>
</body>
</html>