<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->


<title>shopapp - eCommerce Bootstrap 5 Template</title>
</head>

<body>

<!-- skippy -->
<a id="skippy" class="skippy visually-hidden-focusable overflow-hidden" href="#content">
    <div class="container"> 
        <span class="u-skiplink-text">Skip to main content</span>
    </div>
</a>
<!-- End skippy -->
<!-- Preload -->
<div id="loading" class="loading-preloader">
    <div class="spinner-border text-primary" role="status">
        <span class="visually-hidden">Loading...</span>
    </div>
</div>
<!-- End Preload -->

<!-- 
========================
    Wrapper 
========================
-->
<div class="wrapper">
    <!-- header height -->
    <div class="header-height-bar"></div>
    
<!-- includeUsrGnb s -->
<%@include file="../../include/includeUsrGnb.jsp"%>
<!-- includeUsrGnb e -->  

    <!-- Main -->
    <main>
        <!-- Home Section -->
        <div class="swiper swiper-container" data-swiper-options='{
                "slidesPerView": 1,
                "spaceBetween": 0,
                "pagination": {
                "el": ".swiper-pagination",
                "clickable": true
                },
                "navigation": {
                "nextEl": ".swiper-next-01",
                "prevEl": ".swiper-prev-01"
                },
                "autoplay": {
                "delay": 5000,
                "disableOnInteraction": false
                }
            }'>
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="bg-no-repeat bg-cover bg-center" style="background-image: url(/resources/usr/v1/image/infra/index/index_01.jpg);"><!--1600*900-->
                        <div class="container">
                            <div class="row min-vh-85 align-items-center justify-content-center py-12">
                                <div class="col-lg-8 text-center">
                                    <h6 class="fw-300 text-uppercase text-white mb-3 letter-spacing-6">You're Looking Good: sessUsrSeq: <c:out value="${sessUsrSeq }"/></h6>
                                    <h1 class="display-1 fw-300 text-white letter-spacing-6 text-uppercase">New LookBook</h1>
                                    <div class="pt-3">
                                        <a class="btn btn-outline-white" href="#">Discover More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="bg-no-repeat bg-cover bg-center" style="background-image: url(/resources/usr/v1/image/infra/index/index_02.jpg);">
                        <div class="container">
                            <div class="row min-vh-85 align-items-center justify-content-center py-12">
                                <div class="col-lg-8 text-center">
                                    <h6 class="fw-300 text-uppercase text-white mb-3 letter-spacing-6">You're Looking Good</h6>
                                    <h1 class="display-1 fw-300 text-white letter-spacing-6 text-uppercase">New LookBook</h1>
                                    <div class="pt-3">
                                        <a class="btn btn-outline-white" href="#">Discover More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="bg-no-repeat bg-cover bg-center" style="background-image: url(/resources/usr/v1/image/infra/index/index_03.jpg);">
                        <div class="container">
                            <div class="row min-vh-85 align-items-center justify-content-center py-12">
                                <div class="col-lg-8 text-center">
                                    <h6 class="fw-300 text-uppercase text-white mb-3 letter-spacing-6">You're Looking Good</h6>
                                    <h1 class="display-1 fw-300 text-white letter-spacing-6 text-uppercase">New LookBook</h1>
                                    <div class="pt-3">
                                        <a class="btn btn-outline-white" href="#">Discover More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
            <div class="swiper-arrow-style-01 swiper-next swiper-next-01"><i class="bi-chevron-right"></i> </div>
            <div class="swiper-arrow-style-01 swiper-prev swiper-prev-01"><i class="bi-chevron-left"></i></div>
            <div class="swiper-pagination swiper-pagination-white"></div>
        </div>
        <!-- End Home Section -->
    </main>
    <!-- End Main -->

<!-- includeUsrFooter s -->
<%@include file="../../include/includeUsrFooter.jsp"%>
<!-- includeUsrFooter e -->    

</div>
<!-- 
========================
End Wrapper 
========================
-->

<!-- includeUsrLinkJs s -->
<%@include file="../../include/includeUsrLinkJs.jsp"%>
<!-- includeUsrLinkJs e -->

</body>

</html>

