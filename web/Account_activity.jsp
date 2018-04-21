<%-- 
    Document   : Account_activity
    Created on : Apr 8, 2018, 4:28:16 PM
    Author     : 2344109
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/TOBA.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Activity</title>
    </head>
    <body>
        <div id="wrapper">
            <div class="center"><%@include file="includes/header.html" %></div>
            <nav>
                <a href="index.html">Home</a>
                <a href="Login.html">Login</a>
            </nav>
            
            <h1>Account Activity</h1>
            
            <c:if test="${sessionScope.user != null}">
                <p style="font-size: larger; text-align: center">Welcome, ${user.firstName} ${user.lastName}!</p>
            </c:if>
            <c:if test="${sessionScope.user == null}">
                <p style="color: #ff0000; font-weight: bold">Not Logged In</p>
            </c:if>
                
            <main></main>
            
            <footer><%@include file="includes/footer.jsp" %></footer>
        </div>
    </body>
</html>
