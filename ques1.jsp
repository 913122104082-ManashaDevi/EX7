<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io., java.util." %>
<%@ page import="jakarta.servlet.http., jakarta.servlet." %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <h1></h1>
    <%
        String cityName = request.getParameter("cityName");
        String userName = (String) session.getAttribute("userName");
    %>
    <p>Weather information for <%= userName %>:</p>
    <%
        response.sendRedirect("https://www.bing.com/search?pglt=171&q=weather+of+" + cityName);
    %>
</body>
</html>
