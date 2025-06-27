<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jsp.mvc.vms.entity.Vehicle"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f4f8;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    form {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        width: 350px;
        text-align: center;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    input[readonly] {
        background-color: #f2f2f2;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #28a745;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }
</style>

</head>
<body>

	<%Vehicle vehicle = (Vehicle) request.getAttribute("vehicleObject");%>
	
	<form action="update-vehicle" method="post">
		<input type="number" value="<%=vehicle.getId() %>" name="id" readonly> <br><br>
		<input type="text"  value="<%=vehicle.getModel() %>" name="model"><br><br>
		<input type="text" value="<%=vehicle.getBrand() %>" name="brand"><br><br>
		<input type="text" value="<%=vehicle.getType() %>" name="type"><br><br>
		<input type="number" value="<%=vehicle.getPrice() %>" name="price"><br><br>
		<input type="submit" value="UPDATE VEHICLE">
	</form>

</body>
</html>