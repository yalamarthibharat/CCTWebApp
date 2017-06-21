<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Technical support to a computer</title>
</head>
<body>
<h3> Enter details of the Computer to give technical support:</h3>
<form method="post" action="query4action.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
            <td>
                Serial number of the computer
            </td>
            <td><input type="text" name="sno">
            </td>
        </tr>
        <tr>
            <td>
                Customer name
            </td>
            <td><input type="text" name="cname">
            </td>
        </tr>
        <tr>
            <td align="center">
                <input type="submit" value="Submit">
            </td>
            <td align="center">
                <a href="menu.jsp">Back to Menu</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>