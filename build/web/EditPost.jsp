<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Chỉnh Sửa Bài Viết - YMM</title>
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
                            <h2>Chỉnh Sửa <b>Bài Viết</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editpost" method="post">
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Mã bài viết</label>
                                    <input value="${detail.maBaiViet}" name="MaBaiViet" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Tên bài viết</label>
                                    <textarea name="TenBaiViet" type="text" class="form-control" required>${detail.tenBaiViet}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Nội dung</label>
                                    <textarea name="NoiDung" class="form-control">${detail.noiDung}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Ngày tạo</label>
                                    <input value="${detail.ngayTao}" name="NgayTao" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <h5>Chèn link hình ảnh. VD: Imgur, Flickr,...</h5>
                                    <textarea name="HinhAnh" class="form-control">${detail.hinhAnh}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Video</label>
                                    <h5>Copy đoạn dấu bằng và dán vào. VD: youtube.com/watch?v=AT9ooDUWLNQ</h5>
                                    <textarea name="Video" class="form-control">${detail.video}</textarea>
                                </div>
<!--                                <div class="form-group">
                                    <label>Mã loại</label>
                                    <textarea name="MaLoai" class="form-control" required>${detail.maLoai}</textarea>
                                </div>-->
                                <div class="form-group">
                                    <label>Loại bài viết </label>
                                    <select name="MaLoai" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCC}" var="o">
                                            <option value="${detail.maLoai}">${o.tenLoai}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Mã tài khoản</label>
                                    <textarea name="MaTaiKhoan" class="form-control" readonly required>${detail.maTaiKhoan}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Khác</label>
                                    <textarea name="Khac" class="form-control">${detail.khac}</textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-default" href="pagelistadpostcontrol">Hủy</a>
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