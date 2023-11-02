<%-- 
    Document   : show
    Created on : Nov 1, 2023, 10:48:03 AM
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
        <table border ="1">
            <tr>
                <th>MAKH</th><!-- comment -->
                <th>NameKH</th>
                <th>Dia Chi</th>
                <th>Email</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="i">
                <tr>
                <td>${i.getKhachhang().getMaKH()}</td>
                <td>${i.getKhachhang().getNameKH()}</td> 
                <td>${i.getKhachhang().getDc()}</td> 
                <td>${i.getKhachhang().getDt()}</td> 
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
