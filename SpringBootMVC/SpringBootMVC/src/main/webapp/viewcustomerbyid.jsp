<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<h3 align="center">SPRING BOOT SDP DEMO</h3>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">view customer id</h3>

<div class="container">
<form method="post" action="displaycustomer" >

<label>Enter customer id:</label>
<input type="text" class="form-control" name="auname" required/>
<br/>
<select name="id" required>
<option value="">----Selete---</option>
<c:forEach items="${customerlist}" var="customer">
<option value="${customer.id}">${customer.id}-${customer.name}</option>


</c:forEach>
<select>
<input type="submit" value="view" class="btn btn-success" />

</form>

</div>
</body>
</html>