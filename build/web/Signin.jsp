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
        <title>Đăng nhập - YMM</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div id="logreg-forms">
                <form class="form-signin" action="signin" method="post">
                    <h1 class="h3 mb-3 font-weight-normal ymm-arial" style="text-align: center"> Đăng nhập</h1>
                    <p class="text-danger">${mess}</p>
                <input name="TenDangNhap"  type="text" id="inputEmail" class="form-control" placeholder="Tên đăng nhập" required="" autofocus="">
                <input name="MatKhau"  type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required="">

                <div style="position: relative;
                     display: block;
                     margin-bottom: 0.5rem;">
<!--                    <input name="remember" value="1" type="checkbox" style="position: absolute;
                           margin-top: 0.25rem;" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Lưu mật khẩu</label>-->
                    <a class="ymm-arial" style="text-align: right" href="repass1.jsp" id="btn-signup"><b>Quên mật khẩu?</b></a>
                </div>

                <button class="ymm-arial btn btn-success btn-block btn-lg" type="submit">Đăng nhập</button>
                <hr>
                <p class="ymm-arial" style="text-align: left">Bạn chưa có tài khoản? <a href="Signup.jsp" id="btn-signup"><b class="ymm-arial">Đăng kí ngay</b></a></p>
            </form>
               
            <br>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>-->
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
