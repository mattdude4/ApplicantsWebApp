<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="data.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/table.css">
<script>
function goBack() {
    window.history.back()
}
</script>
<title>Candidate 1</title>
</head>

<body>
<br><br><br>

<table id="searchTable">
	
<tr class="header">
	<th>Name</th>
	<th>Candidate Number</th>
	<th>First Pass Score</th>
	<th>Email Address</th>
	<th>Experience</th>
	<th>Qualifications</th>
</tr>
<%
	try {
		result.absolute(1);
		out.write("<tr>");
		for(int i=1; i<=6; i++) {
		out.write("<td>" + result.getString(i) + "</td>");
		}
		out.write("</tr>");
		result.close();
	    statement.close();
	    connection.close();
	}
	catch (SQLException e) {
        System.out.println("Error " + e);
    }
	finally {
	     try {
	       if (statement != null)
	        statement.close();
	       }  catch (SQLException e) {}
	       try {
	        if (connection != null)
	         connection.close();
	        } catch (SQLException e) {}
	}
%>

</table>
<br><br><br>

<button onclick="goBack()">Go Back</button>
</body>
</html>