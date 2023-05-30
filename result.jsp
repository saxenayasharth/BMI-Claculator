<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page  import="java.util.*" %>
    <%@page  import="java.lang.Math" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>
<body>
<form action = "bmi.jsp">
<% 
			//Setting the Content type
		response.setContentType("text/jsp");
		
        String height = request . getParameter("uheight");
		String weight = request . getParameter("uweight");
		
		if((!(height.equals(null) || height.equals("")) && !(weight.equals(null) || weight.equals(""))))
		{
			
		float uheight = Float.parseFloat(height);
		float uweight = Float.parseFloat(weight);

		//Calculating the BMI index
		
		float hinmetres = (float) (uheight * 0.01);
		float bmi = uweight/(hinmetres * hinmetres);
		String BMI = (String) String.format("%.2f", bmi);



		
		//java.sql.Date sqldate = new java.sql.Date(new java.util.Date().getTime());
		java.util.Date d= new java.util.Date();        
        String date = String.format("%1$tY-%1$tm-%1$td", d);
		String username = (String)session.getAttribute("username"); 
		//out.print(sqldate);
		
		//Sending the bmi value to bmi.jsp
		session.setAttribute("bmi",BMI);
		
		
Connection con = null;
Statement st = null;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator","root","gintoki4");
	st = con.createStatement();
	
    String query = "insert into bmiresult values('"+username+"',"+uheight+","+uweight+","+BMI+",'"+date+"')";
	st . executeUpdate(query);
	
	response.sendRedirect("bmi.jsp");

	
}
catch(Exception e)
{
	out.print(e . getMessage());
}
		}
		else
		{		
		response.sendRedirect("homeerr.jsp");
		}
		
%>
</form>
</body>
</html>