<%-- 
    Document   : update
    Created on : Oct 1, 2023, 10:26:37 AM
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
            h1 {
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        
        <form action="update" method="post">
            <input type="hidden" name="action" value="update">        
            <label class="pad_top">Email:</label>
            <input type="email" name="email" readonly  value="${requestScope.user.email}" required><br>
            <label class="pad_top">First Name:</label>
            <input type="text" name="firstName" value="${requestScope.user.firstName}" required><br>
            <label class="pad_top">Last Name:</label>
            <input type="text" name="lastName" value="${requestScope.user.lastName}" required><br>
            <label>&nbsp;</label>
            <input type="submit" value="Update" class="margin_left">

        </form>
    </body>
</html>
