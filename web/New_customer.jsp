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
    <header></header>
    <h1>New Customer Registration</h1>

    <nav>
        <a href="index.html">Home</a>
        <a href="Login.html">Login</a>
    </nav>

    <p>${message}</p>
    <form method="post" action="register">
        <label for="FirstName">First name:</label>
        <input type="text" name="FirstName" id="FirstName">

        <label for="LastName">Last name:</label>
        <input type="text" name="LastName" id="LastName">

        <label for="Phone">Phone:</label>
        <input type="tel" name="Phone" id="Phone">

        <label for="Address">Address:</label>
        <input type="text" name="Address" id="Address">

        <label for="City">City:</label>
        <input type="text" name="City" id="City">

        <label for="State">State:</label>
        <input type="text" name="State" id="State">

        <label for="Zipcode">Zip code:</label>
        <input type="text" name="Zipcode" id="Zipcode">

        <label for="Email">Email:</label>
        <input type="email" name="Email" id="Email">

        <input type="submit" id="Submit" value="Submit" style="color: #f8f5e4; background-color: #699331">
    </form>

    <footer>
        Copyright &copy; 2018 <span class="toba">Blake Rosenberg</span>
    </footer>
</div>
</body>
</html>
