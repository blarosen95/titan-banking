<%-- 
    Document   : Error_java
    Created on : Mar 22, 2018, 3:30:11 PM
    Author     : 2344109
--%>

<%@page isErrorPage="true" import="java.io" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Error</title>
    </head>
    <body>
        <h1>Java Error</h1>
        <p>Sorry, Java has thrown an exception.</p>
        <p>To continue, click the Back button.</p>
        
        <h2>Details</h2>
        <p>Type: <%=exception.getClass().getName() %></p>
        <p>Message: <%=exception.getMessage() %></p>
    </body>
</html>
