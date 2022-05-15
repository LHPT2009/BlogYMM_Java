<%-- 
    Document   : ShowComment
    Created on : 27-Apr-2022, 14:20:22
    Author     : zpc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${listPP}" var="o" class="text-center">
            <p>${o.hoten} ~ ${o.noidung}</p>
        </c:forEach>
    </body>
</html>
