<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@page import="com.bharat.queries.ExecuteQuery" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Authentication</title>
</head>
<body>
<%
    ExecuteQuery handle = new ExecuteQuery();
    if (handle.authenticateUser(request.getParameter("Username"), request.getParameter("password"))) {
        System.out.println("Login Successful");
        response.sendRedirect("menu.jsp");
    } else {
        System.out.println("Access denied");
    }
%>
</body>
</html>