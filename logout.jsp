<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% session.invalidate(); %>
<!-- <p align="center">You have been successfully logged out!</p>
<p align="center"><a href="index.jsp">Back to Login?</a></p> -->
<center><p style="color:green">You have been successfully logged out!</p></center>
<%
getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
%>
</body>
</html>