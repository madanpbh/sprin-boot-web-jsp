<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Welcome</title>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- <link rel="stylesheet" href="/resources/demos/style.css">
   -->
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style type="text/css">
.fColor {
	color: green;
}
</style>

<script type="text/javascript">
function validateForm(){

	var errorFlag=true;
	var name=$('#name').val();
	$('#errorname').empty();
	
	if(name==null || name==""){
		
		$('#errorname').append("please enter name");
		$('#errorname').show();
		errorFlag=false;
	}
	
	
	
	
	$( function() {
    $( "#datepicker" ).datepicker();
  } );
}


/* function validate(){
	alert("hello");
	
	return false;
} */
</script>
</head>
<body>
	<center>
		<div class="row">
			    <div class="col-sm-12"><a href="/student">Add Student</a>&nbsp;&nbsp;
					<a href="/">Home</a>&nbsp;&nbsp;
					<a href="/getList">Get Student List </a></div>
		</div>			
		<form:form form="myForm" method="POST" action="saveStudent" modelAttribute="student" 
			style="margin-top:100px;">

			<table style="width: 30%">
				<tr>
					<td><label class="fColor">Name</label></td>
					<td><form:input path="name" placeholder="your full name" id="name" /><label id="errorname" style="display:none;" class="errorColor"></label></td>
				</tr>
				<tr>
					<td><label class="fColor">Age</label></td>
					<td><form:input path="age" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Mobile Number</label></td>
					<td><form:input path="mobileNo" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Email ID</label></td>
					<td><form:input path="emailId" /></td>
				</tr>
				<tr>
					<td><label class="fColor">Address</label></td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
				<td><label class="fColor">Date</label></td>
				<td><form:input path="date" id="datepiker"/></td>
				</tr>
				
				<tr>
					<td><label class="fColor">Gender</label></td>
					<td>
					<form:radiobutton path="gender" value="M" label="Male" /> 
						<form:radiobutton path="gender" value="F" label="Female" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" value="Register" onclick="return validateForm()"
						style="margin-left: 261px; margin-top: 15px;"></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>