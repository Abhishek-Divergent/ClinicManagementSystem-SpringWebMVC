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
					<form class="form-horizontal" action="AddAppointment" method="POST">
						<fieldset>

							<!-- Form Name -->
							<legend style="text-align: center;">
								<b>ADD Appointment</b>
							</legend>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="doctorId">Doctor
									ID</label>
								<div class="col-md-4">
									<input id="doctorID" name="doctorId" type="number"
										placeholder="Enter Doctor Id" class="form-control input-md">
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
								<label class="col-md-4 control-label" for="patientId">Patient
									ID</label>
								<div class="col-md-4">
									<input id="patientId" name="patientId" type="number"
										placeholder="Enter Patient Id" class="form-control input-md">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="patientName">Patient
									Name</label>
								<div class="col-md-4">
									<input id="patientName" name="patientName" type="text"
										placeholder="Enter Patient Name" class="form-control input-md">
								</div>
							</div>


							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="patientProblem">Patient
									Problem</label>
								<div class="col-md-4">
									<input id="patientProblem" name="patientProblem" type="text"
										placeholder="Enter Patient Problem"
										class="form-control input-md">
								</div>
							</div>

							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="date">Date</label>
								<div class="col-md-4">
									<input id="date" name="date" type="date"
										class="form-control input-md">
								</div>
							</div>
							<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label" for="time">Time</label>
								<div class="col-md-4">
									<input placeholder="Selected time" type="time" id="time"
										class="form-control timepicker">
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
						<b>Appointment LIST</b>
					</legend>
					<div class="table-responsive">
						<table id="example" class="table table-dark table-bordered ">
							<thead>
								<tr>
									<th>Appointment ID</th>
									<th>Appointment DoctorID</th>
									<th>Appointment DoctorName</th>
									<th>Appointment PatientID</th>
									<th>Appointment PatientName</th>
									<th>Appointment Problem</th>
									<th>Appointment Date</th>
									<th>Appointment Time</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${appointmentList}" var="appointment">
									<tr>
										<td><c:out value="${appointment.id}" /></td>
										<td><c:out value="${appointment.doctor_id}" /></td>
										<td><c:out value="${appointment.doctor_name}" /></td>
										<td><c:out value="${appointment.patient_id}" /></td>
										<td><c:out value="${appointment.patient_name}" /></td>
										<td><c:out value="${appointment.problem}" /></td>
										<td><c:out value="${appointment.date}" /></td>
										<td><c:out value="${appointment.time}" /></td>
										<td><a
											href="AddAppointment/remove?appointmentId=${appointment.id}"
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