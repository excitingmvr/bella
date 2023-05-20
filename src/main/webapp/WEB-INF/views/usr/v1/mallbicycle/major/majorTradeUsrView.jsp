<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrTagCodeMajor s -->
<%@include file="../../include/includeUsrTagCodeMajor.jsp"%>
<!-- includeUsrTagCodeMajor e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->

<title>거래</title>
</head>

<body>
<!-- Skippy & Prload -->
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
<!-- End Skippy & Prload -->
<!-- Size Chart  -->
<!-- Ask Form -->
<div class="modal-askform-view modal fade" id="px_ask_modal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Ask about product</h4>
                <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Your Name</label>
                                <input type="text" class="form-control" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Email address</label>
                                <input type="email" class="form-control" placeholder="E-mail">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label" for="exampleInputEmail1">Subject</label>
                                <input type="text" class="form-control" placeholder="Subject">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mb-3">
                                <label class="form-label" for="exampleInputEmail1">Your Message</label>
                                <textarea class="form-control" rows="5" placeholder="Your Message"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="">
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- End Ask Form -->

    <!-- 
    ========================
        Wrapper 
    ========================
    -->
    <div class="wrapper">
        <!-- heder height -->
        <div class="header-height-bar"></div>

<!-- includeUsrGnb s -->
<%@include file="../../include/includeUsrGnb.jsp"%>
<!-- includeUsrGnb e --> 

<!-- Main -->
<main>
    <!-- Breadcrumb -->
    <div class="py-3 bg-gray-100">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 my-2">
                    <h1 class="m-0 h4 text-center text-lg-start">자전거</h1>
                </div>
                <div class="col-lg-6 my-2">
                    <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                        <li class="breadcrumb-item"><a class="text-nowrap" href="#"><i class="bi bi-home"></i>My Page</a></li>
                        <li class="breadcrumb-item text-nowrap active" aria-current="page">거래</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumb -->
    <!-- Product Details -->
    <section class="product-details py-6">
        <div class="container">
            <div class="row">
                <!-- Product Gallery -->
                <div class="col-lg-6 lightbox-gallery product-gallery">
                    <div class="swiper swiper_gallery">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide">
                                    <a class="gallery-link" href="/resources/usr/v1/image/mall/product/1000x1000.jpg"><i class="bi bi-arrows-fullscreen"></i></a>
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide">
                                    <a class="gallery-link" href="/resources/usr/v1/image/mall/product/1000x1000.jpg"><i class="bi bi-arrows-fullscreen"></i></a>
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide">
                                    <a class="gallery-link" href="/resources/usr/v1/image/mall/product/1000x1000.jpg"><i class="bi bi-arrows-fullscreen"></i></a>
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide">
                                    <a class="gallery-link" href="/resources/usr/v1/image/mall/product/1000x1000.jpg"><i class="bi bi-arrows-fullscreen"></i></a>
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide">
                                    <a class="gallery-link" href="/resources/usr/v1/image/mall/product/1000x1000.jpg"><i class="bi bi-arrows-fullscreen"></i></a>
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide">
                                    <a class="gallery-link" href="/resources/usr/v1/image/mall/product/1000x1000.jpg"><i class="bi bi-arrows-fullscreen"></i></a>
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper swiper_thumb_gallery product-thumb">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide-thumb">
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide-thumb">
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide-thumb">
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide-thumb">
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide-thumb">
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="pd-gallery-slide-thumb">
                                    <img src="/resources/usr/v1/image/mall/product/1000x1000.jpg" class="img-fluid" title="" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-arrow-style-03 swiper-next swiper-next-pd-details_thumb"><i class="bi bi-chevron-right"></i> </div>
                        <div class="swiper-arrow-style-03 swiper-prev swiper-prev-pd-details_thumb"><i class="bi bi-chevron-left"></i></div>
                    </div>
                </div>
                <!-- End Product Gallery -->
                <!-- Product Details -->
                <div class="col-lg-6 ps-lg-5">
                    <div class="product-detail pt-4 pt-lg-0">
						<div class="product-attribute">
							<div class="nav-thumbs nav">
								<div class="form-check radio-text form-check-inline me-2">
									<label class="radio-text-label" for="xs2" id="btnList">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
											<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
										</svg>
									</label>
								</div>
								<div class="form-check radio-text form-check-inline me-2">
									<label class="radio-text-label" for="s2">
										<a href="/v1/mall/product/productTradeUsrForm">
											<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
												<path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
												<path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
											</svg>
										</a>
									</label>
								</div>
								<div class="form-check radio-text form-check-inline me-2">
									<label class="radio-text-label" for="m2">
										<a href="/v1/mall/product/productTradeUsrUele">
											<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
												<path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
											</svg>
										</a>
									</label>
								</div>
							</div>
						</div>
						<div class="product-price fs-3 fw-500">
							<span class="text-primary"><fmt:formatNumber value="${item.mbmtPrice }" pattern="#,###" /></span>
						</div>
						<div class="product-meta">
		                    <i class="bi bi-hand-index-fill"></i> <c:out value="${item.xMajorHitCount }"/>&nbsp;&nbsp;
		                    <i class="bi bi-bookmark-fill"></i> <c:out value="${item.xMajorFavoriteCount }"/>&nbsp;&nbsp;
		                    <i class="bi bi-geo-alt-fill"></i>
		                    <c:forEach items="${listCategory}" var="itemCategory" varStatus="statusCategory">
								<c:if test="${item.mbtdDistrictCt eq itemCategory.ifctSeq}"><c:out value="${itemCategory.ifctName }"/></c:if>
							</c:forEach>
							 | 
							<c:forEach items="${listCategory}" var="itemCategory" varStatus="statusCategory">
								<c:if test="${item.mbtdDistrict2Ct eq itemCategory.ifctSeq}"><c:out value="${itemCategory.ifctName }"/></c:if>
							</c:forEach>							
						</div>							

<!-- includeUsrMajorView s -->
<%@include file="../../include/includeUsrMajorView.jsp"%>
<!-- includeUsrMajorView e -->

						<div class="products-title" style="padding-top: 10px;">
							<h4 class="h4"><c:out value="${item.mbmtTitle }"/></h4>
						</div>                               
						<div class="product-description" style="padding-top: 10px;">
							<p><c:out value="${item.mbmtDesc }"/></p>
						</div> 
						<div class="product-meta small">
							<fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
							 | 
							<c:out value="${item.regId }"/> 
						</div>  
                    </div>
                </div>
                <!-- End Product Details -->
            </div>
        </div>
    </section>
    
</main>
<!-- End Main -->

<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="majorUsrVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->

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

<script src="/resources/usr/v1/js/includeUsrView.js"></script>

<script>

	$(document).ready(function(){

	}); 

	var urlCommon = "/v1/mallbicycle/major/";						/* #-> */
	
	var goUrlAjaxList = urlCommon + "majorTradeUsrAjaxList";		/* #-> */
	var goUrlInst = urlCommon + "majorTradeUsrInst"; 				/* #-> */
	var goUrlUpdt = urlCommon + "majorTradeUsrUpdt";				/* #-> */
	var goUrlUele = urlCommon + "majorTradeUsrUele";				/* #-> */
	var goUrlDele = urlCommon + "majorTradeUsrDele";				/* #-> */
	
	var seq = $("input:hidden[name=mbmtSeq]"); 						/* #-> */
	
</script>

</body>

</html>