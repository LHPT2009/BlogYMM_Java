<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <!--        <meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <!--        <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <!--        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
                <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
        <title>Đăng kí - YMM</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div id="logreg-forms">
            <form action="signup" method="post">
                <h1 class="h3 mb-3 font-weight-normal ymm-arial" style="text-align: center"> Đăng kí</h1>
                <input name="TenDangNhap" type="text" id="user-name" class="ymm-arial form-control" placeholder="Tên đăng nhập" required="" autofocus="">
                <input name="MatKhau" type="password" id="user-pass" class="ymm-arial form-control" placeholder="Mật khẩu" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="ymm-arial form-control" placeholder="Nhập lại mật khẩu" required autofocus="">
                <input name="HoTen" type="text" id="user-name" class="ymm-arial form-control" placeholder="Họ tên" required autofocus="">
                <input name="Email" type="text" id="user-name" class="ymm-arial form-control" placeholder="Email" required autofocus="">
                <div style="display:none"><input name="LoaiTaiKhoan" type="text" class="form-control" value="0" required></div>
                <button class="btn btn-primary btn-block btn-lg ymm-arial" type="submit">Đăng kí</button>
                <a href="signin" id="cancel_signup"><i class="fas fa-angle-left"></i> Quay lại</a>
            </form>
            <br>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
