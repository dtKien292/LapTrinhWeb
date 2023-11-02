<%-- 
    Document   : update
    Created on : Oct 31, 2023, 10:46:47 PM
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
        
        <form action="update" method="POST">
            MaKH <input type="text" name="makh" value="${requestScope.data.maKH}" readonly><br>
            NameKH <input type="text" name="namekh" value="${requestScope.data.nameKH}" required><br> comment 
            NS <input type="date" name="ns" value="${requestScope.data.ns}" required><br>
            DiaChi <input type="text" name="dc" value="${requestScope.data.dc}" required><br>
            Email <input type="text" name="email" value="${requestScope.data.email}" required><br>
            DienThoai <input type="text" name="dt" value="${requestScope.data.dt}" required><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>
