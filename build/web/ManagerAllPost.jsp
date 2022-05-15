<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <h1 class="text-2xl font-semibold ymm-arial">Tất cả bài viết</h1>
                </div>
                <div style="padding: 10px 10px 10px 10px"><a class="ymm-btn ymm-btn1" href="loadinsertpost">Tạo mới</a></div>
                <!-- Content -->
                <table id="customers">
                    <tr>
                        <th>Mã</th>
                        <th>Tên</th>

                        <th>Ngày tạo</th>
                        <th>Hình ảnh</th>
                        <th>Video</th>
                        <!--                        <th>Khác</th>-->
                        <th>Thao tác</th>
                    </tr>
                <c:forEach items="${listP}" var="m">
                    <tr>
                        <td>
                            ${m.maBaiViet}
                        </td>

                        <td class="ymm-text-short2">
                            <a href="detail?MaBaiViet=${m.maBaiViet}" target="_blank">${m.tenBaiViet}</a>
                        </td>



                        <td>
                            <fmt:formatDate value="${m.ngayTao}" pattern="dd/MM/yyyy" />
                        </td>

                        <td style="width: 200px">
                            <img src="${m.hinhAnh}"/>
                        </td>

                        <td class="ymm-text-short2">
                            ${m.video}
                        </td>

                        <!--                        <td style="height: 200px" class="ymm-text-short2">
                        ${m.khac}
                    </td>-->

                        <td>
                            <a class="ymm-btn ymm-btn2" href="loadeditpost?MaBaiViet=${m.maBaiViet}">Chỉnh sửa</i></a>
                            <a class="ymm-btn ymm-btn3" href="mdelete?MaBaiViet=${m.maBaiViet}">Xóa</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            </main>
            <div style="padding: 10px 0 5px 0">
                <jsp:include page="PageListADPost.jsp"></jsp:include>
            </div>
            <jsp:include page="ManagerBelow.jsp"></jsp:include>
    </body>
</html>