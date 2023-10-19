<%-- 
    Document   : thank
    Created on : Sep 27, 2023, 9:15:47 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 85%;
                margin-left: 2em;
                margin-right: 2em;
                width: 400px;
            }
            h1 {
                font-size: 140%;
                color: teal;
                margin-bottom: .5em;
            }
            label {
                float: left;
                width: 7em;
                margin-bottom: 0.5em;
                font-weight: bold;
            }
            input[type="text"], input[type="email"] {  /* An attribute selector */
                width: 15em;
                margin-left: 0.5em;
                margin-bottom: 0.5em;
            }
            span {
                margin-left: 0.5em;
                margin-bottom: 0.5em;
            }
            br {
                clear: both;
            }

            /* The styles for the classes */
            .pad_top {
                padding-top: 0.25em;
            }
            .margin_left {
                margin-left: 0.5em;
            }
        </style>
    </head>
    <body>
        <h1>Thanks for joining our email list</h1>

        <p>Here is the information that you entered:</p>
        <p>${requestScope.er}</p>
        <label>Email:</label>
        <span>${requestScope.user.email}</span><br>
        <label>First Name:</label>
        <span>${requestScope.user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${requestScope.user.lastName}</span><br>

        <p>To enter another email address, click on the Back 
            button in your browser or the Return button shown 
            below.</p>

        <form action="list" method="get">
            <input type="hidden" name="action" value="Join">
            <input type="submit" value="Return">
        </form>

    </body>
</html>
