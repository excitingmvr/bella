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

<title>즐겨찾기</title>
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
                                <li class="breadcrumb-item">My Page</li>
                                <li class="breadcrumb-item text-nowrap" aria-current="page">즐겨찾기</li>
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
										<div class="form-check radio-text form-check-inline me-2" id="btnList">
											<label class="radio-text-label" for="xs2">
												<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
													<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
												</svg>
											</label>
										</div>
										<div class="form-check radio-text form-check-inline me-2" onclick="uleteFavorite()">
											<label class="radio-text-label" for="m2">
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
													<path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
												</svg>
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
		
		<!-- includeUsrBicycleView s -->
		<%@include file="../../include/includeUsrMajorView.jsp"%>
		<!-- includeUsrBicycleView e -->
		
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
            <!-- End Product Details -->
            <!-- Product Tabs -->
            <section class="pb-6 py-md-6 pb-lg-10 pt-lg-5">
                <div class="container">
                    <div class="product-tabs">
                        <ul class="nav product-nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a href="#" class="nav-link active" id="pd_reviews_tab" data-bs-toggle="tab" data-bs-target="#pd_reviews" role="tab" aria-controls="pd_reviews" aria-selected="false">Comments (23)</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="pd_reviews" role="tabpanel" aria-labelledby="pd_reviews_tab">
                                <div class="row">
                                    <div class="col-lg-8 pe-lg-8">
                                        <div class="d-flex review-box border-top pt-4">
                                            <div>
                                                <div class="review-image">
                                                    <img class="img-fluid" src="/resources/usr/v1/image/infra/member/1000x1000.jpg" title="" alt="">
                                                </div>
                                            </div>
                                            <div class="col ps-3">
                                                <h6>Nancy Bayer</h6>
                                                <div class="rating-star small">
                                                    <span>2022:12:12 12:12:12</span>&nbsp;&nbsp;&nbsp;
                                                    <a href=""><i class="bi bi-trash3"></i></a>&nbsp;&nbsp;
                                                    <a href=""><i class="bi bi-pencil-square"></i></a>
                                                </div>
                                                <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor</p>
                                            </div>
                                        </div>
                                        <div class="d-flex review-box border-top mt-4 pt-4">
                                            <div>
                                                <div class="review-image">
                                                    <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                                </div>
                                            </div>
                                            <div class="col ps-3">
                                                <h6>Nancy Bayer</h6>
                                                <div class="rating-star small">
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star"></i>
                                                    <span>13 April 2012</span>
                                                </div>
                                                <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor</p>
                                            </div>
                                        </div>
                                        <div class="d-flex review-box border-top mt-4 pt-4">
                                            <div>
                                                <div class="review-image">
                                                    <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                                </div>
                                            </div>
                                            <div class="col ps-3">
                                                <h6>Nancy Bayer</h6>
                                                <div class="rating-star small">
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star"></i>
                                                    <span>13 April 2012</span>
                                                </div>
                                                <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor</p>
                                            </div>
                                        </div>
                                        <div class="d-flex review-box border-top mt-4 pt-4">
                                            <div>
                                                <div class="review-image">
                                                    <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                                </div>
                                            </div>
                                            <div class="col ps-3">
                                                <h6>Nancy Bayer</h6>
                                                <div class="rating-star small">
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star-fill active"></i>
                                                    <i class="bi small bi-star"></i>
                                                    <span>13 April 2012</span>
                                                </div>
                                                <p class="m-0 pt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor</p>
                                            </div>
                                        </div>
                                        <div class="shop-bottom-bar d-flex align-items-center mt-3">
                                            <div class="ms-auto ">
                                                <ul class="pagination">
                                                    <li class="page-item">
                                                        <a class="page-link" href="#" aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>
                                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>                                        
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="border p-4 sticky-lg-top review-form mt-4 mt-lg-0">
                                            <h5 class="mb-3 pb-3 border-bottom">WRITE</h5>
                                            <form>
                                                <div class="row g-2">
                                                    <div class="col-sm-12">
                                                        <label class="form-label">Body of Review (1500)</label>
                                                        <textarea rows="5" class="form-control"></textarea>
                                                    </div>
                                                    <div class="col-sm-12 pt-2">
                                                        <button class="btn btn-primary">Submit Review</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Product Tabs -->
            <!-- You may also like -->
            <section class="section bg-gray-100">
                <div class="container">
                    <div class="row justify-content-center mb-4 mb-lg-6">
                        <div class="col-lg-6 text-center">
                            <h3 class="h2 mb-2">You might also like these</h3>
                            <p class="fs-6 m-0">Read Today’s News.</p>
                        </div>
                    </div>
                    <div class="swiper-hover-arrow position-relative">
            <div class="swiper swiper-container" data-swiper-options='{
                      "slidesPerView": 2,
                      "spaceBetween": 24,
                      "loop": true,
                      "pagination": {
                        "el": ".swiper-pagination",
                        "clickable": true
                        },
                      "navigation": {
                        "nextEl": ".swiper-next-02",
                        "prevEl": ".swiper-prev-02"
                      },
                      "autoplay": {
                        "delay": 3500,
                        "disableOnInteraction": false
                      },
                      "breakpoints": {
                        "600": {
                          "slidesPerView": 3
                        },
                        "991": {
                          "slidesPerView": 3
                        },
                        "1200": {
                          "slidesPerView": 4
                        }
                      }
                }'>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="product-card-1">
                            <div class="product-card-image">
                                <div class="badge-ribbon">
                                    <span class="badge bg-danger">Sale</span>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-heart"></i>
                                    </a>
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-repeat"></i>
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                                        <i class="fi-eye"></i>
                                    </a>
                                </div>
                                <div class="product-media">
                                    <a href="#">
                                        <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                    </a>
                                    <div class="product-cart-btn">
                                        <a href="#" class="btn btn-primary btn-sm w-100">
                                            <i class="fi-shopping-cart"></i>
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-card-info">
                                <div class="product-meta small">
                                    <a href="#">Clothing</a>, <a href="#">Men</a>
                                </div>
                                <div class="rating-star text">
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                                <h6 class="product-title">
                                    <a href="#">Fine-knit sweater</a>
                                </h6>
                                <div class="product-price">
                                    <span class="text-primary">$28.<small>50</small></span>
                                    <del class="fs-sm text-muted">$38.<small>50</small></del>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product-card-1">
                            <div class="product-card-image">
                                <div class="badge-ribbon">
                                    <span class="badge bg-danger">Sale</span>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-heart"></i>
                                    </a>
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-repeat"></i>
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                                        <i class="fi-eye"></i>
                                    </a>
                                </div>
                                <div class="product-media">
                                    <a href="#">
                                        <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                    </a>
                                    <div class="product-cart-btn">
                                        <a href="#" class="btn btn-primary btn-sm w-100">
                                            <i class="fi-shopping-cart"></i>
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-card-info">
                                <div class="product-meta small">
                                    <a href="#">Clothing</a>, <a href="#">Men</a>
                                </div>
                                <div class="rating-star text">
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                                <h6 class="product-title">
                                    <a href="#">Fine-knit sweater</a>
                                </h6>
                                <div class="product-price">
                                    <span class="text-primary">$28.<small>50</small></span>
                                    <del class="fs-sm text-muted">$38.<small>50</small></del>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product-card-1">
                            <div class="product-card-image">
                                <div class="badge-ribbon">
                                    <span class="badge bg-danger">Sale</span>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-heart"></i>
                                    </a>
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-repeat"></i>
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                                        <i class="fi-eye"></i>
                                    </a>
                                </div>
                                <div class="product-media">
                                    <a href="#">
                                        <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                    </a>
                                    <div class="product-cart-btn">
                                        <a href="#" class="btn btn-primary btn-sm w-100">
                                            <i class="fi-shopping-cart"></i>
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-card-info">
                                <div class="product-meta small">
                                    <a href="#">Clothing</a>, <a href="#">Men</a>
                                </div>
                                <div class="rating-star text">
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                                <h6 class="product-title">
                                    <a href="#">Fine-knit sweater</a>
                                </h6>
                                <div class="product-price">
                                    <span class="text-primary">$28.<small>50</small></span>
                                    <del class="fs-sm text-muted">$38.<small>50</small></del>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product-card-1">
                            <div class="product-card-image">
                                <div class="badge-ribbon">
                                    <span class="badge bg-danger">Sale</span>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-heart"></i>
                                    </a>
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-repeat"></i>
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                                        <i class="fi-eye"></i>
                                    </a>
                                </div>
                                <div class="product-media">
                                    <a href="#">
                                        <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                    </a>
                                    <div class="product-cart-btn">
                                        <a href="#" class="btn btn-primary btn-sm w-100">
                                            <i class="fi-shopping-cart"></i>
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-card-info">
                                <div class="product-meta small">
                                    <a href="#">Clothing</a>, <a href="#">Men</a>
                                </div>
                                <div class="rating-star text">
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                                <h6 class="product-title">
                                    <a href="#">Fine-knit sweater</a>
                                </h6>
                                <div class="product-price">
                                    <span class="text-primary">$28.<small>50</small></span>
                                    <del class="fs-sm text-muted">$38.<small>50</small></del>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product-card-1">
                            <div class="product-card-image">
                                <div class="badge-ribbon">
                                    <span class="badge bg-danger">Sale</span>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-heart"></i>
                                    </a>
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-repeat"></i>
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                                        <i class="fi-eye"></i>
                                    </a>
                                </div>
                                <div class="product-media">
                                    <a href="#">
                                        <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                    </a>
                                    <div class="product-cart-btn">
                                        <a href="#" class="btn btn-primary btn-sm w-100">
                                            <i class="fi-shopping-cart"></i>
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-card-info">
                                <div class="product-meta small">
                                    <a href="#">Clothing</a>, <a href="#">Men</a>
                                </div>
                                <div class="rating-star text">
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                                <h6 class="product-title">
                                    <a href="#">Fine-knit sweater</a>
                                </h6>
                                <div class="product-price">
                                    <span class="text-primary">$28.<small>50</small></span>
                                    <del class="fs-sm text-muted">$38.<small>50</small></del>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product-card-1">
                            <div class="product-card-image">
                                <div class="badge-ribbon">
                                    <span class="badge bg-danger">Sale</span>
                                </div>
                                <div class="product-action">
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-heart"></i>
                                    </a>
                                    <a href="#" class="btn btn-outline-primary">
                                        <i class="fi-repeat"></i>
                                    </a>
                                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                                        <i class="fi-eye"></i>
                                    </a>
                                </div>
                                <div class="product-media">
                                    <a href="#">
                                        <img class="img-fluid" src="../../assets/img/fashion/1000x1000.jpg" title="" alt="">
                                    </a>
                                    <div class="product-cart-btn">
                                        <a href="#" class="btn btn-primary btn-sm w-100">
                                            <i class="fi-shopping-cart"></i>
                                            Add to cart
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-card-info">
                                <div class="product-meta small">
                                    <a href="#">Clothing</a>, <a href="#">Men</a>
                                </div>
                                <div class="rating-star text">
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star-fill active"></i>
                                    <i class="bi bi-star"></i>
                                </div>
                                <h6 class="product-title">
                                    <a href="#">Fine-knit sweater</a>
                                </h6>
                                <div class="product-price">
                                    <span class="text-primary">$28.<small>50</small></span>
                                    <del class="fs-sm text-muted">$38.<small>50</small></del>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination mt-4 d-lg-none position-relative"></div>
            </div>
            <div class="swiper-arrow-style-02 swiper-next swiper-next-02"><i class="bi bi-chevron-right"></i> </div>
            <div class="swiper-arrow-style-02 swiper-prev swiper-prev-02"><i class="bi bi-chevron-left"></i></div>
        </div>
                </div>
            </section>
            <!-- End You may also like -->
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
	
	var goUrlAjaxList = urlCommon + "majorFavoriteUsrAjaxList";		/* #-> */
	var goUrlInst = urlCommon + "majorFavoriteUsrInst"; 			/* #-> */
	var goUrlUpdt = urlCommon + "majorFavoriteUsrUpdt";				/* #-> */
	var goUrlUele = urlCommon + "majorFavoriteUsrUele";				/* #-> */
	var goUrlDele = urlCommon + "majorFavoriteUsrDele";				/* #-> */
	
	var seq = $("input:hidden[name=mbmfSeq]"); 						/* #-> */
	
	
	uleteFavorite = function() {
		$("#modalAlertTitle").text("즐겨찾기");
	
		$("#modalAlertBody").text("삭제 하시겠습니까?");
		$("#btnUele").remove();
		$("#modalAlertFooter").append('<button type="button" class="btn btn-danger btn-sm" id="btnUele" onclick="goFavoriteUele();">삭제</button>');				
		
		$("#modalAlert").modal("show");
	}
	
	
	goFavoriteUele = function() {
		$("#modalAlert").modal("show");		
		formVo.attr("action", goUrlUele).submit();
	}
</script>

</body>

</html>