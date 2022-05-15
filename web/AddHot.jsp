<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Thêm Nổi Bật - YMM</title>
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
                            <h2>Thêm <b>Nổi Bật</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="addhot" method="post">
<!--                            <div class="modal-header">						
                                <h4 class="modal-title">Add Hot</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>-->
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Tên nổi bật</label>
                                    <input name="TenNoiBat" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <input name="HinhAnh" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Nội dung</label>
                                    <input name="NoiDung" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Video</label>
                                    <input name="Video" type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Khác</label>
                                    <input name="Khac" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a class="btn btn-default" href="managerallhot">Hủy</a>
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