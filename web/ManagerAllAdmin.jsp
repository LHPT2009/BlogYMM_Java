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
                    <h1 class="text-2xl font-semibold ymm-arial">Tất cả tài khoản quản trị viên</h1>
                </div>
                <div style="padding: 10px 10px 10px 10px">
                    <a class="ymm-btn ymm-btn1" href="loadinsertadmin">Tạo mới</i></a>
                </div>
                <!-- Content -->
                <table id="customers">
                    <tr>
                        <th>Mã</th>
                        <th>Tên đăng nhập</th>
                        <th>Mật khẩu</th>
                        <th>Họ tên</th>
                        <th>Email</th>
                        <th>Loại tài khoản</th>
                        <th>Thao tác</th>
                    </tr>
                <c:forEach items="${listAdmin}" var="m">
                    <tr>
                        <td>
                            ${m.maTaiKhoan}
                        </td>
                        <td>
                            ${m.tenDangNhap}
                        </td>
                        <td>
                            ${m.matKhau}
                        </td>
                        <td>
                            ${m.hoTen}
                        </td>
                        <td>
                            ${m.email}
                        </td>
                        <td>
                            ${m.loaiTaiKhoan}
                        </td>
                        <td>
                            <a class="ymm-btn ymm-btn2" href="loadeditadmin?MaTaiKhoan=${m.maTaiKhoan}">Chỉnh sửa</i></a>
                            <a class="ymm-btn ymm-btn3" href="deleteadmin?MaTaiKhoan=${m.maTaiKhoan}">Xóa</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>

        

        <jsp:include page="ManagerBelow.jsp"></jsp:include>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>