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
    ExecuteQuery handle9 = new ExecuteQuery();
    ResultSet rset;
    String query = request.getParameter("sno");
    if (query != null)
        rset = handle9.query9(request.getParameter("sno"));
    else
        rset = null;
%>
<TABLE BORDER="1">
    <TR>
        <TH>Softwares used by the Laptop</TH>
    </TR>
    <% while (rset.next()) { %>
    <TR>
        <TD><%= rset.getString(1) %>
        </td>
            <% } %>
</TABLE>
</body>
</html>