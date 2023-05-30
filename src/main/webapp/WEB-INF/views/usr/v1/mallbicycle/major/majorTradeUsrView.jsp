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
<c:choose>
	<c:when test="${item.mbmtSalesNy eq 0 }">
								<div class="form-check radio-text form-check-inline me-2">
									<div class="product-meta small">
										* 판매 중지한 상품은 수정, 삭제, 재판매가 불가합니다.
									</div>
								</div>
	</c:when>
	<c:otherwise>
								<div class="form-check radio-text form-check-inline me-2" onclick="updateSalesNy()">
									<label class="radio-text-label" for="m2">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bag-x" viewBox="0 0 16 16">
											<path fill-rule="evenodd" d="M6.146 8.146a.5.5 0 0 1 .708 0L8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 0 1 0-.708z"/>
											<path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
										</svg>
									</label> 
								</div>	
	</c:otherwise>
</c:choose>
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
    
<!-- includeUsrModal s -->
<%@include file="../../include/includeUsrModal.jsp"%>
<!-- includeUsrModal e -->      
    
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
	
	
	updateSalesNy = function(){
		$("#modalAlertTitle").text("거래");
		
		$("#modalAlertBody").append("판매 중지 하시겠습니까?");
		$("#modalAlertBody").append("<br>");
		$("#modalAlertBody").append("판매 중지한 상품은 수정, 삭제, 재판매가 불가합니다.");
		$("#btnUele").remove();
		$("#modalAlertFooter").append('<button type="button" class="btn btn-danger btn-sm" id="btnUele" onclick="goSalesNy();">판매중지</button>');				
		
		$("#modalAlert").modal("show");
	}
	
	
	goSalesNy = function() {
		$("#modalAlert").modal("hide");		
		formVo.attr("action", "majorTradeUsrSalesNyUpdt").submit();
	}
</script>

</body>

</html>