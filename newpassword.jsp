<%@page  import="java.sql.*" %>
<%@page  import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passwordreset</title>
</head>
<body>
<%

String name = request.getParameter("username");
String password = request.getParameter("userpswd");
String password1 = request.getParameter("userpswd1");

if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals("")) && !(password1.equals(null) || password1.equals(""))))
{
	
Connection con = null;
 Statement st1 = null; 
/*  Statement st = null; 
 ResultSet rs = null; */ 
try{

	Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","gintoki4");

/*  String sql = "select * from userdetails where username = '"+name+"'";

st = con.createStatement();
rs = st.executeQuery(sql);
while(rs.next())
{ 
	
  String Username = rs.getString("username"); */  


 /* if(!Username.equals(name))
{
	response.sendRedirect("error.jsp");
}  */
  if(password.equals(password1))
{
st1 = con.createStatement();
String sql1 = "update userdetails set userpswd='"+password+"' where username='"+name+"'";
st1.executeUpdate(sql1);

response.sendRedirect("success.jsp"); 
}
else
{
	response.sendRedirect("pswderror.jsp"); 
}
/* } */ 
con.close();
}
catch (Exception e) {
e.printStackTrace(); 
out.print(e . getMessage());
}
}
else
{
	%>
	<center><p style="color:red">Please enter all the required details!</p></center>
	<% 
	getServletContext().getRequestDispatcher("/forgotpswd.jsp").include(request, response);
	
}
%>

</body>
</html>