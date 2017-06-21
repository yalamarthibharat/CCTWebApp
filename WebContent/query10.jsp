<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Deleting customers who have not made any order since a particular year</title>
</head>
<body>
<h3> Deleting the customer details who didn't make any order from particular year:</h3>
<form method="post" action="query10action.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
            <td>
                Enter year
            </td>
            <td><input type="text" name="year2">
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