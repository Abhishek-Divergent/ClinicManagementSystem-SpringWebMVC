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
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script src="resources/JS/jquery-3.6.0.js"></script>
<script src="resources/JS/bootstrap.min.js"></script>
</head>


<body>
	<header>
		<div>
			<div style="text-align: center;">
				<h1><b> Clinic Management System </b></h1>
			</div>
		</div>
	</header>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-12">
					<form class="form-horizontal" action="AddDoctor"
						method="POST">
						<fieldset>

							<!-- Form Name -->
							<legend style="text-align: center;"> <b>ADD DOCTOR</b></legend>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorUserName">Doctor
									User Name</label>
								<div class="col-md-4">
									<input id="doctorUserName" name="doctorUserName" type="email"
										placeholder="Enter Doctor UserName"
										class="form-control input-md">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorName">Doctor
									Name</label>
								<div class="col-md-4">
									<input id="doctorName" name="doctorName" type="text"
										placeholder="Enter Doctor Name" class="form-control input-md">

								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorPassword">Doctor
									Password</label>
								<div class="col-md-4">
									<input id="doctorPassword" name="doctorPassword"
										type="password" placeholder="Enter Doctor Password"
										class="form-control input-md">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorContact">Doctor
									Phone Number</label>
								<div class="col-md-4">
									<input id="doctorContact" name="doctorContact" type="number"
										placeholder="Enter Doctor Phone Number"
										class="form-control input-md">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorSpeciality">Doctor
									Speciality</label>
								<div class="col-md-4">
									<input id="doctorSpeciality" name="doctorSpeciality"
										type="text" placeholder="Enter Doctor Speciality"
										class="form-control input-md">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorFees">Doctor
									Fees</label>
								<div class="col-md-4">
									<input id="doctorFees" name="doctorFees" type="number"
										placeholder="Enter Doctor Fees" class="form-control input-md">
								</div>
							</div>
							<!-- Button -->
							<div class="form-group">
								<label class="col-md-4 control-label" for="add"></label>
								<div class="col-md-4">
									<input type="submit" class="btn btn-info" value="Add Patient">
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="col"></div>
			</div>

			<div class="row ">
				<div class="col">
					<legend style="text-align: center;"><b>DOCTOR LIST</b></legend>
					<div class="table-responsive">
						<table id="example" class="table table-dark table-bordered ">
							<thead>
								<tr>
								    
								    <th>Doctor ID</th>
									<th>Doctor Name</th>
									<th>Doctor UserName</th>
									<th>Doctor Password</th>
									<th>Doctor Contact</th>
									<th>Doctor Speciality</th>
									<th>Doctor Fees</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${doctorList}" var="doctor">
									<tr>
										<td><c:out value="${doctor.id}" /></td>
										<td><c:out value="${doctor.name}" /></td>
										<td><c:out value="${doctor.username}" /></td>
										<td><c:out value="${doctor.password}" /></td>
										<td><c:out value="${doctor.contact}" /></td>
										<td><c:out value="${doctor.speciality}" /></td>
										<td><c:out value="${doctor.fees}" /></td>
										<td><a href="AddDoctor/remove?doctorId=${doctor.id}"
											class="btn btn-danger" type="button">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col"></div>
			</div>
		</div>
	</div>


</body>



</html>