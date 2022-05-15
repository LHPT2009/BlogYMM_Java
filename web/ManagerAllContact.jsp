<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="Manager.jsp"></jsp:include>
            <!-- Main content -->
            <main>
                <!-- Content header -->
                <div class="flex items-center justify-between px-4 py-4 border-b lg:py-6 dark:border-primary-darker">
                    <h1 class="text-2xl font-semibold ymm-arial">Tất cả liên hệ</h1>
                </div>

                <!-- Content -->
                <table id="customers">
                    <tr>
                        <th>Mã</th>
                        <th>Họ tên</th>
                        <th>Email</th>
                        <th>Chủ đề</th>
                        <th>Nôi dung</th>
                        <th>Thao tác</th>
                        <c:forEach items="${listContact}" var="m">
                    <tr>
                        <td>
                            ${m.maLienHe}
                        </td>

                        <td>
                            ${m.ten}
                        </td>

                        <td>
                            ${m.email}
                        </td>

                        <td>
                            ${m.chuDe}
                        </td>

                        <td>
                            ${m.noiDung}
                        </td>
                        <td>
                            <a class="ymm-btn ymm-btn3" href="deletecontact?MaLienHe=${m.maLienHe}">Xóa</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>
        
        <jsp:include page="ManagerBelow.jsp"></jsp:include>
    </body>
</html>