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

<title>자전거</title>
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
            
            <!-- Shop -->
            <section class="py-6">
                <div class="container">
                    <div class="row">
                       
<!-- includeUsrLeftMypage s -->
<%@include file="../../include/includeUsrLeftMypage.jsp"%>
<!-- includeUsrLeftMypage e -->                      
                       
						<!-- Product Box -->
						<div class="col-lg-8 col-xl-9">

<!-- Form Contents -->
<div class="shop-top-bar d-flex pb-3">
    <div class="layout-change">

        <!-- Mobile Toggle -->
        <button class="btn btn-sm d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#shop_filter" aria-controls="shop_filter">
            <i class="fs-4 lh-1 bi bi-justify-left"></i>
        </button>
        <!-- End Mobile Toggle -->
        
        <!-- <a class="btn btn-sm active" href="#"><i class="bi bi-grid"></i></a> -->
        <!-- <a class="btn btn-sm" href=""><i class="bi bi-arrow-repeat"></i></a> -->
    </div>  
</div>

<div class="row g-3">
	<div class="card">
		<div class="card-body">
			<div class="row g-3">
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Bicycle</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">예븐 나의 자전거1</option>
						<option value="Argentina">예븐 나의 자전거2</option>
					</select>
				</div>                                     
				<div class="col-12">
					<label class="form-label" for="address-country">Title</label>
					<input class="form-control" type="text" id="address-company">
				</div>                                        
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Price</label>
					<input class="form-control" type="text" id="address-company">
				</div>
			</div>
			<hr>
			<div class="row g-3">
				<div class="col-sm-6">
					<label class="form-label" for="address-country">자동 재등록 사용</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Yes</option>
						<option value="Argentina">No</option>
					</select>
				</div>									
				<div class="col-sm-6">
					<label class="form-label" for="address-country">자동 재등록 주기</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">1 Week</option>
						<option value="Argentina">2 Week</option>
						<option value="Argentina">1 Month</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">재등록 할인 가격</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">0 Down</option>
						<option value="Argentina">50,000 Down</option>
						<option value="Argentina">100,000 Down</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Guide</label>
					<input class="form-control" type="text" id="address-company" placeholder="1단위로 100,000 원씩 할인된 가격으로 자동 등록 되며 기존 등록 정보는 중지 처리 됩니다." disabled>												
				</div> 
				<div class="col-12">
					<a href="/v1/mall/product/productTradeUsrAjaxList">
						<button class="btn btn-secondary">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
							</svg>
						</button>
					</a>
					<button class="btn btn-primary">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-save" viewBox="0 0 16 16">
							<path d="M2 1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H9.5a1 1 0 0 0-1 1v7.293l2.646-2.647a.5.5 0 0 1 .708.708l-3.5 3.5a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L7.5 9.293V2a2 2 0 0 1 2-2H14a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h2.5a.5.5 0 0 1 0 1H2z"/>
						</svg>
					</button>
					<button class="btn btn-warning">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-stop-circle" viewBox="0 0 16 16">
							<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
							<path d="M5 6.5A1.5 1.5 0 0 1 6.5 5h3A1.5 1.5 0 0 1 11 6.5v3A1.5 1.5 0 0 1 9.5 11h-3A1.5 1.5 0 0 1 5 9.5v-3z"/>
						</svg>
					</button>
				</div>
			</div>                                    
		</div>
	</div>
</div>                           
<!-- Form Contents -->
                            
                        </div>
                        <!-- End Product Box -->
                    </div>
                </div>
            </section>
            <!-- End Shop -->
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