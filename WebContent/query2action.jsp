<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.bharat.queries.ExecuteQuery" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    ExecuteQuery handle2 = new ExecuteQuery();
    String X = handle2.query2(request.getParameter("lord"), request.getParameter("sno"), request.getParameter("speed"), request.getParameter("price"), request.getParameter("memory"), request.getParameter("soft"), request.getParameter("mname"), request.getParameter("weight"), request.getParameter("mtype"));
    if (X == "Success") {
        out.println("1 row Successfully inserted");
    } else {
        out.println("Insertion Unsuccessful");
    }
%>
</body>
</html>