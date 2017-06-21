<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ page import="com.bharat.queries.Address" %>
<%@page import="com.bharat.queries.ExecuteQuery" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    ExecuteQuery handle8 = new ExecuteQuery();
    ResultSet rset;
    String query = request.getParameter("price");
    if (query != null)
        rset = handle8.query8(request.getParameter("price"));
    else
        rset = null;
%>
<TABLE BORDER="1">
    <TR>
        <TH>Customer Name</TH>
        <TH>Customer Address</TH>
    </TR>
    <% while (rset.next()) { %>
    <TR>
        <TD><%= rset.getString(1) %>
        </td>
        <TD><%
            java.sql.Struct jdbcStruct = (java.sql.Struct) rset.getObject(2);
            Object[] attrs = jdbcStruct.getAttributes();
            Address address = new Address((String) attrs[0], (String) attrs[1], (String) attrs[2], (BigDecimal) attrs[3]);
            out.println((String) attrs[0] + "," + (String) attrs[1] + "," + (String) attrs[2] + "," + (BigDecimal) attrs[3]);
        %></TD>
    </TR>
    <% } %>
</TABLE>
</body>
</html>