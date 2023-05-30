<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;

%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/calculator";
String user = "root";
String dbpsw = "gintoki4";

String sql = "select * from userdetails where username=? and userpswd=?";

String name = request.getParameter("username");
String password = request.getParameter("userpswd");


if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, password);

rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("username");
userdbPsw = rs.getString("userpswd");

if(name.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("username",userdbName);
 response.sendRedirect("home.jsp"); 
} 
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Please enter both Username and Password!</p></center>
<% 
getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
}
%>
</body>
</html>