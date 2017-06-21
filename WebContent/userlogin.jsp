<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>User Authentication</title>
</head>
<body>
<h3>User Authentication:</h3>
<form method="post" action="authentication.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
        </tr>
        <tr>
            <td>
                username
            </td>
            <td><input type="text" name="Username">
            </td>
        </tr>
        <tr>
            <td>
                password
            </td>
            <td><input type="password" name="password">
            </td>
        </tr>
        <tr>
            <td align="center">
                <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
</form>
</body>
</html>