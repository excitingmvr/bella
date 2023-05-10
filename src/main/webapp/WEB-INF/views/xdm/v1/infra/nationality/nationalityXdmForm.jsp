<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../../include/head.jsp"%>
<!-- head e -->

<title>Nationality</title>		<!-- #-> -->

<style type="text/css">

	.addScroll{
		overflow-y:auto;
		height: 90px;
		background-color:#E9ECEF;
	}
 	
	.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
	}	

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


<!-- <form name="form" id="form" method="post" enctype="multipart/form-data"> -->
<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
<!-- *Vo.jsp s -->
<%@include file="nationalityXdmVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->

<h3 class="mt-3 mb-0">국가코드 관리</h3>		<!-- #-> -->
 
<div class="container-fluid px-0 px-sm-5 mt-2">
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifnaSeq" class="form-label">Seq<span class="text-danger">*</span></label>
			<input type="text" id="ifnaSeq" value="<c:out value="${item.ifnaSeq}"/>" maxlength="20" placeholder="자동생성" class="form-control form-control-sm" readonly>
		</div>
		<div class="col-sm-6">	
		</div>
	</div> 
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ifnaName" class="form-label">국가 이름<span class="text-danger">*</span></label>
            <input type="text" id="ifnaName" name="ifnaName" value="<c:out value="${item.ifnaName}"/>" maxlength="20" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifnaNameFeedback"></div>
        </div>
        <div class="col-sm-6">
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ifnaNameKor" class="form-label">국가 이름 (한글)</label>
            <input type="text" id="ifnaNameKor" name="ifnaNameKor" value="<c:out value="${item.ifnaNameKor}"/>" maxlength="20" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifnaNameKorFeedback"></div>
        </div>
        <div class="col-sm-6">
			<label for="ifnaNameEng" class="form-label">국가 이름 (영문)</label>
            <input type="text" id="ifnaNameEng" name="ifnaNameEng" value="<c:out value="${item.ifnaNameEng}"/>" maxlength="20" placeholder="영대소문자" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifnaNameEngFeedback"></div>        
        </div>
    </div>    
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ifnaCode2Char" class="form-label">국가 코드 (2자리)<span class="text-danger">*</span></label>
            <input type="text" id="ifnaCode2Char" name="ifnaCode2Char" value="<c:out value="${item.ifnaCode2Char}"/>" maxlength="2" placeholder="영대소문자" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifnaCode2CharFeedback"></div>
        </div>
        <div class="col-sm-6">
			<label for="ifnaCode3Char" class="form-label">국가 코드 (3자리)<span class="text-danger">*</span></label>
            <input type="text" id="ifnaCode3Char" name="ifnaCode3Char" value="<c:out value="${item.ifnaCode3Char}"/>" maxlength="3" placeholder="영대소문자" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifnaCode3CharFeedback"></div>        
        </div>
    </div>
    <div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifnaUseNy" class="form-label">사용여부<span class="text-danger">*</span></label>
			<select id="ifnaUseNy" name="ifnaUseNy" class="form-select form-select-sm">
				<option value="1" <c:if test="${item.ifnaUseNy eq 1 }">selected</c:if>>Y</option>
				<option value="0" <c:if test="${item.ifnaUseNy eq 0 }">selected</c:if>>N</option>
			</select>
		</div>
		<div class="col-sm-6">
			<label for="ifnaOrder" class="form-label">순서<span class="text-danger">*</span></label>
			<input type="text" id="ifnaOrder" name="ifnaOrder" value="<c:out value="${item.ifnaOrder}"/>" maxlength="20" placeholder="숫자(0~255)" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifnaOrderFeedback"></div>				        
		</div>
    </div>
 
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifnaDesc" class="form-label">설명</label>
            <textarea id="ifnaDesc" name="ifnaDesc" rows="5" class="form-control"><c:out value="${item.ifnaDesc }"/></textarea>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
<%--         
			<label for="ifnaUseNy" class="form-label">사용여부</label>
            <select id="ifnaUseNy" name="ifnaUseNy" class="form-select form-select-sm">
				<option value="">::선택::</option>
				<option value="1" <c:if test="${item.ifnaUseNy eq 1 or empty item.ifnaUseNy }">selected</c:if>>Y</option>
				<option value="0" <c:if test="${item.ifnaUseNy eq 0}">selected</c:if>>N</option>
			</select>
 --%>		        
        </div>
    </div>  
<c:if test="${not empty item.ifnaSeq }">	<!-- #-> -->
<!-- regMod s -->
<%@include file="../../include/regmod.jsp"%>
<!-- regMod e -->
</c:if>
</div>
 
<div class="container-fluid px-0 px-sm-5 mt-3">
    <div class="row">
        <div class="col-6 text-start">
            <button type="button" class="btn btn-secondary btn-sm" name="" id="btnList"><i class="fa-solid fa-bars"></i></button>
        </div>
        <div class="col-6 text-end">
<c:if test="${not empty item.ifnaSeq }">	<!-- #-> -->        
            <button type="button" class="btn btn-danger btn-sm" name="" id="btnDelete"><i class="fa-solid fa-x"></i></button>
            <button type="button" class="btn btn-danger btn-sm" name="" id="btnUelete"><i class="far fa-trash-alt"></i></button>
</c:if>            
            <button type="button" class="btn btn-success btn-sm" name="" id="btnSave"><i class="fa-regular fa-bookmark"></i></button>
        </div>
    </div>
</div>

</form>
<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="nationalityXdmVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->
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

<script src="/resources/xdm/v1/js/includeXdmForm.js"></script>

<script>

	$(document).ready(function(){

	}); 

	var urlCommon = "/v1/infra/nationality/";					/* #-> */
	
	var goUrlList = urlCommon + "nationalityXdmAjaxList";		/* #-> */
	var goUrlInst = urlCommon + "nationalityXdmInst"; 			/* #-> */
	var goUrlUpdt = urlCommon + "nationalityXdmUpdt";			/* #-> */
	var goUrlUele = urlCommon + "nationalityXdmUele";			/* #-> */
	var goUrlDele = urlCommon + "nationalityXdmDele";			/* #-> */
	
	var seq = $("input:hidden[name=ifnaSeq]"); 					/* #-> */
	
	
	validationInst = function() {
	   	if(validationUpdt() == false) return false;
	}

	
	validationUpdt = function() {
 		if(!checkOnlyKoreanEnglishNumber('ifnaName', 2, 0, "국가 이름은 한글, 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyKorean('ifnaNameKor', 2, 1, "국가 이름 (한글)은 한글만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglish('ifnaNameEng', 2, 1, "국가 이름 (영문)은 영대소문자만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglish('ifnaCode2Char', 2, 0, "국가 코드 (2자리)은 영대소문자만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglish('ifnaCode3Char', 2, 0, "국가 코드 (3자리)은 영대소문자만 입력 가능합니다.")) return false;
 		if(!checkOnlyNumber('ifnaOrder', 2, 0, 1, 0, 255, "순서는 숫자(0~255)만 입력 가능합니다.")) return false;
	}
	
</script>

</body>
</html>