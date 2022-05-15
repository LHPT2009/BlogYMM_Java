<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container-fluid contact_us_bg_img">
                <div class="container">
                    <div class="row">
                        <a href="home" class="fh5co_con_123"><i class="fa fa-home"></i></a>
                        <a href="contact" style="font-size: 30px; font-weight: bold; color: #FFF" class="pt-2 ymm-arial"> Liên Hệ </a>
                    </div>
                </div>
            </div>
            <div class="container-fluid  fh5co_fh5co_bg_contcat">
                <div class="container">
                    <div class="row py-4">
                        <div class="col-md-4 py-3">
                            <div class="row fh5co_contact_us_no_icon_difh5co_hover">
                                <div class="col-3 fh5co_contact_us_no_icon_difh5co_hover_1">
                                    <div class="fh5co_contact_us_no_icon_div"> <span><i class="fa fa-phone"></i></span> </div>
                                </div>
                                <div class="col-9 align-self-center fh5co_contact_us_no_icon_difh5co_hover_2">
                                    <span class="c_g d-block ymm-arial">Điện thoại</span>
                                    <span class="d-block c_g fh5co_contact_us_no_text ymm-arial">+84 762 905 908</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-4 py-3">
                            <div class="row fh5co_contact_us_no_icon_difh5co_hover">
                                <div class="col-3 fh5co_contact_us_no_icon_difh5co_hover_1">
                                    <div class="fh5co_contact_us_no_icon_div"> <span><i class="fa fa-envelope"></i></span> </div>
                                </div>
                                <div class="col-9 align-self-center fh5co_contact_us_no_icon_difh5co_hover_2">
                                    <span class="c_g d-block ymm-arial">Thư điện tử</span>
                                    <span class="d-block c_g fh5co_contact_us_no_text ymm-arial">ymm@gmail.com</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-4 py-3">
                            <div class="row fh5co_contact_us_no_icon_difh5co_hover">
                                <div class="col-3 fh5co_contact_us_no_icon_difh5co_hover_1">
                                    <div class="fh5co_contact_us_no_icon_div"> <span><i class="fa fa-map-marker"></i></span> </div>
                                </div>
                                <div class="col-9 align-self-center fh5co_contact_us_no_icon_difh5co_hover_2">
                                    <span class="c_g d-block ymm-arial">Trụ sở</span>
                                    <span class="d-block c_g fh5co_contact_us_no_text ymm-arial"> Bình Thạnh, Hồ Chí Minh</span>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="container-fluid mb-4">
                <div class="container">
                    <div class="col-12 text-center contact_margin_svnit">
                    </div>
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <form class="row" id="fh5co_contact_form" action="addcontact" method="post">
                                <div class="col-12 py-3">
                                    <input name="Ten" type="text" class="form-control ymm-contact-text-box" placeholder="Họ tên" required/>
                                </div>
                                <div class="col-6 py-3">
                                    <input name="Email" type="text" class="form-control ymm-contact-text-box" placeholder="Email" required/>
                                </div>
                                <div class="col-6 py-3">
                                    <input name="ChuDe" type="text" class="form-control ymm-contact-text-box" placeholder="Tiêu đề" required/>
                                </div>
                                <div class="col-12 py-3">
                                    <textarea name="NoiDung" class="form-control ymm-contacts-message" placeholder="Nội dung" required></textarea>
                                </div>
                                <div class="col-12 py-3 text-center"><input type="submit" class="ymm-btn ymm-btn4" value="Gửi"></div>
                            </form>
                        </div>
                        <div class="col-12 col-md-6 align-self-center">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.94545959127018!2d106.71432672765059!3d10.8015568125441!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175299865efd321%3A0xa867bc5f9f86f471!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBIdXRlY2g!5e0!3m2!1svi!2s!4v1651586519843!5m2!1svi!2s" class="map_sss" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
