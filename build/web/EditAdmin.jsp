<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Chỉnh Sửa Tài Khoản - YMM</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Chỉnh Sửa Tài khoản <b>Quản Trị Viên</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editadmin" method="post">
<!--                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Admin</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>-->
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Mã tài khoản</label>
                                    <input value="${detail.maTaiKhoan}" name="MaTaiKhoan" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tên đăng nhập</label>
                                    <input value="${detail.tenDangNhap}" name="TenDangNhap" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu</label>
                                    <input value="${detail.matKhau}" name="MatKhau" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Họ tên</label>
                                    <input value="${detail.hoTen}" name="HoTen" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${detail.email}" name="Email" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Loại tài khoản</label>
                                    <input value="${detail.loaiTaiKhoan}" name="LoaiTaiKhoan" type="text" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-default" href="manageralladmin">Hủy</a>
                                <input type="submit" class="btn btn-primary" value="Cập nhật">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>