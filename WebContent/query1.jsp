<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Inserting a microchip manufacture</title>
</head>
<body>
<h3>Insert details of the manufacture:</h3>
<form method="post" action="query1action.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
            <td>
                Enter manufacture's name
            </td>
            <td><input type="text" name="mname">
            </td>
        </tr>
        <tr>
            <td>
                Enter manufacture's address
            </td>
            <td><input type="text" name="maddr">
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