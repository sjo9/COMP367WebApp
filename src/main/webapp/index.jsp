<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>COMP367</title>
</head>
<body>
    <h1>
        <%
            java.util.Calendar cal = java.util.Calendar.getInstance();
            int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
            String greeting;
            if (hour < 12) {
                greeting = "Good morning";
            } else {
                greeting = "Good afternoon";
            }
        %>
        <%= greeting %>, Seyeon! Welcome to COMP367!
    </h1>
</body>
</html>
