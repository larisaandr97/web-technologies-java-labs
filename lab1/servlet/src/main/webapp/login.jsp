<%--
  Created by IntelliJ IDEA.
  User: Georgiana
  Date: 10/09/2020
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/login" method="post">
    <table>
        <tr>
            <td>Username:</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>Password :</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <th><input type="submit" value="Submit" name="find"/></th>
    </table>
    <div style="color: red">${errorMessage}</div>

</form>
</body>
</html>
