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
    ExecuteQuery handle7 = new ExecuteQuery();
    ResultSet rset;
    String query = request.getParameter("os");
    if (query != null)
        rset = handle7.query7(request.getParameter("os"));
    else
        rset = null;
%>
<TABLE BORDER="1">
    <TR>
        <TH>Customer Name</TH>
    </TR>
    <% while (rset.next()) { %>
    <TR>
        <TD><%= rset.getString(1) %>
        </td>
            <% } %>
</TABLE>
</body>
</html>