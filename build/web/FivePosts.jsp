<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="container-fluid paddding mb-5">
            <div class="row mx-0">
                <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height"><img src="${a.getHotLeft().hinhAnh}" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font">
                            <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;${a.getHotLeft().ngayDang}
                                </a></div>
                            <div><a href="detail?MaBaiViet=${a.getHotLeft().maNoiBat}" class="fh5co_good_font"> ${a.getHotLeft().tenNoiBat} </a></div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">

                    <div class="row">
                        <c:forEach items="${Hotsnd}" var="f">
                            <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                                <div class="fh5co_suceefh5co_height_2"><img src="${f.hinhAnh}" alt="img"/>
                                    <div class="fh5co_suceefh5co_height_position_absolute"></div>
                                    <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                                        <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;${f.ngayDang} </a></div>
                                        <div class=""><a href="#" class="fh5co_good_font_2"> ${f.tenNoiBat} </a></div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
