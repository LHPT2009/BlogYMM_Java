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
                    <h1 class="text-2xl font-semibold ymm-arial">Tất cả bình luận</h1>
                </div>

                <!-- Content -->
                <table id="customers">
                    <tr>
                        <th>Mã bài viết</th>
                        <th>Bài viết</th>

                        <th>Tài khoản</th>
                        <th>Nội dung</th>
                        <th>Thao tác</th>
                    </tr>
                <c:forEach items="${listComment}" var="m">
                    <tr>
                        <td>
                            ${m.maBaiViet}
                        </td>

                        <td class="ymm-text-short2">
                            <a href="detail?MaBaiViet=${m.maBaiViet}" target="_blank">${m.tenBaiViet}</a>
                        </td>

                        <td>
                            ${m.hoTen}
                        </td>

                        <td class="ymm-text-short2">
                            ${m.noiDung}
                        </td>
                        <td>
                            <a class="ymm-btn ymm-btn3" href="deletecomment?MaBinhLuan=${m.maBinhLuan}">Xóa</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>
        
        <jsp:include page="ManagerBelow.jsp"></jsp:include>
    </body>
</html>