<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <div class="row mx-0 animate-box" data-animate-effect="fadeInUp">
            <div class="col-12 text-center pb-4 pt-4">
                <c:forEach begin="1" end="${a.totalPageC()}" var="i">
                <a href="pagelistc?index=${i}" class="ymm-arial ymm-btn-pagging">${i}</a>
                </c:forEach>
            </div>
        </div>
    </body>
</html>