<%-- 
    Document   : index
    Created on : Oct 31, 2023, 10:07:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function doDelete(maKH){
                if(confirm("Chac chan Xoa!!!")){
                    window.location="delete?maKH="+maKH;
                }
            }
        </script>
    </head>
    <body>
        <a href="add.jsp">ADD</a><br><!-- comment -->
        <form action="show">
            <input type="submit" value="Find">
        </form>
        <table  border="1">
            <tr>
                <th>Ma</th>
                <th>Name</th>
                <th>NS</th>
                <th>DiaChi</th>
                <th>Email</th>
                <th>SDT</th>
                <td>Action</td>
            </tr>
            <c:forEach items="${requestScope.data}" var="i">
                <tr>
                    <td>${i.maKH}</td>
                    <td>${i.nameKH}</td>
                    <td>${i.getNs()}</td>
                    <td>${i.dc}</td><!-- comment -->
                    <td>${i.email}</td><!-- comment -->
                    <td>${i.dt}</td>
                    <td>
                        <a href="update?maKH=${i.maKH}">Update</a>
                        <a href="#" onclick="doDelete('${i.maKH}')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
