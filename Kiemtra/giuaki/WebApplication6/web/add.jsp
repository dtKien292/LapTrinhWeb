<%-- 
    Document   : add
    Created on : Oct 31, 2023, 10:22:16 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>${requestScope.er}</h3>
        <form action="add">
            MaKH <input type="text" name="makh" required><br>
            NameKH <input type="text" name="namekh" required><br><!-- comment -->
            NS <input type="date" name="ns" required><br>
            DiaChi <input type="text" name="dc" required><br>
            Email <input type="text" name="email" required><br>
            DienThoai <input type="text" name="dt" required><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>
