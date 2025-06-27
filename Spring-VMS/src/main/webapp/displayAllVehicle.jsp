<%@page import="com.jsp.mvc.vms.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        padding: 40px;
        text-align: center;
    }

    table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 12px 16px;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #007BFF;
        color: white;
        font-weight: 600;
        text-transform: uppercase;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    a {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
    }

    a:hover {
        color: #0056b3;
    }

    p {
        font-size: 18px;
        color: #888;
    }
</style>
</head>
<body>

	<% 
		List<Vehicle> vehicles = (List) request.getAttribute("vehicleList");
		if(vehicles != null){
		
	%>
	<table>
	<tr>
		<th>ID</th>
		<th>Vehicle Model</th>
		<th>Vehicle Brand</th>
		<th>Vehicle Type</th>
		<th>Vehicle Price</th>
		<th>Update</th>
		<th>Delete</th>
	</tr>
	<% for(Vehicle v : vehicles){ %>
	<tr>
		<td><%=v.getId()%></td>
		<td><%=v.getModel()%></td>
		<td><%=v.getBrand()%></td>
		<td><%=v.getType()%></td>
		<td><%=v.getPrice()%></td>
		<td><a href="update-by-id?id=<%= v.getId()%>">Update</a></td>
		<td><a href="delete-by-id?id=<%=v.getId()%>">Delete</a>

	</tr>
	<% } %>
	</table>
	
	<%
		}else{
	%>
	
	<p>No vehicles found.</p>
	
	<%
		}
	%>

</body>
</html>