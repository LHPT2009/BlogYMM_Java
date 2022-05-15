<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Thêm Bài Viết - YMM</title>
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
                            <h2>Thêm <b>Bài Viết</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="addpost" method="post">
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Tên bài viết</label>
                                    <textarea name="TenBaiViet" type="text" class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Nội dung</label>
                                    <textarea name="NoiDung" type="text" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <h5>Chèn link hình ảnh. VD: Imgur, Flickr,...</h5>
                                    <textarea name="HinhAnh" type="text" class="form-control" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Video YouTube</label>
                                    <h5>Copy đoạn dấu bằng và dán vào. VD: youtube.com/watch?v=AT9ooDUWLNQ</h5>
                                    <textarea name="Video" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Khác</label>
                                    <textarea name="Khac" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Loại bài viết </label>
                                    <select name="MaLoai" class="form-select" aria-label="Default select example">
                                        <c:forEach items="${listCC}" var="o">
                                            <option value="${o.maLoai}">${o.tenLoai}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-default" href="pagelistadpostcontrol">Hủy</a>
                                <input type="submit" class="btn btn-success" value="Thêm">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>