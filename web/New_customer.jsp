<%--
    Document   : New_customer
    Created on : Mar 22, 2018, 2:32:59 PM
    Author     : 2344109
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/TOBA.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TOBA Register</title>
</head>
<body>
<div id="wrapper">
    <div class="center"><%@include file="includes/header.html" %></div>
    <nav>
        <a href="index.html">Home</a>
        <a href="Login.html">Login</a>
    </nav>
    
    <h1>New Customer Registration</h1>

    <p>${message}</p>
    <form method="post" action="register">
        <label for="FirstName">First name:</label>
        <input type="text" name="FirstName" value="${user.firstName}">

        <label for="LastName">Last name:</label>
        <input type="text" name="LastName" value="${user.lastName}">

        <label for="Phone">Phone:</label>
        <input type="tel" name="Phone" value="${user.phone}">

        <label for="Address">Address:</label>
        <input type="text" name="Address" value="${user.address}">

        <label for="City">City:</label>
        <input type="text" name="City" value="${user.city}">

        <label for="State">State:</label>
        <input type="text" name="State" value="${user.state}">

        <label for="Zipcode">Zip code:</label>
        <input type="text" name="Zipcode" value="${user.zipCode}">

        <label for="Email">Email:</label>
        <input type="email" name="Email" value="${user.email}">

        <input type="submit" id="Submit" value="Submit" style="color: #f8f5e4; background-color: #699331">
    </form>

    <footer><%@include file="includes/footer.jsp" %></footer>
</div>
</body>
</html>
