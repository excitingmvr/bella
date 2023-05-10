<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../../include/head.jsp"%>
<!-- head e -->

<title>Location</title>		<!-- #-> -->

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
<%@include file="locationXdmVo.jsp"%>		<!-- #-> -->
<!-- *Vo.jsp e -->

<h3 class="mt-3 mb-0">위치 관리</h3>		<!-- #-> -->
 
<div class="container-fluid px-0 px-sm-5 mt-2">
	<div class="row mt-sm-4">
		<div class="col-sm-6">
			<label for="ltltSeq" class="form-label">코드<span class="text-danger">*</span></label>
			<input type="text" id="ltltSeq" name="ltltSeq" value="<c:out value="${item.ltltSeq}"/>" maxlength="20" placeholder="자동생성" class="form-control form-control-sm" readonly>
		</div>
		<div class="col-sm-6">	
		</div>
	</div> 
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ltltName" class="form-label">이름 <span class="text-danger">*</span></label>
            <input type="text" id="ltltName" name="ltltName" value="<c:out value="${item.ltltName}"/>" maxlength="20" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ltltNameFeedback"></div>
        </div>
        <div class="col-sm-6">
			<label for="ltltCeo" class="form-label">대표자</label>
            <input type="text" id="ltltCeo" name="ltltCeo" value="<c:out value="${item.ltltCeo}"/>" maxlength="20" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ltltCeoFeedback"></div>
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
			<label for="ltltStartDate" class="form-label">설립일</label>
            <input type="text" id="ltltEstDate" name="ltltEstDate" value="<c:out value="${item.ltltEstDate}"/>" maxlength="20" placeholder="" class="form-control form-control-sm" readonly>
            <div class="invalid-feedback" id="ltltEstDateFeedback"></div>
        </div>
        <div class="col-sm-6">
            <label for="ltltEstDate" class="form-label">시작일</label>
            <input type="text" id="ltltStartDate" name="ltltStartDate" value="<c:out value="${item.ltltStartDate}"/>" maxlength="20" placeholder="" class="form-control form-control-sm" readonly>
            <div class="invalid-feedback" id="ltltStartDateFeedback"></div>        
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ltltPhone1" class="form-label">전화 <span class="text-danger">*</span></label>
            <input type="text" id="ltltPhone1" name="ltltPhone1" value="<c:out value="${item.ltltPhone1}"/>" maxlength="20" placeholder="숫자 (021231234)" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ltltPhone1Feedback"></div>
        </div>
        <div class="col-sm-6">
			<label for="ltltMobile" class="form-label">모바일</label>
            <input type="text" id="ltltMobile" name="ltltMobile" value="<c:out value="${item.ltltMobile}"/>" maxlength="20" placeholder="숫자 (01022223333)" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ltltMobileFeedback"></div>        
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ltltFax" class="form-label">팩스</label>
            <input type="text" id="ltltFax" name="ltltFax" value="<c:out value="${item.ltltFax}"/>" maxlength="20" placeholder="숫자 (021231234)" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ltltFaxFeedback"></div>
        </div>
        <div class="col-sm-6">
			<label for="ltltEmail" class="form-label">이메일</label>
            <input type="text" id="ltltEmail" name="ltltEmail" value="<c:out value="${item.ltltEmail}"/>" maxlength="20" placeholder="" class="form-control form-control-sm">
            <div class="invalid-feedback" id="ltltEmailFeedback"></div>        
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
			<label for="ltltUseNy" class="form-label">사용여부 <span class="text-danger">*</span></label>
            <select id="ltltUseNy" name="ltltUseNy" class="form-select form-select-sm">
				<option value="1" <c:if test="${item.ltltUseNy eq 1 }">selected</c:if>>Y</option>
				<option value="0" <c:if test="${item.ltltUseNy eq 0 }">selected</c:if>>N</option>
              </select>  
        </div>
        <div class="col-sm-6">
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
            <label for="ltltZipcode" class="form-label">주소 <span class="text-danger">*</span></label>
            <div class="input-group input-group-sm ">
                <input type="text" id="ltltZipcode" name="ltltZipcode" value="<c:out value="${item.ltltZipcode }"/>" placeholder="우편번호" class="form-control" readonly>
                <button type="button" id="btnAddress" class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
                <button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button>
            </div>
            <input type="text" id="ltltAddress1" name="ltltAddress1" value="<c:out value="${item.ltltAddress1 }"/>" maxlength="50" placeholder="주소" class="form-control form-control-sm mt-2" readonly>
            <input type="text" id="ltltAddress2" name="ltltAddress2" value="<c:out value="${item.ltltAddress2 }"/>" maxlength="50" placeholder="상세주소" class="form-control form-control-sm mt-2">
            <input type="text" id="ltltAddress3" name="ltltAddress3" value="<c:out value="${item.ltltAddress3 }"/>" maxlength="50" placeholder="참고항목" class="form-control form-control-sm mt-2" readonly>
			<div class="invalid-feedback" id="ltltAddressFeedback"></div>
			<div class="row">
				<div class="col-sm-6"><input type="hidden" id="ltltLat" name="ltltLat" value="<c:out value="${item.ltltLat }"/>" maxlength="50" placeholder="위도" class="form-control form-control-sm mt-2" readonly></div>
				<div class="col-sm-6"><input type="hidden" id="ltltLng" name="ltltLng" value="<c:out value="${item.ltltLng }"/>" maxlength="50" placeholder="경도" class="form-control form-control-sm mt-2" readonly></div>
			</div>
			
        </div>
        <div class="col-sm-6">
            <label for="ltltDesc" class="form-label">설명</label>
            <textarea id="ltltDesc" name="ltltDesc" rows="5" class="form-control"><c:out value="${item.ltltDesc }"/></textarea>               
        </div>
    </div>
    <div class="row mt-sm-4">
        <div class="col-sm-6">
			<div id="map" style="height:400px;"></div>
        </div>
        <div class="col-sm-6">
              
        </div>
    </div>

<c:if test="${not empty item.ltltSeq }">	<!-- #-> -->
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
<c:if test="${not empty item.ltltSeq }">	<!-- #-> -->        
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
<%@include file="locationXdmVo.jsp"%>		<!-- #-> -->
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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45c6f58ea9a7ecfabff6e596d5079958&libraries=services"></script>

<script>

	$(document).ready(function(){
		$("#ltltEstDate, #ltltStartDate").datepicker();
		 
		setMap();
	}); 

	var state = '<c:out value="${item.ltltSeq }" default="0"/>';
	
	var goUrlList = "/v1/location/location/locationXdmAjaxList"; 			/* #-> */
	var goUrlInst = "/v1/location/location/locationXdmInst"; 			/* #-> */
	var goUrlUpdt = "/v1/location/location/locationXdmUpdt";			/* #-> */
	var goUrlUele = "/v1/location/location/locationXdmUele";			/* #-> */
	var goUrlDele = "/v1/location/location/locationXdmDele";			/* #-> */
	
	var seq = $("input:hidden[name=ltltSeq]");		/* #-> */
	
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
	
	
	validationInst = function() {
	   	if(validationUpdt() == false) return false;
	}


	validationUpdt = function() {
		if(!checkNull('ltltName', 2, "이름을 입력해 주세요")) return false;
		if(!checkOnlyNumber('ltltPhone1', 2, 0, 0, 0, 0, "전화는 숫자만 입력해 주세요")) return false;
		if(!checkMobile('ltltMobile', 2, 1, "모바일은 형식에 맞추어 숫자만 입력해 주세요")) return false;
		if(!checkOnlyNumber('ltltFax', 2, 1, 0, 0, 0, "팩스는 숫자만 입력해 주세요")) return false;
		if(!checkEmail('ltltEmail', 2, 1, "이메일 주소를 입력해 주세요")) return false;

		if ($("#ltltAddress1").val() == "" || $("#ltltAddress2").val().trim() == "") {
			$("#ltltZipcode").addClass('is-invalid');
			$("#ltltAddress1").addClass('is-invalid');
			$("#ltltAddress2").addClass('is-invalid');
			$("#ltltAddress3").addClass('is-invalid');
			$("#ltltAddressFeedback").text("주소 와 상세주소를 입력해 주세요");
			return false;
		} else {
			$("#ltltZipcode").removeClass('is-invalid');
			$("#ltltAddress1").removeClass('is-invalid');
			$("#ltltAddress2").removeClass('is-invalid');
			$("#ltltAddress3").removeClass('is-invalid');
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
                document.getElementById("ltltZipcode").value = data.zonecode;
                document.getElementById("ltltAddress1").value = roadAddr;
                /* document.getElementById("").value = data.jibunAddress; */
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                  
                if(roadAddr !== ''){
                    document.getElementById("ltltAddress3").value = extraRoadAddr;
                } else {
                    document.getElementById("ltltAddress3").value = '';
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
				var geocoder = new daum.maps.services.Geocoder();
				geocoder.addressSearch(roadAddr, function(result, status) {
					if (status == daum.maps.services.Status.OK) {
						document.getElementById("ltltLat").value=result[0].y;
						document.getElementById("ltltLng").value=result[0].x;
						
						var moveLatLon = new kakao.maps.LatLng(result[0].y, result[0].x);
					    map.setCenter(moveLatLon);
					    
						var markerPosition  = new kakao.maps.LatLng(result[0].y, result[0].x); 
						var marker = new kakao.maps.Marker({ position: markerPosition });
						marker.setMap(null);   
						marker.setMap(map);
					}
				});
				/* lat and lng from address e */
	       }
        }).open();
    }
	

	$("#btnAddressClear").on("click", function(){	
		$("#ltltZipcode").val('');
		$("#ltltAddress1").val('');
		$("#ltltAddress2").val('');
		$("#ltltAddress3").val('');
	});
	
	
	setMap = function() {
		if(state == "0") {
			getNowLatLng();
		} else {
			var lat = '<c:out value="${item.ltltLat }"/>';
			var lng = '<c:out value="${item.ltltLng}"/>';
			
			/* kakao source s */
			var container = document.getElementById("map");
		 	var options = {
		 			center: new kakao.maps.LatLng(lat, lng),
		 			level: 3
		 		};
			map = new kakao.maps.Map(container, options);
			
			var markerPosition  = new kakao.maps.LatLng(lat, lng); 
			var marker = new kakao.maps.Marker({ position: markerPosition });
			marker.setMap(null);   
			marker.setMap(map);
			/* kakao source e */
		}
	}

	
	function getNowLatLng(){
		if (navigator.geolocation) {
			var options = {timeout:60000};
			navigator.geolocation.getCurrentPosition(showLocation, errorHandler, options);
		} else {
			alert("현재 위치 정보 사용이 불가능합니다.");
		}
	}
	
	
	function showLocation(position) {
		var lat = position.coords.latitude;
		var lng = position.coords.longitude;
		
		/* kakao source s */
		var container = document.getElementById("map");
	 	var options = {
	 			center: new kakao.maps.LatLng(lat, lng),
	 			level: 3
	 		};
		map = new kakao.maps.Map(container, options);
		
		var markerPosition  = new kakao.maps.LatLng(lat, lng); 
		var marker = new kakao.maps.Marker({ position: markerPosition });
		marker.setMap(null);   
		marker.setMap(map);
		/* kakao source e */
	}
	
	
	function errorHandler(error) {
		if(error.code == 1) {
			alert("접근차단");
		} else if( err.code == 2) {
			alert("위치를 반환할 수 없습니다.");
		}
	}


</script>

</body>
</html>