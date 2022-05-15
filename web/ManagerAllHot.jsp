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
                    <h1 class="text-2xl font-semibold ymm-arial">Tất cả nổi bật</h1>
                    <a
                        href="#"
                        target="_blank"
                        class="px-4 py-2 text-sm text-white rounded-md bg-primary hover:bg-primary-dark focus:outline-none focus:ring focus:ring-primary focus:ring-offset-1 focus:ring-offset-white dark:focus:ring-offset-dark"
                        >
                        View on
                    </a>
                </div>
                <div style="padding: 10px 10px 10px 10px"><a class="ymm-btn ymm-btn1" href="loadinserthot">Tạo mới</a></div>
                <!-- Content -->
                <table id="customers">
                    <tr>
                        <th>Mã</th>
                        <th>Tên bài viết</th>
                        <th>Hình ảnh</th>
                        <th>Nội dung</th>
                        <th>Video</th>
                        <th>Khác</th>
                        <th>Thao tác</th>
                    </tr>
                <c:forEach items="${listHot}" var="m">
                    <tr>
                        <td>
                            ${m.maNoiBat}
                        </td>
                        <td>
                            ${m.tenNoiBat}
                        </td>
                        <td>
                            <img src="${m.hinhAnh}" />
                        </td>
                        <td>
                            ${m.noiDung}
                        </td>
                        <td>
                            ${m.video}
                        </td>
                        <td>
                            ${m.khac}
                        </td>
                        <td>
                            <a class="ymm-btn ymm-btn2" href="loadedithot?MaNoiBat=${m.maNoiBat}">Chỉnh sửa</i></a>
                            <a class="ymm-btn ymm-btn3" href="deletehot?MaNoiBat=${m.maNoiBat}">Xóa</i></a>
                        </td>
                
                    </tr>
                </c:forEach>
            </table>
        </main>
        <jsp:include page="ManagerBelow.jsp"></jsp:include>
    </body>
</html>