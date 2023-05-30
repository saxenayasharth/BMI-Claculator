<%@page  import="java.sql.*" %>
<%@page  import="java.util.*" %>
<% 

String name = request.getParameter("username");
String password = request.getParameter("userpswd");

Connection con = null;
Statement st = null;

if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))))
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","gintoki4");
	st = con.createStatement();

	String query = "insert into userdetails values(null,'"+name+"','"+password+"')";
	st . executeUpdate(query);

	%>
	<center><p style="color:green">Registration Successful!</p></center>
	<%
	getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
}
catch(Exception e)
{
	out.print(e . getMessage());
}
else
{
%>
<center><p style="color:red">Please enter both Username and Password!</p></center>
<%
getServletContext().getRequestDispatcher("/registration.jsp").include(request, response);
}
%>

