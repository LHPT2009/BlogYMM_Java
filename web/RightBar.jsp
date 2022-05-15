<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
            <div>
                <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4 ymm-arial">Thể loại</div>
            </div>
            <div class="clearfix"></div>
            <div class="fh5co_tags_all">
                <c:forEach items="${listCC}" var="m">
                    <a href="category?MaLoai=${m.maLoai}" class="fh5co_tagg ymm-arial">${m.tenLoai}</a>
                </c:forEach>
            </div>
            
<!--            <div>
                <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Most Popular</div>
            </div>
            <div class="row pb-3">
                <div class="col-5 align-self-center">
                    <img src="images/download (1).jpg" alt="img" class="fh5co_most_trading"/>
                </div>
                <div class="col-7 paddding">
                    <div class="most_fh5co_treding_font"> Magna aliqua ut enim ad minim veniam quis nostrud.</div>
                    <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
                </div>
            </div>
            <div class="row pb-3">
                <div class="col-5 align-self-center">
                    <img src="images/allef-vinicius-108153.jpg" alt="img" class="fh5co_most_trading"/>
                </div>
                <div class="col-7 paddding">
                    <div class="most_fh5co_treding_font"> Enim ad minim veniam nostrud xercitation ullamco.</div>
                    <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
                </div>
            </div>
            <div class="row pb-3">
                <div class="col-5 align-self-center">
                    <img src="images/download (2).jpg" alt="img" class="fh5co_most_trading"/>
                </div>
                <div class="col-7 paddding">
                    <div class="most_fh5co_treding_font"> Magna aliqua ut enim ad minim veniam quis nostrud.</div>
                    <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
                </div>
            </div>
            <div class="row pb-3">
                <div class="col-5 align-self-center"><img src="images/seth-doyle-133175.jpg" alt="img"
                                                          class="fh5co_most_trading"/></div>
                <div class="col-7 paddding">
                    <div class="most_fh5co_treding_font"> Magna aliqua ut enim ad minim veniam quis nostrud.</div>
                    <div class="most_fh5co_treding_font_123"> April 18, 2016</div>
                </div>
            </div>-->

        </div>
    </body>
</html>
