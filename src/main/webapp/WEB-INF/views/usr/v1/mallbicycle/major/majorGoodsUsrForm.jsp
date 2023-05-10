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
                                <li class="breadcrumb-item">My Page</li>
                                <li class="breadcrumb-item text-nowrap active" aria-current="page">상품</li>
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
					<label class="form-label" for="address-country">Bicycle Type</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Road</option>
						<option value="Argentina">Road(Electorn)</option>
						<option value="Argentina">Mtb</option>
						<option value="Argentina">Mtb(Electorn)</option>
						<option value="Argentina">Life</option>
						<option value="Argentina">Life(Electorn)</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Bicycle Detail Type</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Aero</option>
						<option value="Argentina">All Round</option>
					</select>
				</div>    
				<div class="col-12">
					<label class="form-label" for="address-country">Name</label>
					<input class="form-control" type="text" id="address-company">
				</div>                                        
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Brand</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Canyon</option>
					</select>
				</div>                                        
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Model</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Aeroad CF SLX 7 Disc eTap</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Production Year</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">2022</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Size</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">XS</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Material</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Carbon</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Drivetrain</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Dura Ace</option>
					</select>
				</div>
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Break</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Disk</option>
						<option value="Argentina">Rim</option>
					</select>
				</div> 
				<div class="col-sm-6">
					<label class="form-label" for="address-country">Wheel</label>
					<select class="form-select" id="address-country" required="">
						<option value="">Select</option>
						<option value="Argentina">Carbon</option>
						<option value="Argentina">al</option>
					</select>
				</div>                  
				<div class="col-12">
					<label class="form-label" for="address-country">Description</label>
					<input class="form-control" type="textarea" id="address-company">
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