<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container-fluid pb-4 pt-4 paddding">
                <div class="container paddding">
                    <div class="row mx-0">
                        <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                            <div>
                                <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4 ymm-arial">Các bài viết yêu thích của bạn</div>
                            </div>
                        <c:forEach items="${listll}" var="o">
                            <div class="row pb-4">
                                <div class="col-md-5">
                                    <div class="fh5co_hover_news_img">
                                        <div class="fh5co_news_img"><img src="${o.hinhAnh}" alt=""/></div>
                                        <div></div>
                                    </div>
                                </div>
                                <div class="col-md-7 animate-box">
                                    <a href="detail?MaBaiViet=${o.maBaiViet}" class="ymm-title-post">${o.tenBaiViet}</a> 
                                    </br>
                                    <a class="fh5co_mini_time ymm-arial"><fmt:formatDate value="${o.ngayTao}" pattern="dd/MM/yyyy" /></a>
                                    <div class="fh5co_consectetur">
                                        <p class="ymm-text-short1 ymm-arial">${o.noiDung}</p>
                                    </div>
                                    <c:if test="${sessionScope.acc.loaiTaiKhoan == 0}">
                                        <a href="deletelike?MaBaiViet=${o.maBaiViet}" style="text-decoration:none;margin-right: 10px; ">
                                            <span style='font-size:30px;'>&#128078;</span>
                                        </a>
                                        <p class="text-danger">${mess}</p>
                                    </c:if>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <jsp:include page="RightBar.jsp"></jsp:include>    
                    </div>
                    
                </div>
            </div>

        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
