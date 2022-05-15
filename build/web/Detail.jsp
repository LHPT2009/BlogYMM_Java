<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${detail.tenBaiViet}</title>
        <!--        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
                <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
    </head>
    <body class="single">
        <jsp:include page="Header.jsp"></jsp:include>
        <div id="fh5co-title-box" style="background-image: url(${detail.hinhAnh}); background-position: 50% 90.5px;" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="page-title">
                <span><fmt:formatDate value="${detail.ngayTao}" pattern="dd/MM/yyyy" /></span>
                <h2 class="ymm-arial">${detail.tenBaiViet}</h2>
            </div>
        </div>
        <div id="fh5co-single-content" class="container-fluid pb-4 pt-4 paddding">
            <div class="container paddding">
                <div class="row mx-0">
                    <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                        <div class="ymm-arial" style="text-align: justify; line-height: 2; font-size: 16px">
                            ${detail.noiDung}
                        </div>
                        <c:if test="${detail.video != null && detail.video != ''}">
                            <div style="padding-top: 20px" class="text-center">  
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/${detail.video}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            </div>
                        </c:if> 
                        <div style="padding-top: 20px" class="text-center">
                            ${detail.khac}
                        </div>
                    </div>
                    <jsp:include page="RightBar.jsp"></jsp:include>
                    </div>
                </div>
            </div>

            <div class="container-fluid pb-4 pt-5">
                <div class="container animate-box">
                    <h3 class="ymm-arial">Bình luận</h3>
                <c:forEach items="${listComment}" var="m">
                    <div class="dialogbox">
                        <div class="body">
                            <span class="tip tip-left"></span>
                            <div class="message">
                                <span>${m.noiDung}</span>
                            </div>
                            <div class="ymm-fontsize-12 ymm-arial" style="padding-left: 10px;">
                                <fmt:formatDate value="${m.ngaytaoBL}" pattern="dd/MM/yyyy" /> bởi <b>${m.hoTen}</b>
                            </div>    
                        </div>
                    </div>
                </c:forEach>
                <h5 class="ymm-arial" style="padding-top: 20px;">Viết bình luận</h5>
                <div>
                    <form action="addcomment" method="POST">
                        <textarea cols="10" rows="4" name="MaBaiViet" style="display: none">${detail.maBaiViet}</textarea>
                        <textarea cols="10" rows="4" class="ymm-comment-box" name="noidung" required=""></textarea>
                        <br>
                        <div style="text-align: left;"><input class="ymm-btn ymm-btn4" type="submit" value="Gửi"></div>
                    </form>
                </div>    
            </div>
        </div>
    </div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>
<!-- Parallax -->
<script src="js/jquery.stellar.min.js"></script>
<script>if (!navigator.userAgent.match(/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile/i)) {
        $(window).stellar();
    }</script>

</body>
</html>