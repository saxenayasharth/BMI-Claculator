<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<jsp:include page="header.jsp" />
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/calculator";
String user = "root";
String password = "gintoki4";

String sql = "select username from userdetails";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
    <!-- Page Content -->
    <div class="container">
    
<section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <div class="form-wrap">
                <h1 align="center">Login</h1>
                    <form role="form" action="login.jsp" method="post" id="login-form" autocomplete="off">
                       
                        <div class="form-group">
                            <label for="username" class="sr-only">username</label>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Enter Desired Username">
                        </div>
                         <div class="form-group">
                            <label for="password" class="sr-only">Password</label>
                            <input type="password" name="userpswd" id="key" class="form-control" placeholder="Enter Password">
                        </div>
<% 
}
catch(SQLException sqe)
{
out.println("index"+sqe);
}
%>
<table>
<tr>
<td align="center"><button><a href="registration.jsp">New user? Register here</a></button></td>
<td align="center"><button><a href="forgotpswd.jsp">Forgot Password?</a></button></td>
<input type="submit" name="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Login">
</tr>

</table>
</form>

<jsp:include page="footer.jsp" />
