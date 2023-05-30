
<%@page import="java.sql.*"%>

<% 

String driver = "com.mysql.jdbc.Driver";
String conurl = "jdbc:mysql://localhost:3306/Calculator";

String userid = "root";
String password = "gintoki4";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement st = null;
ResultSet rs = null;

%>
<!DOCTYPE html>
<html>
<body>

<h1 align="center">PROFILE</h1>
<form align="center">
<table class="table" align="center" border="1" cellspacing="5">
<thead class="thead-dark">
<tr>
<th scope="col">Date</th>
<th scope="col">Height</th>
<th scope="col">Weight</th>
<th scope="col">B M I</th>
</tr>
</thead>

<%

try{
con = DriverManager.getConnection(conurl, userid, password);
st = con.createStatement();
String name = (String)session.getAttribute("username");
String sql ="select * from bmiresult where username = '"+name+"'";
rs = st.executeQuery(sql);
while(rs.next()){

%>
<tbody>
<tr>
<td><%=rs.getString("date") %></td>
<td><%=rs.getString("uheight") %></td>
<td><%=rs.getString("uweight") %></td>
<td><%=rs.getString("bmi") %></td>
</tr>
</tbody>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
<button class="btn-btn-primary"><a href="home.jsp">HOME</a></button>

</form> 
</body>
</html>
