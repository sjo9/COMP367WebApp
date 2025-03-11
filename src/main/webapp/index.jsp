<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>COMP367</title>
</head>
<body>
    <h1>
        <%
            String greeting = "Welcome to COMP367!";
            java.time.LocalTime currentTime = java.time.LocalTime.now();
            int hour = currentTime.getHour();

            if (hour < 12) {
                greeting = "Good morning, Seyeon, " + greeting;
            } else {
                greeting = "Good afternoon, Seyeon, " + greeting;
            }
            out.print(greeting);
        %>
    </h1>
</body>
</html>