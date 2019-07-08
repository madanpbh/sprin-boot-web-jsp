<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Studen List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    	<div class="container">
			<div class="row">
			    <div class="col-sm-4"><a href="/student">Add Student</a>&nbsp;&nbsp;
					<a href="/">Home</a></div>
			    <div class="col-sm-6"><h2>Student Details List</h2></div>
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
	                    <th>Date</th>
	                    <th>Gender</th>
	                    <th>Action</th>
	                </tr>
	            </thead>
	            
	                <c:forEach items="${studentList}" var="de" >
	                <tr>
	                	<td>${de.pk}</td>
	                    <td>${de.name}</td>
	                    <td>${de.age}</td>
	                    <td>${de.mobileNo}</td>
	                    <td>${de.emailId}</td>
	                    <td>${de.address}</td>
	                    <td> ${de.date}</td>
	                    <td>${de.gender}</td>
	                    <td><a href="delete/${de.pk}">Delete</a></td>
	                </tr>
	                </c:forEach>   
	        </table>
        </div>
    </body>
</html>