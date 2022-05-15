<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>You Me and Music</title>
        <link href="css/media_query.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="css/searchbar.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
        <link href="css/ymm.css" rel="stylesheet" type="text/css"/>

        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="css/owl.theme.default.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap CSS -->
        <link href="css/style_1.css" rel="stylesheet" type="text/css"/>
        <!-- Modernizr JS -->
        <script src="js/modernizr-3.5.0.min.js"></script>
        <jsp:useBean id="a" class="DAO.DAO" scope="request"></jsp:useBean>
        </head>
        <body>
            <div class="container-fluid fh5co_header_bg">
                <div class="container">
                    <div class="row">
                        <div class="col-12 fh5co_mediya_center ymm-arial"><a class="color_fff fh5co_mediya_setting treding_btn"><i
                                    class="fa fa-clock-o"></i>&nbsp;&nbsp;&nbsp;<%
                                        Date date = new Date();
                                        SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yyyy");
                                        out.print(ft.format(date));
                            %></a>
                            <c:if test="${sessionScope.acc != null}">
                            <div class="d-inline-block fh5co_trading_posotion_relative">
                                <div class="ymm-dropdown">
                                    <b style="color: #f5bc04; font-family: Arial;">Chào</b>&nbsp;&nbsp;<b>${sessionScope.acc.hoTen}</b>
                                    <div class="ymm-dropdown-content">
                                        <a style="color: #292b2c; font-weight: bold;" href="account?MaTaiKhoan=${sessionScope.acc.maTaiKhoan}">Tài khoản</a></br>
                                        <c:if test="${sessionScope.acc.loaiTaiKhoan == 0}">
<!--                                            <a style="color: #292b2c; font-weight: bold;" href="loadinsertpost">Tạo bài viết</a></br>-->
                                            <a style="color: #292b2c; font-weight: bold;" href="listlike">Bài viết yêu thích</a></br>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.loaiTaiKhoan == 1}">
                                            <a style="color: #292b2c; font-weight: bold;" href="pagelistadpostcontrol">Quản lí</a></br>
                                        </c:if>
                                        <a style="color: #292b2c; font-weight: bold;" href="logout">Đăng xuất</a>
                                    </div>
                                </div>
                            </div>
                        </c:if>  

                        <c:if test="${sessionScope.acc == null}">
                            <div class="d-inline-block fh5co_trading_posotion_relative">
                                <a href="ssignin" style="color: white; font-family: Arial"><i class="fa fa-user-o"></i>&nbsp;&nbsp;Đăng nhập</a>
                            </div>
                        </c:if>

                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-3 fh5co_padding_menu">
                        <a href="home"><img src="images/Logo_YMM_Header.png" alt="logo-ymm" class="fh5co_logo_width"/></a>
                    </div>
                    <div class="col-12 col-md-9 align-self-center fh5co_mediya_right">
                        <form action="search" method="post">
                            <div class="text-center d-inline-block">
                                <div class="search">
                                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="searchTerm" placeholder="Bạn muốn tìm gì nào?" required>
                                    <button type="submit" class="searchButton">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-faded fh5co_padd_mediya padding_786">
            <div class="container padding_786">
                <nav class="navbar navbar-toggleable-md navbar-light ">
                    <button class="navbar-toggler navbar-toggler-right mt-3" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
                    <a class="navbar-brand" href="#"><img src="images/logo.png" alt="img" class="mobile_logo_width"/></a>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link ymm-arial" href="home">Trang chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle ymm-arial" href="#" id="dropdownMenuButton2" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">Thể loại <span class="sr-only">(current)</span></a>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink_1">
                                    <c:forEach items="${listCC}" var="m">
                                        <a class="ymm-arial dropdown-item" href="category?MaLoai=${m.maLoai}">${m.tenLoai}</a>
                                    </c:forEach>
                                </div>
                            </li>
                            <li class="nav-item ymm-arial">
                                <a class="nav-link" href="contact">Liên hệ <span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </body>
</html>