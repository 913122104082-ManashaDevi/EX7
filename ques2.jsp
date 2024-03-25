<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.,java.util."%>
<%@page import="jakarta.servlet.http.,jakarta.servlet."%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <%
            Cookie[] ck = request.getCookies();
            if(ck != null && ck.length > 1){
                String userName = null;
                String email = null;
                for(Cookie cookie : ck){
                    if(cookie.getName().equals("Username"))
                        userName = cookie.getValue();
                    else if(cookie.getName().equals("Email"))
                        email = cookie.getValue();
                }
            if(userName != null && email != null){
        %>
        <h1>Hello <%= userName%></h1>
        <h1>Your email is <%= email%></h1>
        <%
            }else
                out.println("<h1>Username and Email is not found</h1>");
            }else
                out.println("<h1>No cookies found<h1>");
        %>
    </body>
</html>
