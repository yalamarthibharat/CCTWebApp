<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@page import="com.bharat.queries.ExecuteQuery" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    ExecuteQuery handle3 = new ExecuteQuery();
    int X = handle3.query3(request.getParameter("cname"), request.getParameter("caddr_street"), request.getParameter("caddr_city"), request.getParameter("caddr_state"), request.getParameter("caddr_zipcode"), request.getParameter("sno"), request.getParameter("ono"), request.getParameter("odate_month"), request.getParameter("odate_year"));
    if (X == 1) {
        out.println("1 row Successfully inserted");
    } else {
        out.println("Insertion Unsuccessful");
    }
%>
</body>
</html>