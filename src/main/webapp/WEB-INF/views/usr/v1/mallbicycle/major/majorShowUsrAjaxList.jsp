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

<title>Road Bicycle</title>
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
<form name="formList" id="formList" method="post" autocomplete="off">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<input type="hidden" name="checkboxSeqArray" >
	<input type="hidden" name="mbmtSeq">		<!-- #-> -->         
        
            <!-- Breadcrumb -->
            <div class="py-3 bg-gray-100">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 my-2">
                            <h1 class="m-0 h4 text-center text-lg-start">Bicycle</h1>
                        </div>
                        <div class="col-lg-6 my-2">
                            <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                                <li class="breadcrumb-item">Road</a></li>
                                <li class="breadcrumb-item text-nowrap" aria-current="page">Product</li>
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
<%@include file="../../include/includeUsrLeft.jsp"%>
<!-- includeUsrLeft e -->    

                        <!-- Product Box -->
                        <div class="col-lg-8 col-xl-9">

<div id="lita"></div>		<!-- #-> -->                             
                            
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
		$("#shPostedDateStart, #shPostedDateEnd").datepicker();
		
		setCategoryInitAjax();
		
		setCategory();

		setLita();
	}); 
	
	
	var urlCommon = "/v1/mallbicycle/major/";
	
	var goUrlAjaxList = urlCommon + "majorShowUsrAjaxList?shType=<c:out value="${vo.shType}"/>";				/* #-> */
	var goUrlLita = urlCommon + "majorShowUsrLita";						/* #-> */
	var goUrlForm = urlCommon + "majorShowUsrForm";						/* #-> */
	var goUrlView = urlCommon + "majorShowUsrView";						/* #-> */
	var goUrlMultiUele = urlCommon + "majorShowUsrMultiUele";				/* #-> */
	var goUrlMultiDele = urlCommon + "majorShowUsrMultiDele";				/* #-> */
	
	var excelUri = urlCommon + "excelDownload";								/* #-> */
	
	var seq = $("input:hidden[name=mbmtSeq]");								/* #-> */
	
	/* category s */
	var listCategoryJs = new Array();	
	
	function setCategoryInitAjax() {
		$.ajax({
			async: false 
			,cache: false
			,type: "post"
			,url: "/v1/infra/category/selectListCachedCategoryAll"
			,success: function(response) {
				if(response.rt == "success") {
					for (var i=0; i<response.list.length; i++){
						listCategoryJs.push(
							{
								ifctSeqJs: response.list[i].ifctSeq
								,ifctNameJs: response.list[i].ifctName
								,ifctNameEngJs: response.list[i].ifctNameEng
								,ifctParentsJs: response.list[i].ifctParents
								,ifctDepthJs: response.list[i].ifctDepth
								,ifctOrderJs: response.list[i].ifctOrder								
							}
						);						
					}
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		
		
	}
	/* category e */
	
	validationList = function() {
		
		/* shPostedDate */
		if($("#shPostedDateStart").val() != "" && $("#shPostedDateEnd").val() == ""){
			$("#shPostedDateEnd").addClass("is-invalid");
			return false;
		} else {
			$("#shPostedDateEnd").removeClass("is-invalid");
		}
		
		if($("#shPostedDateEnd").val() != "" && $("#shPostedDateStart").val() == ""){
			$("#shPostedDateStart").addClass("is-invalid");
			return false;
		} else {
			$("#shPostedDateStart").removeClass("is-invalid");
		}
		
		/* ProductionYear */
		if($("#shProductionYearStart").val() != "" && $("#shProductionYearEnd").val() == ""){
			$("#shProductionYearEnd").addClass("is-invalid");
			return false;
		} else {
			$("#shProductionYearEnd").removeClass("is-invalid");
		}
		
		if($("#shProductionYearEnd").val() != "" && $("#shProductionYearStart").val() == ""){
			$("#shProductionYearStart").addClass("is-invalid");
			return false;
		} else {
			$("#shProductionYearStart").removeClass("is-invalid");
		}
		
		/* Price */
		if($("#shPriceStart").val() != "" && $("#shPriceEnd").val() == ""){
			$("#shPriceEnd").addClass("is-invalid");
			return false;
		} else {
			$("#shPriceEnd").removeClass("is-invalid");
		}
		
		if($("#shPriceEnd").val() != "" && $("#shPriceStart").val() == ""){
			$("#shPriceStart").addClass("is-invalid");
			return false;
		} else {
			$("#shPriceStart").removeClass("is-invalid");
		}
	}
	
	/* shPostedDate */
	$("#shPostedDateStart, #shPostedDateEnd").on("change", function(){
		if($("#shPostedDateStart").val() != "" && $("#shPostedDateEnd").val() != ""){
			$("#shPostedDateStart").removeClass("is-invalid");
			$("#shPostedDateEnd").removeClass("is-invalid");
		}
	});
	
	/* ProductionYear */
	$("#shProductionYearStart, #shProductionYearEnd").on("change", function(){
		if($("#shProductionYearStart").val() != "" && $("#shProductionYearEnd").val() != ""){
			$("#shProductionYearStart").removeClass("is-invalid");
			$("#shProductionYearEnd").removeClass("is-invalid");
		}
	});

	/* Price */
	$("#shPriceStart, #shPriceEnd").on("change", function(){
		if($("#shPriceStart").val() != "" && $("#shPriceEnd").val() != ""){
			$("#shPriceStart").removeClass("is-invalid");
			$("#shPriceEnd").removeClass("is-invalid");
		}
	});
	
	
 	$("#btnReset, #btnResetLeft").on("click", function(){
		$(location).attr("href", goUrlAjaxList);
	});
 	
 	
	$("#shBrand").on("change", function(){
		
		$("#shModel").children('option:not(:first)').remove();

		var brandSeq = $("#shBrand option:selected").val();
		for(var i=0; i < listCategoryJs.length; i++ ){
			if(brandSeq == listCategoryJs[i].ifctParentsJs){
				$("#shModel").append('<option value="'+listCategoryJs[i].ifctSeqJs+'">'+listCategoryJs[i].ifctNameJs+'</option>');	
			}	
		}
	});

	
	$("#shDistrict").on("change", function(){
		
		$("#shDistrict2").children('option:not(:first)').remove();

		var districtSeq = $("#shDistrict option:selected").val();
		for(var i=0; i < listCategoryJs.length; i++ ){
			if(districtSeq == listCategoryJs[i].ifctParentsJs){
				$("#shDistrict2").append('<option value="'+listCategoryJs[i].ifctSeqJs+'">'+listCategoryJs[i].ifctNameJs+'</option>');	
			}	
		}
	});
	
	
	setCategory = function() {
		/* model */
		var brandSeq = '<c:out value="${vo.shBrand }"/>';
		var modelSeq = '<c:out value="${vo.shModel }"/>';
		if(modelSeq != null && modelSeq != "") {
			for(var i=0; i < listCategoryJs.length; i++ ){
				if(brandSeq == listCategoryJs[i].ifctParentsJs){
					if(modelSeq == listCategoryJs[i].ifctSeqJs){
						$("#shModel").append('<option value="'+listCategoryJs[i].ifctSeqJs+'" selected>'+listCategoryJs[i].ifctNameJs+'</option>');	
					}else {
						$("#shModel").append('<option value="'+listCategoryJs[i].ifctSeqJs+'">'+listCategoryJs[i].ifctNameJs+'</option>');	
					}
				}	
			}
		}
		
		/* district2 */
		var districtSeq = '<c:out value="${vo.shDistrict }"/>';
		var district2Seq = '<c:out value="${vo.shDistrict2 }"/>';
		if(district2Seq != null && district2Seq != "") {
			for(var i=0; i < listCategoryJs.length; i++ ){
				if(districtSeq == listCategoryJs[i].ifctParentsJs){
					if(district2Seq == listCategoryJs[i].ifctSeqJs){
						$("#shDistrict2").append('<option value="'+listCategoryJs[i].ifctSeqJs+'" selected>'+listCategoryJs[i].ifctNameJs+'</option>');	
					}else {
						$("#shDistrict2").append('<option value="'+listCategoryJs[i].ifctSeqJs+'">'+listCategoryJs[i].ifctNameJs+'</option>');	
					}
				}	
			}
		}		
	}
	

	
	
//  	$("#aaa").on("click", function(){
//  		/* $("#modalConfirm").modal("show"); */
//  		alert("asdfasdf");
// 	});
 	
</script>

</body>

</html>