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


<body>
	<header>
		<div>
			<div style="text-align: center;">
				<h1>
					<b> Clinic Management System </b>
				</h1>
			</div>
		</div>
	</header>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-12">
					<form class="form-horizontal" action="AddPatient" method="POST">
						<fieldset>

							<!-- Form Name -->
							<legend style="text-align: center;">
								<b>ADD PATIENT</b>
							</legend>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="patientName">Patient
									Name</label>
								<div class="col-md-4">
									<input id="patientName" name="patientName" type="text"
										placeholder="Enter Patient Name" class="form-control input-md">
								</div>
							</div>
	
	                 <div class="form-group">
								<label class="col-md-4 control-label" for="gender">Patient
									Gender</label>
									<div class="radio-inlin col-md-4">
								<label class="form-check-label" for="male">
									<input class="form-check-input" type="radio"
									name="gender" id="gender" value="m"> 	Male </label>
								<label class="form-check-label" for="female">
									<input class="form-check-input" type="radio"
									name="gender" id="gender" checked value="f">Female </label>
							</div>
							
							</div>
	
							
                        <!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="patientAge">Patient Age</label>
								<div class="col-md-4">
									<input id="patientAge" name="patientAge" type="number"
										placeholder="Enter patient Age"
										class="form-control input-md">
								</div>
							</div>
                             <div class="form-group">
								<label class="col-md-4 control-label" for="patientWeight">Patient Weight</label>
								<div class="col-md-4">
									<input id="patientWeight" name="patientWeight" type="number"
										placeholder="Enter Patient Weight" class="form-control input-md">
								</div>
							</div>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="patientContact">Patient Phone Number</label>
								<div class="col-md-4">
									<input id="patientContact" name="patientContact" type="number"
										placeholder="Enter Patient Phone Number"
										class="form-control input-md">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label" for="patientAddress">Patient Address</label>
								<div class="col-md-4">
									<input id="patientAddress" name="patientAddress"
										type="text" placeholder="Enter Patient Address"
										class="form-control input-md">
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
					<legend style="text-align: center;">
						<b>Patient LIST</b>
					</legend>
					<div class="table-responsive">
						<table id="example" class="table table-dark table-bordered ">
							<thead>
								<tr>
									<th>Patient ID</th>
									<th>Patient Name</th>
									<th>Patient Age</th>
									<th>Patient Gender</th>
									<th>Patient Weight</th>
									<th>Patient Contact</th>
									<th>Patient Address</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${paitentList}" var="patient">
									<tr>
										<td><c:out value="${patient.id}" /></td>
										<td><c:out value="${patient.name}" /></td>
										<td><c:out value="${patient.gender}" /></td>
								        <td><c:out value="${patient.age}" /></td>
										<td><c:out value="${patient.weight}" /></td>
										<td><c:out value="${patient.contact}" /></td>
										<td><c:out value="${patient.address}" /></td>
										<td><a href="AddPatient/remove?patientId=${patient.id}"
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