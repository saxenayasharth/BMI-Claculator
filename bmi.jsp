<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"                                                    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<%@page import="java.lang.Math" %>
<jsp:include page="header.jsp" />

<!-- Page Content -->
    <div class="container">
    
<section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <div class="form-wrap">
                <h2 align="center">Your Body Mass Index(BMI)</h2>
                    <form role="form" action="bmi.jsp" method="post" id="login-form" autocomplete="off">


<% 
String bmi = (String)session.getAttribute("bmi");
%>

<%-- <div class="form-group">
 
 <input type="text" name="bmi" align="center" id="key" class="form-control" value="<%=bmi%>" readonly/>
 </div> --%>
 <%
float BMI = Float.parseFloat(bmi);
 if(BMI < 18.5)
 {
 
 %>
 <div class="form-group">
 
 <input type="text" name="bmi" align="center" id="key" class="form-control" value="<%=bmi%>" readonly/>
 <input type="text" name="result" align="center" id="key" class="form-control" value="Under Weight" readonly/>
 </div>
<table class="table">
<thead class="thead-dark">
<tr>
<th scope="col">Websites</th>
<th scope="col">Videos</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://www.medicalnewstoday.com/articles/321982#what-are-the-risks-of-being-underweight">Risks of being under weight!</a></td>
<td><a href="https://youtu.be/iXuks-LamjY">How to gain Weight?</a></td>
</tr>
<tr>
<td><a href="https://www.keralaayurveda.biz/blog/gain-weight-naturally-using-ayurveda">Gain weight using Ayurveda</a></td>
<td><a href="https://youtu.be/oOXn1RrZ0eU">Healthy ways to gain weight</a></td>
</tr>
<tr>
<td><a href="https://www.stylecraze.com/articles/amazing-home-remedies-for-weight-gain/">Gain weight using Home Remedies</a></td>
<td><a href="https://youtu.be/1Q6ij1qSrrw">Foods that help in gaining weight(Ayurveda)</a></td>
</tr>
</tbody>
<tr>
<td><h4 align="center"><a href="home.jsp">Back to Home?</a></h4></td>
<td><h4 align="center"><a href="bmiranges.jsp">BMI ranges</a></h4></td>
</tr>
</table>
<% 

 } 
 else if(BMI > 18.5 && BMI < 24.9)
 {

%>
 <div class="form-group">
 
 <input type="text" name="bmi" align="center" id="key" class="form-control" value="<%=bmi%>" readonly/>
 <input type="text" name="result" align="center" id="key" class="form-control" value="Normal" readonly/>
 </div>
<table class="table">
<thead class="thead-dark">
<tr>
<th scope="col">Websites</th>
<th scope="col">Videos</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://www.nia.nih.gov/health/maintaining-healthy-weight">How to maintain a healthy weight?</a></td>
<td><a href="https://youtu.be/OkNbacmwNp4">How portion control helps you</a></td>
</tr>
<tr>
<td><a href="https://vediherbals.com/blogs/blog/maintaining-healthy-weight-using-ayurveda">Maintain a healthy weight using Ayurveda</a></td>
</tr>
</tbody>
<tr>
<td><h4 align="center"><a href="home.jsp">Back to Home?</a></h4></td>
<td><h4 align="center"><a href="bmiranges.jsp">BMI ranges</a></h4></td>
</tr>

</table>
<%
 }
 else if(BMI > 25 && BMI < 29.9)
 {

%>
 <div class="form-group">
 
 <input type="text" name="bmi" align="center" id="key" class="form-control" value="<%=bmi%>" readonly/>
 <input type="text" name="result" align="center" id="key" class="form-control" value="Over Weight" readonly/>
 </div>
<table class="table">
<thead class="thead-dark">
<tr>
<th scope="col">Websites</th>
<th scope="col">Videos</th>
<th scope="col">Books</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://www.niddk.nih.gov/health-information/weight-management/adult-overweight-obesity/health-risks">Risks of being overweight!</a></td>
<td><a href="https://youtu.be/hCQ5hl9m8Jk">Ancient Eating habits</a></td>
<td><a href="https://www.everydayhealth.com/weight/most-inspiring-weight-loss-books/">Books to inspire your weight loss journey!</a></td>
</tr>
<tr>
<td><a href="https://www.nhs.uk/live-well/healthy-weight/managing-your-weight/12-tips-to-help-you-lose-weight/">Tips to lose weight</a></td>
<td><a href="https://youtu.be/zAC9xdbQ3sc">Easy to prepare drinks for weight loss</a></td>
</tr>
<tr>
<td><a href="https://youtu.be/Tuz9YGtfTII">Foods that help in losing weight(Ayurveda)</a></td>
</tr>
</tbody>
<tr>
<td><h4 align="center"><a href="home.jsp">Back to Home?</a></h4></td>
<td><h4 align="center"><a href="bmiranges.jsp">BMI ranges</a></h4></td>
</tr>
</table>
<% 
} 
else if(BMI > 30 && BMI < 39.9)
 {

%>
 <div class="form-group">
 
 <input type="text" name="bmi" align="center" id="key" class="form-control" value="<%=bmi%>" readonly/>
 <input type="text" name="result" align="center" id="key" class="form-control" value="Obese" readonly/>
 </div>
<table class="table">
<thead class="thead-dark">
<tr>
<th scope="col">Websites</th>
<th scope="col">Videos</th>
<th scope="col">Books</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="https://www.cdc.gov/obesity/adult/causes.html">Causes and Consequences of Obesity</a></td>
<td><a href="https://youtu.be/hCQ5hl9m8Jk">Ancient Eating habits</a></td>
<td><a href="https://www.everydayhealth.com/weight/most-inspiring-weight-loss-books/">Books to inspire your weight loss journey!</a></td>
</tr>
<tr>
<td><a href="https://www.nhs.uk/live-well/healthy-weight/managing-your-weight/12-tips-to-help-you-lose-weight/">Tips to lose weight</a></td>
<td><a href="https://youtu.be/zAC9xdbQ3sc">Easy to prepare drinks for weight loss</a></td>
</tr>
<tr>
<td><a href="https://youtu.be/Tuz9YGtfTII">Foods that help in losing weight(Ayurveda)</a></td>
</tr>
</tbody>
<tr>
<td><h4 align="center"><a href="home.jsp">Back to Home?</a></h4></td>
<td><h4 align="center"><a href="bmiranges.jsp">BMI ranges</a></h4></td>
</tr>
</table>
<% } %>
</form>
                 
                </div>
            </div> <!-- /.col-xs-12 -->
        </div> <!-- /.row -->
    </div> <!-- <!-- /.container --   -->
</section>


        <hr>

 <jsp:include page="header.jsp" />