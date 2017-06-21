<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Inserting a customer</title>
</head>
<body>
<h3> Insert details of the Customer who ordered a particular computer:</h3>
<form method="post" action="query3action.jsp">
    <table align="center" cellspacing="2" cellpadding="3" border="1">
        <tr>
            <td>
                Customer name
            </td>
            <td><input type="text" name="cname">
            </td>
        </tr>
        <tr>
            <td>
                Enter street name of the customer
            </td>
            <td><input type="text" name="caddr_street">
            </td>
        </tr>
        <tr>
            <td>
                Customer's city
            </td>
            <td><input type="text" name="caddr_city">
            </td>
        </tr>
        <tr>
            <td>
                Customer's state
            </td>
            <td><input type="text" name="caddr_state">
            </td>
        </tr>
        <tr>
            <td>
                Customer's zipcode
            </td>
            <td><input type="text" name="caddr_zipcode">
            </td>
        </tr>
        <tr>
            <td>
                Serial number of the computer ordered
            </td>
            <td><input type="text" name="sno">
            </td>
        </tr>
        <tr>
            <td>
                Order number
            </td>
            <td><input type="text" name="ono">
            </td>
        </tr>
        <tr>
            <td>
                Enter month in which order is placed
            </td>
            <td><input type="text" name="odate_month">
            </td>
        </tr>
        <tr>
            <td>
                Enter year in which order is placed
            </td>
            <td><input type="text" name="odate_year">
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