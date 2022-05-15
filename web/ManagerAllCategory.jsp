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
                    <h1 class="text-2xl font-semibold ymm-arial">Tất cả thể loại</h1>
                </div>
                <div style="padding: 10px 10px 10px 10px"><a class="ymm-btn ymm-btn1" href="loadinsertcategory">Tạo mới</a></div>
                <!-- Content -->
                <table id="customers">
                    <tr>
                        <th>Mã loại</th>
                        <th>Tên loại</th>
                        <th>Thao tác</th>
                    </tr>
                <c:forEach items="${listCategory}" var="m">
                    <tr>
                        <td>
                            ${m.maLoai}
                        </td>

                        <td>
                            ${m.tenLoai}
                        </td>
                        <td>
                            <a class="ymm-btn ymm-btn2" href="loadeditcategory?MaLoai=${m.maLoai}">Chỉnh sửa</i></a>
                            <a class="ymm-btn ymm-btn3" href="deletecategory?MaLoai=${m.maLoai}">Xóa</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>
        <jsp:include page="ManagerBelow.jsp"></jsp:include>
    </body>
</html>