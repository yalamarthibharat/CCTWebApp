<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Inserting a laptop/desktop</title>
</head>
<body>
<h3> Insert details of Laptop/Desktop:</h3>
<form method="post" action="query2action.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
            <td>
                Enter L for Laptop and D for Desktop
            </td>
            <td><input type="text" name="lord">
            </td>
        </tr>
        <tr>
            <td>
                Serial number
            </td>
            <td><input type="text" name="sno">
            </td>
        </tr>
        <tr>
            <td>
                Speed
            </td>
            <td><input type="text" name="speed">
            </td>
        </tr>
        <tr>
            <td>
                Price
            </td>
            <td><input type="text" name="price">
            </td>
        </tr>
        <tr>
            <td>
                Memory
            </td>
            <td><input type="text" name="memory">
            </td>
        </tr>
        <tr>
            <td>
                Softwares used (Ex: C,JAVA)
            </td>
            <td><input type="text" name="soft">
            </td>
        </tr>
        <tr>
            <td>
                Manufacture's name
            </td>
            <td><input type="text" name="mname">
            </td>
        </tr>
        <tr>
            <td>
                Weight of the laptop
            </td>
            <td><input type="text" name="weight">
            </td>
        </tr>
        <tr>
            <td>
                Monitor type of desktop
            </td>
            <td><input type="text" name="mtype">
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