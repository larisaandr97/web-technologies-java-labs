<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Georgiana
  Date: 10/09/2020
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lab One</title>
</head>
<body>
<h1>Java Servlets</h1>
<table style="border: 1px solid black;">
    <tr>
        <td>A servlet is a Java programming language class that is used to extend the capabilities of servers that host
            applications accessed by means of a request-response programming model. In simple words,
            the Servlet is a class that handles requests, processes them and reply back with a response.
        </td>
    </tr>
    <tr>
        <td>A JSP file is a server-generated web page. It is similar to an .ASP or .PHP file, but contains Java code
            instead
            of
            ActiveX or PHP. The code is parsed by the web server, which generates HTML that is sent to the user's
            computer.
        </td>
    </tr>
</table>
<p>The .jsp file supports java code inside of the html body</p>
<%
    out.print("<p>" + "Login time: " + new Date() + "</p>");
%>
</body>
</html>
