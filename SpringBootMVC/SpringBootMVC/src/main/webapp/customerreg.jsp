<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<h3 align="center">SPRING BOOT SDP DEMO</h3>
<%@include file="mainnavbar.jsp" %>
<h3 align="center">Customer Registration</h3>

<div class="container">
<form method="post" action="insertcustomer" >

<label>Enter Name:</label>
<input type="text" class="form-control" name="cname" required/>
<br/>

<label>Select Gender:</label>
<input type="radio" name="cgender" class="form-check-input" value="Male" required/>Male
<input type="radio" name="cgender" class="form-check-input" value="Female" required/>Female
<input type="radio" name="cgender" class="form-check-input" value="Others" required/>Others
<br/>

<label>Select Date of birth:</label>
<input type="date" name="cdob" required/>
<br/>

<label>Enter Email ID:</label>
<input type="email" class="form-control" name="cemail" required/>
<br/>

<label>Enter Password:</label>
<input type="password" class="form-control" name="cpwd" required/>
<br/>

<label>Enter location:</label>
<input type="text" class="form-control" name="clocation" required/>
<br/>

<label>Enter Contact:</label>
<input type="number" class="form-control" name="ccontact" required/>
<br/>
<input type="submit" value="Register" class="btn btn-success" />
<input type="reset" value="clear" class="btn btn-success" />
</form>

</div>
</body>
</html>