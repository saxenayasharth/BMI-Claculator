<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<jsp:include page="header.jsp" />

<!-- Page Content -->


    <div class="container">
    
<section id="login">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <div class="form-wrap">
                <h4 align="center">Welcome, <%=session.getAttribute("username")%>!</h4>
                <h1 align="center">B M I Calculator</h1>
                <form role="form" action="result.jsp" method="post" id="login-form" autocomplete="off">
                       
                        <div class="form-group">
                            <label for="height" class="sr-only">Height</label>
                            <input type="text" name="uheight" id="uheight" class="form-control" placeholder="Enter Your Height (in cm)">
                        </div>
                         <div class="form-group">
                            <label for="weight" class="sr-only">Weight</label>
                            <input type="uweight" name="uweight" id="key" class="form-control" placeholder="Enter Your Weight (in kg)">
                        </div>
                        
 <table>
<tr>
<td align="center"><button><a href="logout.jsp">Logout?</a></button></td>
<td align="center"><button><a href="profile.jsp">Profile</a></button></td>
<input type="submit" name="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Calculate">
</tr>
</table>
</form>


<jsp:include page="footer.jsp" />


