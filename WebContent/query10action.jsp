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
    ExecuteQuery handle10 = new ExecuteQuery();
    int X = handle10.query10(request.getParameter("year2"));
    if (X == 1) {
        out.println("Deletion Successful");
    } else {
        out.println("Deletion Unsuccessful");
    }
%>
</body>
</html>