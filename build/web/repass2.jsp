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
        <title>Quên mật khẩu - YMM</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div id="logreg-forms">
                <form class="form-signin" action="repass2" method="post">
                    <h1 class="h3 mb-3 font-weight-normal ymm-arial" style="text-align: center">Nhập mật khẩu mới</h1>
                    <input name="Email"  type="text" id="inputEmail" class="form-control ymm-arial" value="${detail.email}" required="" autofocus="">
                <input name="pass"  type="password" id="inputEmail" class="form-control ymm-arial" placeholder="Mật khẩu mới" required="" autofocus="">
                <input name="repass"  type="password" id="inputEmail" class="form-control ymm-arial" placeholder="Nhập lại mật khẩu" required="" autofocus="">

                <button class="btn btn-success btn-block btn-lg ymm-arial" type="submit">Xác nhận</button>
                <a href="Signin.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Quay lại</a>
            </form>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
