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

<title>상품</title>
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
<form name="formList" id="formList" method="post">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<input type="hidden" name="checkboxSeqArray" >
	<input type="hidden" name="mbmgSeq">		<!-- #-> -->
	     
            <!-- Breadcrumb -->
            <div class="py-3 bg-gray-100">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 my-2">
                            <h1 class="m-0 h4 text-center text-lg-start">자전거</h1>
                        </div>
                        <div class="col-lg-6 my-2">
                            <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                                <li class="breadcrumb-item"></i>My Page</li>
                                <li class="breadcrumb-item text-nowrap" aria-current="page">상품</li>
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

<div id="lita"></div>  

                        </div>
                        <!-- End Product Box -->
                    </div>
                </div>
            </section>
            <!-- End Shop -->
</form>            
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

<script src="/resources/usr/v1/js/includeUsrAjaxList.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
		setLita();
		
	}); 
	
	
	var urlCommon = "/v1/mallbicycle/major/";
	
	var goUrlAjaxList = urlCommon + "majorGoodsUsrAjaxList";				/* #-> */
	var goUrlLita = urlCommon + "majorGoodsUsrLita";						/* #-> */
	var goUrlForm = urlCommon + "majorGoodsUsrForm";						/* #-> */
	var goUrlView = urlCommon + "majorGoodsUsrView";						/* #-> */
	var goUrlMultiUele = urlCommon + "majorGoodsUsrMultiUele";				/* #-> */
	var goUrlMultiDele = urlCommon + "majorGoodsUsrMultiDele";				/* #-> */
	
	var excelUri = urlCommon + "excelDownload";								/* #-> */
	
	var seq = $("input:hidden[name=mbmgSeq]");								/* #-> */
	
	
	validationList = function() {
		/* if(!checkNull($.trim($("input[name=searchValue]").val()), "searchValue")) return false; */
	}
	
	
 	$("#btnReset").on("click", function(){
		$(location).attr("href", goUrlAjaxList);
	});
 	
</script>

</body>

</html>