<%-- 
    Document   : footer
    Created on : Apr 8, 2018, 4:52:40 PM
    Author     : 2344109
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@page import="java.util.GregorianCalendar, java.util.Calendar" %>
        <%
            GregorianCalendar currentDate = new GregorianCalendar();
            int currentYear = currentDate.get(Calendar.YEAR);
            int currentDay = currentDate.get(Calendar.DAY_OF_MONTH);
            String currentMonth = new SimpleDateFormat("MMM").format(currentDate.getTime());
        %>
        <p>&copy; Copyright <%= currentMonth %> <%= currentDay %>, <%= currentYear %> Blake Rosenberg</p>
    </body>
</html>
