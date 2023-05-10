<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../../../common/xdmin/includeV1/head.jsp"%>
<!-- head e -->

<title>Member</title>		<!-- #-> -->

<style type="text/css">

	.addScroll{
		overflow-y:auto;
		height: 200px;
		background-color:#E9ECEF;
		padding-top:5px; 
		padding-left:5px;
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
<%@include file="../../../common/xdmin/includeV1/top.jsp"%>
<!-- top e -->

<!-- gnb s -->
<%@include file="../../../common/xdmin/includeV1/gnb.jsp"%>
<!-- gnb e -->

<!-- right menu s -->
<%@include file="../../../common/xdmin/includeV1/right.jsp"%>
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
<%@include file="memberVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->

<h3 class="mt-3 mb-0">회원 관리</h3>		<!-- #-> -->

<div class="container-fluid px-0 px-sm-5 mt-2">
    <div class="row mt-sm-4 ">
        <div class="col-sm-12 text-center">
        
      		<c:set var="type" value="1"/>		<!-- #-> -->
        	<c:set var="name" value="uploadImgProfile"/>		<!-- #-> -->
<c:choose>
	<c:when test="${ifmmSeq eq 0 }">
		<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
	</c:when>
	<c:otherwise>
		<c:choose>
			<c:when test="${fn:length(listUploaded) eq 0 }">
				<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
			</c:when>
			<c:otherwise>
				<c:set var="GetNy" value="0"/>
				<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
					<c:if test="${listUploaded.type eq type }">
			        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" value="<c:out value="${listUploaded.seq }"/>"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" value="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"/>  
						<img id="<c:out value="${name }"/>Preview" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
						<c:set var="GetNy" value="1"/>		
					</c:if>
				</c:forEach>
				<c:if test="${GetNy eq 0 }">
					<img id="<c:out value="${name }"/>Preview" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
				</c:if>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>
            
			<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
			<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
			<label for="<c:out value="${name }"/>" class="form-label input-file-button"><b>+</b></label>
 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 3);">
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ifmmId" class="form-label">아이디 <span class="text-danger">*</span></label>
            <input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
            <input type="text" id="ifmmId" name="ifmmId" 
            	value="<c:out value="${item.ifmmId}"/>" 
            	maxlength="20" 
            	placeholder="영대소문자,숫자,특수문자(-_.),4~20자리" 
            	class="form-control form-control-sm"
            	<c:if test="${not empty item.ifmmId }">readonly</c:if>
            >
            <div class="invalid-feedback" id="ifmmIdFeedback"></div>
        </div>
        <div class="col-sm-6">
<%--         
			<label for="ifmmNickname" class="form-label">별명</label>
            <input type="text" id="ifmmNickname" name="ifmmNickname" value="<c:out value="${item.ifmmNickname}"/>" maxlength="20" placeholder="별명" class="form-control form-control-sm">        
 --%>
        </div>
    </div>
<c:if test="${empty item.ifmmId }">    
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmPassword" class="form-label">비밀번호 <span class="text-danger">*</span></label>
            <input type="password" id="ifmmPassword" name="ifmmPassword" value="Wyj291872!#" maxlength="20" placeholder="영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmmPasswordFeedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmPasswordRe" class="form-label">비밀번호확인 <span class="text-danger">*</span></label>
            <input type="password" id="ifmmPasswordRe" name="ifmmPasswordRe" value="Wyj291872!#" maxlength="20" placeholder="비밀번호 확인" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmmPasswordReFeedback"></div>          
        </div>
    </div>
</c:if>
<%--   
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmName" class="form-label">이름 <span class="text-danger">*</span></label>
            <input type="text" id="ifmmName" name="ifmmName" value="<c:out value="${item.ifmmName}"/>" maxlength="50" placeholder="" class="form-control form-control-sm">
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmNameEng" class="form-label">이름 (영문)</label>
            <input type="text" id="ifmmNameEng" name="ifmmNameEng" value="<c:out value="${item.ifmmNameEng}"/>" maxlength="50" placeholder="" class="form-control form-control-sm">            
        </div>
    </div>
 --%>
    <div class="row mt-sm-4 mt-3 mt-sm-0">
        <div class="col-sm-6">
            <label for="ifmmLastName" class="form-label">성 <span class="text-danger">*</span></label>
            <input type="text" id="ifmmLastName" name="ifmmLastName" value="<c:out value="${item.ifmmLastName}"/>" maxlength="50" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmmLastNameFeedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmFirstName" class="form-label">이름 <span class="text-danger">*</span></label>
            <input type="text" id="ifmmFirstName" name="ifmmFirstName" value="<c:out value="${item.ifmmFirstName}"/>" maxlength="50" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmmFirstNameFeedback"></div>          
        </div>
    </div>
<%--     
    <div class="row mt-sm-4 mt-3 mt-sm-0">
        <div class="col-sm-6">
            <label for="ifmmLastNameEng" class="form-label">성 (영문)</label>
            <input type="text" id="ifmmLastNameEng" name="ifmmLastNameEng" value="<c:out value="${item.ifmmLastNameEng}"/>" maxlength="50" placeholder="" class="form-control form-control-sm">
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmFirstNameEng" class="form-label">이름 (영문)</label>
            <input type="text" id="ifmmFirstNameEng" name="ifmmFirstNameEng" value="<c:out value="${item.ifmmFirstNameEng}"/>" maxlength="50" placeholder="" class="form-control form-control-sm">          
        </div>
    </div>
 --%>    
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmGenderCd" class="form-label">성별 <span class="text-danger">*</span></label>
            <select id="ifmmGenderCd" name="ifmmGenderCd" class="form-select form-select-sm">
				<option value="">::선택::</option>
	            	<c:forEach items="${listCodeGender}" var="itemGender" varStatus="statusGender">
				<option value="<c:out value="${itemGender.ifcdSeq }"/>" <c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq }">selected</c:if>><c:out value="${itemGender.ifcdName }"/></option>
					</c:forEach>
              </select>
              <div class="invalid-feedback" id="ifmmGenderCdFeedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmDob" class="form-label">생일 <span class="text-danger">*</span></label>
            <input type="text" id="ifmmDob" name="ifmmDob" value="<c:out value="${item.ifmmDob }"/>" placeholder="" class="form-control form-control-sm" readonly>
            <div class="invalid-feedback" id="ifmmDobFeedback"></div>          
        </div>
    </div>    
    <div class="row mt-sm-4">    
        <div class="col-sm-6 mt-3 mt-sm-0">
			<input type="hidden" id="ifmeDefaultNyArray0" name="ifmeDefaultNyArray" value="1">
			<input type="hidden" id="ifmeTypeCdArray0" name="ifmeTypeCdArray" value="44">
            <label for="ifmeEmailFullArray0" class="form-label">Email <span class="text-danger">*</span></label>
            <input type="text" id="ifmeEmailFullArray0" name="ifmeEmailFullArray" value="<c:out value="${item.ifmeEmailFull }"/>" maxlength="50" placeholder="account@example.com" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmeEmailFullArray0Feedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmEmailConsent" class="form-label">이메일 정보 마케팅 사용 동의</label>
            <div class="form-check">
            	<input type="hidden" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="0">
                <input type="checkbox" id="ifmmEmailConsent" name="ifmmEmailConsent" class="form-check-input" <c:if test="${item.ifmmEmailConsentNy eq 1 }">checked</c:if>>
                <label for="ifmmEmailConsentNy" class="form-check-label">
                    동의합니다
                </label>
            </div>
        </div>
    </div>

<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
	<c:choose>
		<c:when test="${item.ifmpDeviceCd eq 57 }"><c:set var="ifmpNumber57" value="${item.ifmpNumber }"/></c:when>
		<c:when test="${item.ifmpDeviceCd eq 58 }">
			<c:set var="ifmpNumber58" value="${item.ifmpNumber }"/>
			<c:set var="ifmpTelecom58" value="${item.ifmpTelecomCd }"/>
		</c:when>
		<c:when test="${item.ifmpDeviceCd eq 59 }"><c:set var="ifmpNumber59" value="${item.ifmpNumber }"/></c:when>
		<c:otherwise></c:otherwise>
	</c:choose>
</c:forEach>

    <div class="row mt-sm-4">
        <div class="col-sm-3 mt-3 mt-sm-0">
        	<input type="hidden" id="ifmpDefaultNyArray0" name="ifmpDefaultNyArray" value="1">
        	<input type="hidden" id="ifmpTypeCdArray0" name="ifmpTypeCdArray" value="54">
        	<input type="hidden" id="ifmpDeviceCdArray0" name="ifmpDeviceCdArray" value="58">
            <label for="ifmpTelecomCdArray0" class="form-label">통신사 <span class="text-danger">*</span></label>
            <select id="ifmpTelecomCdArray0" name="ifmpTelecomCdArray" class="form-select form-select-sm">
				<option value="">::선택::</option>
	            	<c:forEach items="${listCodeTelecom}" var="itemTelecom" varStatus="statusTelecom">
				<option value="<c:out value="${itemTelecom.ifcdSeq }"/>" <c:if test="${ifmpTelecom58 eq itemTelecom.ifcdSeq }">selected</c:if>><c:out value="${itemTelecom.ifcdName }"/></option>
					</c:forEach>
			</select>
			<div class="invalid-feedback" id="ifmpTelecomCdArray0Feedback"></div>
        </div>
        <div class="col-sm-3 mt-3 mt-sm-0">
            <label for="ifmpNumberArray0" class="form-label">모바일 <span class="text-danger">*</span></label>
            <input type="text" id="ifmpNumberArray0" name="ifmpNumberArray" value="<c:out value="${ifmpNumber58 }"/>" maxlength="11" placeholder="숫자 (01044447777)" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmpNumberArray0Feedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmSmsConsent" class="form-label">핸드폰 정보 마케팅 사용 동의</label>
            <div class="form-check">
            	<input type="hidden" id="ifmmSmsConsentNy" name="ifmmSmsConsentNy" value="0">
                <input type="checkbox" id="ifmmSmsConsent" name="ifmmSmsConsent" class="form-check-input" <c:if test="${item.ifmmSmsConsentNy eq 1 }">checked</c:if>>
                <label for="ifmmSmsConsentNy" class="form-check-label">
                    동의합니다
                </label>
            </div>          
        </div>
    </div>
  
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<input type="hidden" id="ifmpDefaultNyArray1" name="ifmpDefaultNyArray" value="0">
        	<input type="hidden" id="ifmpTypeCdArray1" name="ifmpTypeCdArray" value="54">
        	<input type="hidden" id="ifmpDeviceCdArray1" name="ifmpDeviceCdArray" value="57">
        	<input type="hidden" id="ifmpTelecomCdArray1" name="ifmpTelecomCdArray" value="">
            <label for="ifmpNumberArray1" class="form-label">전화번호</label>
            <input type="text" id="ifmpNumberArray1" name="ifmpNumberArray" value="<c:out value="${ifmpNumber57 }"/>" maxlength="11" placeholder="숫자 (024447777)" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmpNumberArray1Feedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<input type="hidden" id="ifmpDefaultNyArray2" name="ifmpDefaultNyArray" value="0">
        	<input type="hidden" id="ifmpTypeCdArray2" name="ifmpTypeCdArray" value="54">
        	<input type="hidden" id="ifmpDeviceCdArray2" name="ifmpDeviceCdArray" value="59">
        	<input type="hidden" id="ifmpTelecomCdArray2" name="ifmpTelecomCdArray" value="">
            <label for="ifmpNumberArray2" class="form-label">팩스번호</label>
            <input type="text" id="ifmpNumberArray2" name="ifmpNumberArray" value="<c:out value="${ifmpNumber59 }"/>" maxlength="11" placeholder="숫자 (024447777)" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ifmpNumberArray2Feedback"></div>
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmCountryResidence" class="form-label">거주국가</label>
            <select id="ifmmCountryResidence" name="ifmmCountryResidence" class="form-select form-select-sm">
                <option value="">::선택::</option>
                <c:forEach items="${listNationality}" var="listNationality" varStatus="status">
                	<option value="${listNationality.ifnaSeq }" <c:if test="${listNationality.ifnaSeq eq item.ifmmCountryResidence}">selected</c:if>>${listNationality.ifnaName }</option>
                </c:forEach>
              </select>
              <div class="invalid-feedback" id="ifmmCountryResidenceFeedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">          
<!-- 
            <label for="exampleDataList" class="form-label">Datalist example</label>
            <input list="datalistOptions" name="" id="exampleDataList" placeholder="Type to search..." class="form-control form-select-sm">
            <datalist id="datalistOptions">
                <option value="San Francisco">
                <option value="New York">
                <option value="Seattle">
                <option value="Los Angeles">
                <option value="Chicago">
            </datalist>
 -->
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<div id="addressKorea">
	        	<input type="hidden" id="ifmaDefaultNyArray0" name="ifmaDefaultNyArray" value="1">
	        	<input type="hidden" id="ifmaTypeCdArray0" name="ifmaTypeCdArray" value="78">
	        	<input type="hidden" id="ifmaTitleArray0" name="ifmaTitleArray" value="기본">
	            <label for="memZip" class="form-label">주소 (한국전용)</label>
	            <div class="input-group input-group-sm ">
	                <input type="text" id="ifmaZipcodeArray0" name="ifmaZipcodeArray" value="<c:out value="${item.ifmaZipcode }"/>" placeholder="우편번호" class="form-control" readonly>
	                <button type="button" id="btnAddress" class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
	                <button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button>
	            </div>
	            <input type="text" id="ifmaAddress1Array0" name="ifmaAddress1Array" value="<c:out value="${item.ifmaAddress1 }"/>" maxlength="50" placeholder="주소" class="form-control form-control-sm mt-2" readonly>
	            <input type="text" id="ifmaAddress2Array0" name="ifmaAddress2Array" value="<c:out value="${item.ifmaAddress2 }"/>" maxlength="50" placeholder="상세주소" class="form-control form-control-sm mt-2">
	            <div class="invalid-feedback" id="ifmaAddress2Array0Feedback"></div>
	            <input type="text" id="ifmaAddress3Array0" name="ifmaAddress3Array" value="<c:out value="${item.ifmaAddress3 }"/>" maxlength="50" placeholder="참고항목" class="form-control form-control-sm mt-2" readonly>
				<div class="row">
					<div class="col-sm-6"><input type="hidden" id="ifmaLatArray0" name="ifmaLatArray" value="<c:out value="${item.ifmaLat }"/>" maxlength="50" placeholder="위도" class="form-control form-control-sm mt-2" readonly></div>
					<div class="col-sm-6"><input type="hidden" id="ifmaLngArray0" name="ifmaLngArray" value="<c:out value="${item.ifmaLng }"/>" maxlength="50" placeholder="경도" class="form-control form-control-sm mt-2" readonly></div>
				</div>
			</div>
			<div id="addressOthers">
				<label for="memZipAbroad" class="form-label">주소 (한국외전용)</label>
	            <input type="text" id="memZipAbroad" name="memZipAbroad" value="" maxlength="50" placeholder="우편번호" class="form-control form-control-sm" >
	            <input type="text" id="memAddressAbroad1" name="memAddressAbroad1" value="" maxlength="50" placeholder="주소" class="form-control form-control-sm mt-2">
	            <input type="text" id="memAddressAbroad2" name="memAddressAbroad2" value="" maxlength="50" placeholder="상세 주소" class="form-control form-control-sm mt-2">
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<label for="ifmmDesc" class="form-label">설명</label>
        	<%-- <textarea id="ifmmDesc" name="ifmmDesc" class="form-control" rows="4"><c:out value="${item.ifmmDesc }"/></textarea> --%>
        	<p><c:out value="${fn:replace(item.ifmmDesc, br, '<br/>')}" escapeXml = "false"/></p> 
			<%-- <p><c:out value="${item.ifmmDesc}" /></p> --%>
        </div>
    </div>
<c:if test="${not empty item.ifmmId }">        
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
            <label for="ifmmAdminNy" class="form-label">관리자</label>
            <select id="ifmmAdminNy" name="ifmmAdminNy" class="form-select form-select-sm">
				<option value="0" <c:if test="${item.ifmmAdminNy eq 0 }">selected</c:if>>N</option>
				<option value="1" <c:if test="${item.ifmmAdminNy eq 1 }">selected</c:if>>Y</option>
              </select>
              <div class="invalid-feedback" id="ifmmCountryResidenceFeedback"></div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">          
<!-- 
            <label for="exampleDataList" class="form-label">Datalist example</label>
            <input list="datalistOptions" name="" id="exampleDataList" placeholder="Type to search..." class="form-control form-select-sm">
            <datalist id="datalistOptions">
                <option value="San Francisco">
                <option value="New York">
                <option value="Seattle">
                <option value="Los Angeles">
                <option value="Chicago">
            </datalist>
 -->
        </div>
    </div>
</c:if>      
     
    <div class="row mt-sm-4">
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<c:set var="type" value="2"/>		<!-- #-> -->
        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
			<div id="<c:out value="${name }"/>Preview" class="addScroll">
				<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
					<c:if test="${listUploaded.type eq type }">
						<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
							<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
							<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
						</div>
					</c:if>
				</c:forEach>
			</div>
        </div>
        <div class="col-sm-6 mt-3 mt-sm-0">
        	<c:set var="type" value="3"/>		<!-- #-> -->
        	<c:set var="name" value="uploadFile"/>		<!-- #-> -->
        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>   	
			<label for="uploadFile" class="form-label input-file-button">파일첨부</label>
			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);" >
			<div class="addScroll">
				<ul id="<c:out value="${name }"/>Preview" class="list-group">
					<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
						<c:if test="${listUploaded.type eq type }">
							<li id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" class="list-group-item d-flex justify-content-between align-items-center">
							<a href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" download="<c:out value="${listUploaded.originalName }"/>" class="text-decoration-none"><c:out value="${listUploaded.originalName }"/></a>
							<span class="badge bg-danger rounded-pill" onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>
							</li>
						</c:if>
					</c:forEach>				
				</ul>
			</div>
        </div>
    </div>

<c:if test="${not empty item.ifmmSeq }">
<!-- regMod s -->
<%@include file="../../../common/xdmin/includeV1/regmod.jsp"%>
<!-- regMod e -->
</c:if>
</div>
 
<div class="container-fluid px-0 px-sm-5 mt-3">
    <div class="row">
        <div class="col-6 text-start">
            <button type="button" class="btn btn-secondary btn-sm" name="" id="btnList"><i class="fa-solid fa-bars"></i></button>
        </div>
        <div class="col-6 text-end">
<c:if test="${not empty item.ifmmSeq }">	<!-- #-> -->        
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
<%@include file="memberVo.jsp"%>
<!-- *Vo.jsp e -->
</form>
<!-- main e -->

		</div>
	</div>
</div>
<!-- contents e -->

<!-- footer s -->
<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
<!-- footer e -->

<!-- modalBase s -->
<%@include file="../../../common/xdmin/includeV1/modalBase.jsp"%>
<!-- modalBase e -->

<!-- linkJs s -->
<%@include file="../../../common/xdmin/includeV1/linkJs.jsp"%>
<!-- linkJs e -->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45c6f58ea9a7ecfabff6e596d5079958&libraries=services"></script>
<script>

	$(document).ready(function(){
		 $("#ifmmDob").datepicker();
		 
		 $("#ifmmCountryResidence").val(1);
		 $("#addressOthers").hide();
	}); 


	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";			/* #-> */
	var goUrlUele = "/member/memberUele";			/* #-> */
	var goUrlDele = "/member/memberDele";			/* #-> */
	
	var seq = $("input:hidden[name=ifmmSeq]"); 		/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){
		
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   		if (validationInst() == false) return false;
 			setCheckboxValue($("#ifmmEmailConsent"), $("#ifmmEmailConsentNy"));
			setCheckboxValue($("#ifmmSmsConsent"), $("#ifmmSmsConsentNy"));
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   		// seq.remove();	html 에서 seq 보여지지 않으면 이 구문은 필요치 않다.
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
		if(!checkId('ifmmId', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) return false;
		if(!checkPassword('ifmmPassword', 2, 0, "영대소문자,숫자,특수문자(!@#$%^&*),8~20자리 조합만 입력 가능합니다")) return false;
		if(!checkPasswordAndRe('ifmmPassword', 2, "패스워드가 일치하지 않습니다")) return false;
		if(validationUpdt() == false) return false;
	}

	
	validationUpdt = function() {
		if(!checkOnlyKoreanEnglishNumber('ifmmLastName', 2, 0, "성을 입력해 주세요")) return false;
		if(!checkOnlyKoreanEnglishNumber('ifmmFirstName', 2, 0, "이름을 입력해 주세요")) return false;
		if(!checkSelectNull('ifmmGenderCd', 2, "성별을 선택해 주세요.")) return false;
		if(!checkNull('ifmmDob', 2, "생일을 선택해 주세요.")) return false;
		if(!checkEmail('ifmeEmailFullArray0', 2, 0, "이메일 주소를 입력해 주세요")) return false;
		if(!checkSelectNull('ifmpTelecomCdArray0', 2, "통신사를 선택해 주세요")) return false;
		if(!checkMobile('ifmpNumberArray0', 2, 0, "모바일은 숫자만 입력해 주세요")) return false;
		if(!checkOnlyNumber('ifmpNumberArray1', 2, 1, 0, 0, 0, "전화는 숫자만 입력해 주세요")) return false;
		if(!checkOnlyNumber('ifmpNumberArray2', 2, 1, 0, 0, 0, "팩스는 숫자만 입력해 주세요")) return false;
		
		if ($("#ifmaZipcodeArray0").val() != "" && $("#ifmaAddress2Array0").val().trim() == "") {
			$("#ifmaAddress2Array0").addClass('is-invalid');
			$("#ifmaAddress2Array0Feedback").text("상세주소를 입력해 주세요");
			return false;
		} else {
			$("#ifmaAddress2Array0").removeClass('is-invalid');
		}
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
	
	
	$("#ifmmId").on("focusout", function(){
		
		if(!checkId('ifmmId', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
			return false;
		} else {
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "ifmmId" : $("#ifmmId").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("ifmmId").classList.add('is-valid');
	
						document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다.";
						
						document.getElementById("ifmmIdAllowedNy").value = 1;
						
					} else {
						document.getElementById("ifmmId").classList.add('is-invalid');
						
						document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";
						
						document.getElementById("ifmmIdAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}
	});
	
	
	$("#ifmmCountryResidence").on("change", function(){
		if ($("#ifmmCountryResidence").val() == 1) {
			$("#addressKorea").show();
			$("#addressOthers").hide();
		} else {
			$("#addressKorea").hide();
			$("#addressOthers").show();
		}
	});
	
	
	$("#btnAddress").on("click", function(){	
	    sample4_execDaumPostcode();
	});	  
	
	
	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('ifmaZipcodeArray0').value = data.zonecode;
                document.getElementById("ifmaAddress1Array0").value = roadAddr;
                /* document.getElementById("").value = data.jibunAddress; */
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                  
                if(roadAddr !== ''){
                    document.getElementById("ifmaAddress3Array0").value = extraRoadAddr;
                } else {
                    document.getElementById("ifmaAddress3Array0").value = '';
                }
                
/*  
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
 */               
				
 				/* lat and lng from address s */
 				
				// 주소-좌표 변환 객체를 생성
				var geocoder = new daum.maps.services.Geocoder();
				
				// 주소로 좌표를 검색
				geocoder.addressSearch(roadAddr, function(result, status) {
				 
					// 정상적으로 검색이 완료됐으면,
					if (status == daum.maps.services.Status.OK) {
						
						document.getElementById("ifmaLatArray0").value=result[0].y;
						document.getElementById("ifmaLngArray0").value=result[0].x;
					}
				});
				/* lat and lng from address e */
		}
        }).open();
    }
	

	$("#btnAddressClear").on("click", function(){	
		$("#ifmaZipcodeArray0").val('');
		$("#ifmaAddress1Array0").val('');
		$("#ifmaAddress2Array0").val('');
		$("#ifmaAddress3Array0").val('');
		$("#ifmaLatArray0").val('');
		$("#ifmaLngArray0").val('');
	});
	
	
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
	
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

		var files = $("#" + objName +"")[0].files;
		var filePreview = $("#" + objName +"Preview");
		var numbering = [];
		var maxNumber = 0;
		
		if(uiType == 1) {
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
			
			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else if(uiType == 2){
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else {
			// by pass
		}
		
		$("#" + objName + "MaxNumber").val(maxNumber);

		var totalFileSize = 0;
		var filesCount = files.length;
		var filesArray = [];
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
		
		for (var i=0; i<filesCount; i++) {
			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

			totalFileSize += files[i].size;
			
			filesArray.push(files[i]);
		}

		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {
			for (var i=0; i<filesArray.length; i++) {
				var file = filesArray[i];

				var picReader = new FileReader();
			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
			    picReader.readAsDataURL(file);
			}			
		} else if(uiType == 2) {
			for (var i = 0 ; i < filesCount ; i++) {
				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.onload = function () {
				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
			 }	
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
		} else {
			return false;
		}
		return false;
	}
	
	
	addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
		return function(event) {
			var imageFile = event.target;
			var sort = parseInt(maxNumber) + i;

			var divImage = "";
			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
			divImage += '</div> ';
			
			filePreview.append(divImage);
	    };
	}
	
	
	delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imgDiv_"+type+"_"+sort).remove();
		
		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	
	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

		var sort = parseInt(maxNumber) + i;
		
		var li ="";
		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li += name;
		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li +='</li>';
		
		filePreview.append(li);
	}
	
	
	delLi = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#li_"+type+"_"+sort).remove();

		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	openViewer = function (type, sort) {
		var str = '<c:set var="tmp" value="'+ type +'"/>';
		$("#modalImgViewer").append(str);
		$("#modalImgViewer").modal("show");
	}
	
	
</script>

</body>
</html>