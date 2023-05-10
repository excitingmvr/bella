<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../../include/head.jsp"%>

<title>Nationality</title>		<!-- #-> -->

<style type="text/css">
	
</style>
</head>
<body>

<!-- top s -->
<%@include file="../../include/top.jsp"%>
<!-- top e -->

<!-- gnb s -->
<%@include file="../../include/gnb.jsp"%>
<!-- gnb e -->

<!-- right menu s -->
<%@include file="../../include/right.jsp"%>
<!-- right menu e -->

<!-- contents s -->

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-2 d-none d-md-block">
		
<!-- left menu s -->
<div class="flex-shrink-0 p-3 bg-white">
<!-- 		
   	<a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
		<svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
		<span class="fs-5 fw-semibold">Collapsible</span>
   	</a>
 -->		
	<ul class="list-unstyled ps-0">
		<li class="mb-1">
			<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="fasle">Home</button>
			<div class="collapse" id="home-collapse">
<!-- 
					<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">Home</button>
					<div class="collapse show" id="home-collapse">
 -->
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark rounded">Overview</a></li>
					<li><a href="#" class="link-dark rounded">Updates</a></li>
					<li><a href="#" class="link-dark rounded">Reports</a></li>
				</ul>
			</div>
		</li>
		<li class="mb-1">
			<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">Dashboard</button>
			<div class="collapse" id="dashboard-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark rounded">Overview</a></li>
					<li><a href="#" class="link-dark rounded">Weekly</a></li>
					<li><a href="#" class="link-dark rounded">Monthly</a></li>
					<li><a href="#" class="link-dark rounded">Annually</a></li>
				</ul>
			</div>
		</li>
		<li class="mb-1">
			<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">Orders</button>
			<div class="collapse" id="orders-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark rounded">New</a></li>
					<li><a href="#" class="link-dark rounded">Processed</a></li>
					<li><a href="#" class="link-dark rounded">Shipped</a></li>
					<li><a href="#" class="link-dark rounded">Returned</a></li>
				</ul>
			</div>
		</li>
		<li class="border-top my-3"></li>
		<li class="mb-1">
			<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">Account</button>
			<div class="collapse" id="account-collapse">
				<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
					<li><a href="#" class="link-dark rounded">New...</a></li>
					<li><a href="#" class="link-dark rounded">Profile</a></li>
					<li><a href="#" class="link-dark rounded">Settings</a></li>
					<li><a href="#" class="link-dark rounded">Sign out</a></li>
				</ul>
			</div>
		</li>
	</ul>
</div>
<!-- left menu e -->

		</div>
		<div class="col-sm-10">

<!-- main s -->
<form name="formList" id="formList" method="post">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<input type="hidden" name="checkboxSeqArray" >
	<input type="hidden" name="ifnaSeq">		<!-- #-> -->
	
<h3 class="mt-3 mb-0">국가코드 관리</h3>			<!-- #-> -->

<!--  -->
<div class="container-fluid px-0 d-block d-sm-none">
    <div class="row">
        <div id="divSearchControl" class="col text-center">
            <i id="iSearchControlUp" class="fas fa-chevron-up"></i>
            <i id="iSearchControlDown" class="fas fa-chevron-down"></i>
        </div>
    </div>
</div>
<!--  -->

<!-- search s -->
<div id="divSearch" class="container-fluid border px-0 mt-2 py-2 py-sm-3">
    <div class="row row-cols-2 row-cols-sm-6 g-2 px-2">
        <div class="col">
            <select id="shDelNy" name="shDelNy" class="form-select form-select-sm">
                <option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제여부</option>
                <option value="1" <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
                <option value="0" <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
            </select>
        </div>
        <div class="col">
            <select id="shOptionDate" name="shOptionDate" class="form-select form-select-sm">
                <option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>날짜</option>
                <option value="1" <c:if test="${vo.shOptionDate eq 1}">selected</c:if>>등록일</option>
                <option value="2" <c:if test="${vo.shOptionDate eq 2}">selected</c:if>>수정일</option>
            </select>
        </div>  
        <div class="col">
        	<fmt:parseDate var="shDateStart" value="${vo.shDateStart }" pattern="yyyy-MM-dd HH:mm:ss"/>
            <input type="text" id="shDateStart" name="shDateStart" value="<fmt:formatDate value="${shDateStart }" pattern="yyyy-MM-dd" />" placeholder="시작일" class="form-control form-control-sm" autocomplete="off">
        </div>              
        <div class="col">
			<fmt:parseDate var="shDateEnd" value="${vo.shDateEnd }" pattern="yyyy-MM-dd HH:mm:ss" />
	        <input type="text" id="shDateEnd" name="shDateEnd" value="<fmt:formatDate value="${shDateEnd }" pattern="yyyy-MM-dd"/>" placeholder="종료일" class="form-control form-control-sm" autocomplete="off">
        </div> 
    </div>
    <div class="row row-cols-2 row-cols-sm-6 g-2 mt-1 px-2">
        <div class="col">
            <select id="shOption" name="shOption" class="form-select form-select-sm">
                <option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
                <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>국가 이름</option>
                <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>국가 이름 (영문)</option>
                <option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>국가 코드 (2자리))</option>
                <option value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>국가 코드 (3자리))</option>
            </select>
        </div>                    
        <div class="col">
            <input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어" class="form-control form-control-sm">
        </div> 
        <div class="col">
			<button type="button" class="btn btn-warning btn-sm" name="" id="btnSearch"><i class="fas fa-search"></i></button>
			<button type="button" class="btn btn-danger btn-sm" name="" id="btnReset"><i class="fas fa-redo-alt"></i></button>
        </div>    
    </div>
</div>
<!-- search e -->

<div id="lita"></div>		<!-- #-> -->

<!-- button s -->
<div class="container-fluid px-0 mt-2">
    <div class="row">
        <div class="col-6 text-start">
            <button type="button" class="btn btn-danger btn-sm" name="" id="btnDelete"><i class="fa-solid fa-x"></i></button>
            <button type="button" class="btn btn-danger btn-sm" name="" id="btnUelete"><i class="far fa-trash-alt"></i></button>
        </div>
        <div class="col-6 text-end">
            <button type="button" class="btn btn-success btn-sm" name="" id="btnExcel"><i class="far fa-file-excel fa-lg"></i></button>
            <button type="button" class="btn btn-primary btn-sm" name="" id="btnForm"><i class="fas fa-plus"></i></button>
        </div>
    </div>
</div>
<!-- button e -->

</form>
<!-- main e -->

		</div>
	</div>
</div>
<!-- contents e -->

<!-- footer s -->
<%@include file="../../include/footer.jsp"%>
<!-- footer e -->

<!-- modalBase s -->
<%@include file="../../include/modalBase.jsp"%>
<!-- modalBase e -->

<!-- linkJs s -->
<%@include file="../../include/linkJs.jsp"%>
<!-- linkJs e -->

<script src="/resources/xdm/v1/js/includeXdmAjaxList.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		divSearchControl();
		$("#shDateStart, #shDateEnd").datepicker();
		setLita();
	}); 
	
	
	var urlCommon = "/v1/infra/nationality/";
	
	var goUrlAjaxList = urlCommon + "nationalityXdmAjaxList";				/* #-> */
	var goUrlLita = urlCommon + "nationalityXdmLita";						/* #-> */
	var goUrlForm = urlCommon + "nationalityXdmForm";						/* #-> */
	var goUrlMultiUele = urlCommon + "nationalityXdmMultiUele";				/* #-> */
	var goUrlMultiDele = urlCommon + "nationalityXdmMultiDele";				/* #-> */
	
	var excelUri = urlCommon + "excelDownload";								/* #-> */
	
	var seq = $("input:hidden[name=ifnaSeq]");								/* #-> */
	
	
	validationList = function() {
		/* if(!checkNull($.trim($("input[name=searchValue]").val()), "searchValue")) return false; */
	}
	
	
 	$("#btnReset").on("click", function(){
		$(location).attr("href", goUrlAjaxList);
	});
 	
</script>

</body>
</html>