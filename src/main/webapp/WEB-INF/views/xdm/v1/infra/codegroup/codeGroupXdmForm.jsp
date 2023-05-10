<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../../include/head.jsp"%>

<title>CodeGroup</title>		<!-- #-> -->

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
<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
<c:set var="listCodeTelecom" value="${CodeServiceImpl.selectListCachedCode('10')}"/>

<!-- <form name="form" id="form" method="post" enctype="multipart/form-data"> -->
<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
<!-- *Vo.jsp s -->
<%@include file="codeGroupXdmVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->

<h3 class="mt-3 mb-0">코드그룹 관리</h3>		<!-- #-> -->
 
<div class="container-fluid px-0 px-sm-5 mt-2">
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgSeq" class="form-label">코드그룹 코드 <span class="text-danger">*</span></label>
			<input type="text" id="ifcgSeq" name="ifcgSeq" value="<c:out value="${item.ifcgSeq}"/>" maxlength="20" placeholder="자동생성" class="form-control form-control-sm" readonly>
		</div>
		<div class="col-sm-6">
			<label for="ifcgSeqAnother" class="form-label">코드그룹 코드 (Another)</label>
			<input type="text" id="ifcgSeqAnother" name="ifcgSeqAnother" value="<c:out value="${item.ifcgSeqAnother}"/>" maxlength="20" placeholder="영대소문자,숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgSeqAnotherFeedback"></div>	
		</div>
	</div> 
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgName" class="form-label">코드그룹 이름 <span class="text-danger">*</span></label>
			<input type="text" id="ifcgName" name="ifcgName" value="<c:out value="${item.ifcgName}"/>" maxlength="20" placeholder="한글, 영대소문자, 숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgNameFeedback"></div>			
		</div>
		<div class="col-sm-6">
			<label for="ifcgNameEng" class="form-label">코드그룹 이름 (영문)</label>
			<input type="text" id="ifcgNameEng" name="ifcgNameEng" value="<c:out value="${item.ifcgNameEng}"/>" maxlength="20" placeholder="영대소문자, 숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgNameEngFeedback"></div>
		</div>
	</div> 
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgUseNy" class="form-label">사용여부 <span class="text-danger">*</span></label>
			<select id="ifcgUseNy" name="ifcgUseNy" class="form-select form-select-sm">
				<option value="1" <c:if test="${item.ifcgUseNy eq 1 }">selected</c:if>>Y</option>
				<option value="0" <c:if test="${item.ifcgUseNy eq 0 }">selected</c:if>>N</option>
			</select>
		</div>
		<div class="col-sm-6">
			<label for="ifcgOrder" class="form-label">순서 <span class="text-danger">*</span></label>
			<input type="text" id="ifcgOrder" name="ifcgOrder" value="<c:out value="${item.ifcgOrder}"/>" maxlength="3" placeholder="숫자(0~255)" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgOrderFeedback"></div>				        
		</div>
	</div>
	<div class="row mt-sm-4">
		<div class="col-sm-6 mt-3 mt-sm-0">
			<label for="ifcgDesc" class="form-label">설명</label>
			<textarea id="ifcgDesc" name="ifcgDesc" class="form-control"><c:out value="${item.ifcgDesc }"/></textarea>
		</div>
		<div class="col-sm-6 mt-3 mt-sm-0">
<%-- 		
			<label for="ifcgDelNy" class="form-label">삭제여부</label>
			<select id="ifcgDelNy" name="ifcgDelNy" class="form-select form-select-sm">
				<option value="0" <c:if test="${item.ifcgDelNy eq 0 }">selected</c:if>>N</option>
				<option value="1" <c:if test="${item.ifcgDelNy eq 1 }">selected</c:if>>Y</option>
			</select>
 --%>
		</div>
	</div>  
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgReferenceV1" class="form-label">예비1 (varchar type)</label>
			<input type="text" id="ifcgReferenceV1" name="ifcgReferenceV1" value="<c:out value="${item.ifcgReferenceV1}"/>" maxlength="20" placeholder="영대소문자,숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceV1Feedback"></div>
		</div>
		<div class="col-sm-6">
			<label for="ifcgReferenceV2" class="form-label">예비2 (varchar type)</label>
			<input type="text" id="ifcgReferenceV2" name="ifcgReferenceV2" value="<c:out value="${item.ifcgReferenceV2}"/>" maxlength="20" placeholder="영대소문자,숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceV2Feedback"></div>        
		</div>
	</div>	
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgReferenceV3" class="form-label">예비3 (varchar type)</label>
			<input type="text" id="ifcgReferenceV3" name="ifcgReferenceV3" value="<c:out value="${item.ifcgReferenceV3}"/>" maxlength="20" placeholder="영대소문자,숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceV3Feedback"></div>
		</div>
		<div class="col-sm-6">
			<label for="ifcgReferenceV4" class="form-label">예비4 (varchar type)</label>
			<input type="text" id="ifcgReferenceV4" name="ifcgReferenceV4" value="<c:out value="${item.ifcgReferenceV4}"/>" maxlength="20" placeholder="영대소문자,숫자" class="form-control form-control-sm">	
			<div class="invalid-feedback" id="ifcgReferenceV4Feedback"></div>	
		</div>
	</div>	
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgReferenceI1" class="form-label">예비1 (Int type)</label>
			<input type="text" id="ifcgReferenceI1" name="ifcgReferenceI1" value="<c:out value="${item.ifcgReferenceI1}"/>" maxlength="4" placeholder="숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceI1Feedback"></div>
		</div>
		<div class="col-sm-6">
			<label for="ifcgReferenceI2" class="form-label">예비2 (Int type)</label>
			<input type="text" id="ifcgReferenceI2" name="ifcgReferenceI2" value="<c:out value="${item.ifcgReferenceI2}"/>" maxlength="4" placeholder="숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceI2Feedback"></div>
		</div>
	</div>	
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ifcgReferenceI3" class="form-label">예비3 (Int type)</label>
			<input type="text" id="ifcgReferenceI3" name="ifcgReferenceI3" value="<c:out value="${item.ifcgReferenceI3}"/>" maxlength="4" placeholder="숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceI3Feedback"></div>
		</div>
		<div class="col-sm-6">
			<label for="ifcgReferenceI4" class="form-label">예비4 (Int type)</label>
			<input type="text" id="ifcgReferenceI4" name="ifcgReferenceI4" value="<c:out value="${item.ifcgReferenceI4}"/>" maxlength="4" placeholder="숫자" class="form-control form-control-sm">
			<div class="invalid-feedback" id="ifcgReferenceI4Feedback"></div>		
		</div>
	</div>

<c:if test="${not empty item.ifcgSeq }">		<!-- #-> -->
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
<c:if test="${not empty item.ifcgSeq }">	<!-- #-> -->        
            <button type="button" class="btn btn-danger btn-sm" name="" id="btnDelete"><i class="fa-solid fa-x"></i></button>
            <button type="button" class="btn btn-danger btn-sm" name="" id="btnUelete"><i class="far fa-trash-alt"></i></button>
</c:if>
            <button type="button" class="btn btn-success btn-sm" name="" id="btnSave"><i class="fa-regular fa-bookmark"></i></button>
        </div>
    </div>
</div>

<%-- <c:out value="${Code.selectListCachedCode("15") }"/> --%>

</form>
<form name="formVo" id="formVo" method="post">
<!-- *Vo.jsp s -->
<%@include file="codeGroupXdmVo.jsp"%>		<!-- #-> -->
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

<script>

	$(document).ready(function(){
		 $("#ifmmDob").datepicker();
	}); 

	
	var goUrlList = "/v1/infra/codegroup/codeGroupXdmList"; 			/* #-> */
	var goUrlInst = "/v1/infra/codegroup/codeGroupXdmInst"; 			/* #-> */
	var goUrlUpdt = "/v1/infra/codegroup/codeGroupXdmUpdt";				/* #-> */
	var goUrlUele = "/v1/infra/codegroup/codeGroupXdmUele";				/* #-> */
	var goUrlDele = "/v1/infra/codegroup/codeGroupXdmDele";				/* #-> */
	
	var seq = $("input:hidden[name=ifcgSeq]"); 
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		if (validationInst() == false) return false;
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		seq.remove();
	   		if (validationUpdt() == false) return false;
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
	
	
	setCheckboxValue = function(obj, targetObj) {
	   if(obj.is(":checked")){
		   targetObj.val("1");
	    } else {
	    	targetObj.val("0");
	    }
	}
	
	
	validationInst = function() {
	   	if(validationUpdt() == false) return false;
	}

	function validationUpdt() {
	// validationUpdt = function() {
 		if(!checkOnlyEnglishNumber('ifcgSeqAnother', 2, 1, "코드그룹 코드 (Another)는 영대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyKoreanEnglishNumber('ifcgName', 2, 0, "코드그룹 이름은 한글, 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgNameEng', 2, 1, "코드그룹 이름 (영문)은 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyNumber('ifcgOrder', 2, 0, 1, 0, 255, "순서는 숫자(0~255)만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV1', 2, 1, "예비1 (varchar type)은 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV2', 2, 1, "예비2 (varchar type)은 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV3', 2, 1, "예비3 (varchar type)은 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV4', 2, 1, "예비4 (varchar type)은 영문대소문자, 숫자만 입력 가능합니다.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI1', 2, 1, 1, -128, 127, "예비1 (Int type)은 숫자(-128~127)만 입력 가능합니다.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI2', 2, 1, 1, -128, 127, "예비2 (Int type)은 숫자(-128~127)만 입력 가능합니다.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI3', 2, 1, 1, -128, 127, "예비3 (Int type)은 숫자(-128~127)만 입력 가능합니다.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI4', 2, 1, 1, -128, 127, "예비4 (Int type)은 숫자(-128~127)만 입력 가능합니다.")) return false;
	}
	
	
	$("#btnList").on("click", function(){
		formVo.attr("action", goUrlList).submit();
	}); 
	
	
	$("#btnUelete").on("click", function(){
		$("input:hidden[name=exDeleteType]").val(1);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").show();
		$("#btnModalDelete").hide();
		$("#modalConfirm").modal("show");
	});
	

	$("#btnDelete").on("click", function(){
		$("input:hidden[name=exDeleteType]").val(2);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
		$("#modalConfirm").modal("show");
	});
	
	
	$("#btnModalUelete").on("click", function(){
		$("#modalConfirm").modal("hide");
		formVo.attr("action", goUrlUele).submit();
	});
	
	
	$("#btnModalDelete").on("click", function(){
		$("#modalConfirm").modal("hide");
		formVo.attr("action", goUrlDele).submit();
	});
	
</script>

</body>
</html>