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
		    java.util.Date date = new java.util.Date();
		    int hour = date.getHours();
		    if (hour < 12) {
		        greeting = "Good morning, John, " + greeting;  // 오전 인사
		    } else {
		        greeting = "Good afternoon, John, " + greeting;  // 오후 인사
		    }
		%>
    </h1>
</body>
</html>
