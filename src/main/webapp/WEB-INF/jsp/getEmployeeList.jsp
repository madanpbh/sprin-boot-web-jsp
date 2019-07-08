<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
			<div class="row">
			    <div class="col-sm-4"><a href="/student">Add Employee</a>&nbsp;&nbsp;
					<a href="/">Home</a></div>
			    <div class="col-sm-6"><h2>Employee Details List</h2></div>
			  </div>
	        
	        <br/>
	        <table class="table table-striped table-bordered">
	            <thead>
	                <tr>
	                	<th>Pk</th>
	                    <th>Name</th>
	                    <th>Age</th>
	                    <th>Mobile No</th>
	                    <th>Email Id</th>
	                    <th>Address</th>
	                    <th>Gender</th>
	                    <th>Date</th>
	                    <th>Action</th>
	                </tr>
	            </thead>
	            
	                <c:forEach items="${getEmployeeData}" var="de" >
	                <tr>
	                	<td>${de.pk}</td>
	                    <td>${de.name}</td>
	                    <td>${de.age}</td>
	                    <td>${de.mobileNo}</td>
	                    <td>${de.emailId}</td>
	                    <td>${de.address}</td>
	                    <td>${de.gender}</td>
	                    <td>${de.date}</td>
	                    <td><a href="delete/${de.pk}">Delete</a></td>
	                </tr>
	                </c:forEach>   
	        </table>
        </div>
    
</body>
</html>