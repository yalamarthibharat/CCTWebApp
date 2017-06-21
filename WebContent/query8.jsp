<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Customers who bought a desktop that costs more than particular price</title>
</head>
<body>
<h3> Customers who bought a desktop less than a particular price:</h3>
<form method="post" action="query8action.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
            <td>
                Enter price of desktop
            </td>
            <td><input type="text" name="price">
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