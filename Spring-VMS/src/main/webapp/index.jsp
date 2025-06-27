<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f0f4f8;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }

    h1 {
        color: #333;
        margin-bottom: 30px;
    }

    h3 {
        margin: 15px 0;
    }

    a {
        text-decoration: none;
        background-color: #007BFF;
        color: white;
        padding: 12px 25px;
        border-radius: 6px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.2s ease;
        display: inline-block;
    }

    a:hover {
        background-color: #0056b3;
        transform: scale(1.05);
    }
</style>

</head>
<body>

<h1>Welcome to Vehicle Dashboard</h1>

<h3>
	<a href="addVehicle.jsp">Add Vehicle</a>
</h3>

<h3>
	<a href="display-all">Display All Vehicle</a>
</h3>



</body>
</html>