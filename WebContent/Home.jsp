<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="data.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" type="text/css" href="resources/css/table.css">
<title>Application Portal</title>
</head>

<body>
<h1>Welcome to the Application Portal</h1>

Below you will find a list of applicants for the current role.
<br>
Use the Search box to search for a name.
<br><br>

<input type="text" id="searchInput" onkeyup="filtersearchTable()" title="Enter a name">

<table id="searchTable" width="50%">
	<tr class="header">
	<th style="width:60%">Name</th>
	<th style="width:40%">Candidate Number</th>
	</tr>
	<%
		try {
			while (result.next()) {
		        out.write("<tr><td><a href=Candidate" + result.getRow() + "Data.jsp>" + result.getString(1) + "</td>");
		        out.write("<td>" + result.getString(2) + "</td></tr>");
		     }
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
<script>
function filtersearchTable() {
	  var input, filter, table, tr, td, i;
	  input = document.getElementById("searchInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("searchTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }
	  }
	}
</script>
</body>
</html>