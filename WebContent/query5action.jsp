<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.bharat.queries.ExecuteQuery" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    ExecuteQuery handle5 = new ExecuteQuery();
    ResultSet rset;
    String query = request.getParameter("cname");
    String query1 = request.getParameter("year1");
    if (query != null && query1 != null)
        rset = handle5.query5(request.getParameter("cname"), request.getParameter("year1"));
    else
        rset = null;
%>
<TABLE BORDER="1">
    <TR>
        <TH>Serial Number of the Laptop</TH>
        <TH>Speed of the Laptop</TH>
        <TH>Price of Laptop</TH>
        <TH>Memory of Laptop</TH>
    </TR>
    <% while (rset.next()) { %>
    <TR>
        <TD><%= rset.getString(1) %>
        </td>
        <TD><%= rset.getString(2) %>
        </td>
        <TD><%= rset.getString(3) %>
        </td>
        <TD><%= rset.getString(4) %>
        </td>
            <% } %>
</TABLE>
</body>
</html>