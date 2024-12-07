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
<h3 align="center">Admin Login Form</h3>

<div class="container">
<form method="post" action="checkadminLogin" >

<label>Enter Username:</label>
<input type="text" class="form-control" name="auname" required/>
<br/>

<label>Enter Password:</label>
<input type="password" class="form-control" name="apwd" required/>
<br/>


<input type="submit" value="Login" class="btn btn-success" />
<input type="reset" value="clear" class="btn btn-success" />
</form>

</div>
</body>
</html>