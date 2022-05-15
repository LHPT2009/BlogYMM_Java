<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tài khoản - YMM</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container-fluid pb-4 pt-4 paddding">
                <div class="container paddding">
                    <div class="row mx-0">
                        <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                            <div>
                                <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4 ymm-arial">Thông tin tài khoản</div>
                            </div>
                            <div class="ymm-account-info">Họ tên: ${account.hoTen}</div></br>
                            <div class="ymm-account-info">Email: ${account.email}</div></br>
                            <div class="ymm-account-info"> Tên đăng nhập: ${account.tenDangNhap}</div></br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
