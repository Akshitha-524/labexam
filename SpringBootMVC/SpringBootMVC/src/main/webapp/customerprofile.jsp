<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Customer c=(Customer)session.getAttribute("customer");
	
%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer home</title>
</head>
<body>
<h3 align="center">SPRING BOOT SDP DEMO</h3>
<%@include file="customernavbar.jsp" %><br/><br/>
<h3 align="center">My Profile</h3>
ID: <%=c.getId() %><br/>
NAME:<%=c.getName() %><br/>
GENDER:<%=c.getGender() %><br/>
DOB:<%=c.getDateofbirth() %><br/>
EMAIL:<%=c.getEmail() %><br/>
LOCATION:<%=c.getLocation() %><br/>
CONTACT:<%=c.getContact() %><br/>
</body>
</html>