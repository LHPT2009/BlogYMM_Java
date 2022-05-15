<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="container-fluid fh5co_footer_bg pb-3">
            <div class="container animate-box">
                <div class="row">
                    <div class="col-12 spdp_right py-5"><a href="home"><img src="images/Logo_YMM_Footder.png" alt="img" class="footer_logo"/></div></a>
                    <div class="clearfix"></div>
                    <div class="col-12 col-md-4 col-lg-3">
                        <div class="footer_main_title py-3"> YMM</div>
                        <div class="footer_sub_about pb-3">
                            <p class="ymm-arial" style="text-align: justify">Cùng nhau chia sẻ đam mê âm nhạc của bản thân đến với mọi người như bạn.</p>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="footer_main_title py-3"> Fanpage</div>
                        <div class="fb-page" data-href="https://www.facebook.com/hutechuniversity/" data-tabs="" data-width="" data-height="" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><blockquote cite="https://www.facebook.com/hutechuniversity/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/hutechuniversity/">HUTECH - Đại học Công nghệ Tp.HCM</a></blockquote></div>
                    </div>
<!--                    <div class="col-12 col-md-5 col-lg-3 position_footer_relative">
                        <div class="footer_main_title py-3"> Trụ sở</div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1959.5682091793917!2d106.71628114307424!3d10.800862175215258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528a459cb43ab%3A0x6c3d29d370b52a7e!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVFAuSENNIC0gSFVURUNI!5e0!3m2!1svi!2s!4v1650877416384!5m2!1svi!2s" width="380" height="320" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>-->
                    <div class="col-12 col-md-12 col-lg-4 ">
<!--                        <div class="footer_main_title"> Thể loại</div>-->
                        <c:forEach items="${listCC}" var="m">
                            <ul class="footer_menu ymm-arial">
                                <li>
                                    <a href="category?MaLoai=${m.maLoai}" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; ${m.tenLoai}</a>
                                </li>
                            </ul>
                        </c:forEach>
                    </div>
                </div>

            </div>
        </div>
        <div class="container-fluid fh5co_footer_right_reserved">
            <div class="container">
                <div class="row  ">
                    <div class="col-12 col-md-6 py-4 Reserved ymm-arial"> © Copyright 2022, All rights reserved. Design by <a href="https://hutech.edu.vn" title="Nhóm 2"><b>Nhóm 2</b></a>. </div>
                    <div class="col-12 col-md-6 spdp_right py-4">
                        <a href="home" class="footer_last_part_menu ymm-arial">Trang chủ</a>
                        <a href="contact" class="footer_last_part_menu ymm-arial">Liên hệ</a>
                    </div>
                </div>
            </div>

            <div class="gototop js-top">
                <a href="#" class="js-gotop"><i class="fa fa-arrow-up"></i></a>
            </div>

            <div id="fb-root"></div>
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v13.0" nonce="CFK869EH"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>-->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
                    integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
            crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
                    integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
            crossorigin="anonymous"></script>
            <!-- Waypoints -->
            <script src="js/jquery.waypoints.min.js"></script>
            <!-- Main -->
            <script src="js/main.js"></script>
    </body>
</html>
