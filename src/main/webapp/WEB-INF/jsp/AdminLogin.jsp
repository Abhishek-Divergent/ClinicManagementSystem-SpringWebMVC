<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Clinic Management System</title>
<link rel="stylesheet" href="resources/CSS/bootstrap.min.css">
<script src="resources/JS/jquery-3.6.0.js"></script>
<script src="resources/JS/bootstrap.min.js"></script>
</head>
<body style="text-align: center;">
	<h1>Clinic Management System</h1>
	<div class="container-fluid">
		<form action="adminlogin" method="post">
			<fieldset>
				<legend>ADMIN</legend>
				<label for="username">Username:</label> <input type="text"
					name="username" id="username" /><br /> <br /> <label
					for="password">Password:</label> <input type="password"
					name="password" id=" password" /><br /> <br /> <input
					type="submit" value="login" />
			</fieldset>
		</form>
	</div>
</body>
</html>