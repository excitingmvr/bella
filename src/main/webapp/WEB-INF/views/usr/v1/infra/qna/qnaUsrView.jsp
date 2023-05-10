<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->

<title>공지사항</title>
<style>
    .product-card-1 .product-card-info {
		text-align: left;
    }
</style>
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
                            <h1 class="m-0 h4 text-center text-lg-start">공지사항</h1>
                        </div>
                        <div class="col-lg-6 my-2">
                            <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                                <li class="breadcrumb-item"></i>Customer</li>
                                <li class="breadcrumb-item text-nowrap" aria-current="page">공지사항</li>
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

<!-- Total -->
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
<!-- End Total --> 
                     

<article>
<!-- 
	<div class="mb-5">
	    <img class="img-fluid" src="../../assets/img/pages/1000x700.jpg" title="" alt="">
	</div>
 -->	
	<h3><c:out value="${item.ifqaTitle }"/></h3>
	<span class="small"><fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
	<hr>
	<p><c:out value="${fn:replace(item.ifqaContents, br, '<br/>')}" escapeXml = "false"/></p>
	<hr>
	<span class="small"><fmt:formatDate value="${item.ifqaAnswerDatetime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
	<p><c:out value="${fn:replace(item.ifqaAnswer, br, '<br/>')}" escapeXml = "false"/></p>
</article>
<div class="col-12">
	<button type="button" class="btn btn-secondary" id="btnList">
		<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
			<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
		</svg>
	</button>
</div>
                        </div>
                        <!-- End Product Box -->
                    </div>
                </div>
            </section>
            <!-- End Shop -->
        </main>
        <!-- End Main -->

<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="qnaUsrVo.jsp"%>		<!-- #-> -->
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

<script type="text/javascript">

	$(document).ready(function(){
		
		//setLita();
		
	}); 
	
	
	var urlCommon = "/v1/infra/qna/";
	
	var goUrlAjaxList = urlCommon + "qnaUsrAjaxList";				/* #-> */
	var goUrlLita = urlCommon + "qnaUsrLita";						/* #-> */
	var goUrlForm = urlCommon + "qnaUsrForm";						/* #-> */
	var goUrlView = urlCommon + "qnaUsrView";						/* #-> */
	var goUrlMultiUele = urlCommon + "qnaUsrMultiUele";				/* #-> */
	var goUrlMultiDele = urlCommon + "qnaUsrMultiDele";				/* #-> */
	
	var excelUri = urlCommon + "excelDownload";								/* #-> */
	
	var seq = $("input:hidden[name=inqaSeq]");								/* #-> */
	
	
	validationList = function() {
		/* if(!checkNull($.trim($("input[name=searchValue]").val()), "searchValue")) return false; */
	}
	
	
 	$("#btnReset").on("click", function(){
		$(location).attr("href", goUrlAjaxList);
	});
 	
</script>

</body>

</html>