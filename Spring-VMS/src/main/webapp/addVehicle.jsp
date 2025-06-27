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
        background: #f2f2f2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    form {
        background: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        width: 350px;
    }

    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #007BFF;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>

<form action="add-vehicle" method="post">
	<input type="text" placeholder="Enter the model" name="model">
	<br><br>
	<input type="text" placeholder="Enter the brand" name="brand"><br><br>
	<input type="text" placeholder="Enter the type" name="type"><br><br>
	<input type="number" placeholder="Enter the price" name="price"> <br><br>
	<input type="submit" value="ADD VEHICLE">

</form>

</body>
</html>