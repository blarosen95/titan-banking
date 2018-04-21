<%-- 
    Document   : Success
    Created on : Apr 8, 2018, 2:02:28 PM
    Author     : 2344109
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/TOBA.css">
        <title>Success</title>
    </head>
    <body>
        <div id="wrapper">
            <div class="center"><%@include file="includes/header.html" %></div>
            <nav>
                <a href="index.html">Home</a>
                <a href="Login.html">Login</a>
            </nav>
            <main>
                <p class="center">Account successfully created.</p>
                <table>
                    <caption><b>Account Information</b></caption>
                    <tbody><tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>State</th>
                            <th>Zip Code</th>
                            <th>Email</th>
                            <th>Username</th>
                            <th>Password</th>
                        </tr>
                        <tr>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.phone}</td>
                            <td>${user.address}</td>
                            <td>${user.city}</td>
                            <td>${user.state}</td>
                            <td>${user.zipCode}</td>
                            <td>${user.email}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                        </tr>
                    </tbody>
                </table>
            </main>
            <footer><%@include file="includes/footer.jsp" %></footer>
        </div>
    </body>
</html>