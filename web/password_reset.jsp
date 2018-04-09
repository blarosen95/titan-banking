<%-- 
    Document   : password_reset
    Created on : Apr 8, 2018, 1:41:30 PM
    Author     : 2344109
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TOBA Reset Password</title>
        <link rel="stylesheet" href="css/TOBA.css" type="text/css">
    </head>
    <body>
        <div id="wrapper">
            <div class="center"><%@include file="includes/header.html" %></div>
            <nav>
                <a href="index.html">Home</a>
                <a href="Login.html">Login</a>
            </nav>

            <h1>Reset Password</h1>
            <p style="color: #ff0000"><b>${message}</b></p>
            
            <form action="reset" method="post">
                <label for="Username">Username: </label>
                <input readonly="readonly" type="text" name="Username" id="Username" value=${sessionScope.user.username}>
                
                <label for="Password">New Password: </label>
                <input type="password" name="Password" id="Password">
                <label for="Confirm">Confirm Password: </label>
                <input type="password" name="Confirm" id="Confirm">
                
                <input type="submit" id="Reset" value="Reset" style="background-color: #699331; color: #f8f5e4">
            </form>
            
            <footer><%@include file="includes/footer.jsp" %></footer>
        </div>
    </body>
</html>
