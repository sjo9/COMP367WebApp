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
            int hour = currentTime.getHour();  // 현재 시간을 가져옵니다.

            if (hour < 12) {
                greeting = "Good morning, Seyeon, " + greeting;  // 오전 인사
            } else {
                greeting = "Good afternoon, Seyeon, " + greeting;  // 오후 인사
            }
            out.print(greeting);  // 결과를 출력
        %>
    </h1>
</body>
</html>
