<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Employee Detail</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<style type="text/css">
.fColor {
	color: red;
}
</style>
</head>
<body bgcolor="#867979">
	<center>
		<form:form method="POST" action="saveEmployee"
			modelAttribute="employee" style="margin-top:100px;">

			<table style="width: 30%">
				<tr>
					<td><label class="fColor">User Name</label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Age :</label></td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Mobile Number :</label></td>
					<td><form:input path="mobileNo" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Email Id :</label></td>
					<td><form:input path="emailId" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Address :</label></td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
				<td><label class="fColor">Date</label></td>
				<td><form:input path="date" id="datepicker"/>
				</tr>
				<tr>
					<td><label class="fColor">Gender :</label></td>
					<td><form:radiobutton path="gender" value="M" label="Male" />
						<form:radiobutton path="gender" value="F" label="Female" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Register"
						style="margin-left:261px;margin-top: 15px;"></td>
				</tr>
			</table>


		</form:form>
	</center>
</body>
</html>