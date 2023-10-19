<%-- 
    Document   : add
    Created on : Sep 30, 2023, 10:32:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="model.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function doDelete(email){
                if(confirm("Delete "+email +"???")){
                    window.location="delete?email="+email;
                }
            }
        </script>
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
            table {
                width: 80%;
                margin: 0 auto;
                border-collapse: collapse;
            }
            table, th, td {
                border: 1px solid #ddd;
            }
            th, td {
                padding: 12px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <h1>Join our email list</h1>
        <p>To join our email list, enter your name and
            email address below.</p>
        <p style="color:red">${requestScope.er}</p>
        <form action="demo" method="post">
            <input type="hidden" name="action" value="add">        
            <label class="pad_top">Email:</label>
            <input type="email" name="email" required><br>
            <label class="pad_top">First Name:</label>
            <input type="text" name="firstName" required><br>
            <label class="pad_top">Last Name:</label>
            <input type="text" name="lastName" required><br>
            <label>&nbsp;</label>
            <input type="submit" value="Join Now" class="margin_left">

        </form>
        <div>
            <c:set var="list" value="${requestScope.data}"/>
            <c:if test= "${not empty requestScope.data}">
                <h1>Danh sách Email</h1>
                <table>
                    <tr>
                        <th>Email</th>
                        <th>firstName</th>
                        <th>lastName</th>
                        <th>Actions</th>
                    </tr>
                    <c:forEach items="${requestScope.data}" var="n">
                        <tr>
                            <td>${n.email}</td>
                            <td>${n.firstName}</td><!-- comment -->
                            <td>${n.lastName}</td>
                            <td>
                                <a href="update?email=${n.email}">Update</a>&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="#" onclick="doDelete('${n.email}')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </div>
    </body>
</html>
