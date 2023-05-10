<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->

<title>Sign Up</title>
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
    <!-- heder height -->
    <div class="header-height-bar"></div>

<!-- includeUsrGnb s -->
<%@include file="../../include/includeUsrGnb.jsp"%>
<!-- includeUsrGnb e -->
    
    <!-- Main -->
    <main>
        <!-- Breadcrumb -->
<!--
        <div class="py-3 bg-gray-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 my-2">
                        <h1 class="m-0 h4 text-center text-lg-start">Login</h1>
                    </div>
                    <div class="col-lg-6 my-2">
                        <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#"><i class="bi bi-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">Login</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
-->
        <!-- End Breadcrumb -->
        <!-- login page -->
        <div class="section">
            <div class="container">
                <div class="justify-content-center row">
                    <div class="col-lg-5 col-xxl-4">
                        <div class="card">
                            <div class="card-header bg-transparent py-3">
                                <h3 class="h4 mb-0">SignUp </h3>
                            </div>
                            <div class="card-body">
                                <form class="">
                                    <div class="form-group mb-3">
                                        <label for="email_1" class="form-label">ID<span class="text-danger">*</span></label>
                                        <input type="text" id="email_1" class="form-control" placeholder="ID">
                                    </div>
                                    <div class="form-group mb-3">
										<label class="form-label col" for="exampleInputPassword01">Password<span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" id="exampleInputPassword01" placeholder="*********">
                                    </div>
                                    <div class="form-group text-center">
                                        <button type="submit" class="btn btn-primary w-100">
                                            Log in
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end login -->
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