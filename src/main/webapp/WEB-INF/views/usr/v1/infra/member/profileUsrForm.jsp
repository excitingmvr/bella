<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->

<title>개인정보</title>
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
                            <h1 class="m-0 h4 text-center text-lg-start">개인정보</h1>
                        </div>
                        <div class="col-lg-6 my-2">
                            <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                                <li class="breadcrumb-item">My Page</a></li>
                                <li class="breadcrumb-item text-nowrap" aria-current="page">개인정보</li>
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

<!-- includeUsrLeft s -->
<%@include file="../../include/includeUsrLeftMypage.jsp"%>
<!-- includeUsrLeft e -->    

						<!-- Product Box -->
						<div class="col-lg-8 col-xl-9">

<!-- <div id="lita"></div> -->		<!-- #-> -->  

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
			<div class="row">
				<div class="col-sm-6 mb-3">
					<label for="formFile" class="form-label">Change Profile Photo</label>
					<input class="form-control" type="file" id="formFile">
				</div>
				<div class="col-sm-6 mb-3">
					<label class="form-label">First Name<span class="text-danger">*</span></label>
					<input type="text" class="form-control" placeholder="First name">
				</div>
				<div class="col-sm-6 mb-3">
					<label class="form-label">Last Name<span class="text-danger">*</span></label>
					<input type="text" class="form-control" placeholder="Last name">
				</div>
				<div class="col-sm-6 mb-3">
					<label class="form-label">Email address<span class="text-danger">*</span></label>
					<input type="email" class="form-control" id="exampleInputEmail3" placeholder="E-mail">
				</div>
				<div class="col-sm-6 mb-3">
					<label class="form-label">Mobile Number<span class="text-danger">*</span></label>
					<input type="text" class="form-control" placeholder="Mobile">
				</div>
				<div class="col-sm-6 mb-3">
					<label class="form-label">Landline Number</label>
					<input type="text" class="form-control" placeholder="Landline">
				</div>
				<div class="col-12 pt-2">
					<button class="btn btn-primary">Save changes</button>
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