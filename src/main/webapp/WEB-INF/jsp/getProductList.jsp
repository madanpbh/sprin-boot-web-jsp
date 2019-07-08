<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product detail</title>
</head>
<body>
<table class="table table-striped table-bordered">
      <c:forEach items="${getProductData}" var="ppp">
<tr>
              <td>${ppp.pid }</td>
              <td>${ppp.productName}</td>
              </tr>
    </c:forEach>
</table>
</body>
</html>