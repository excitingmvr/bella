<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../../include/head.jsp"%>

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
<a href="/v1/infra/codegroup/codeGroupXdmList"/>코드그룹관리</a><br>
<a href="/v1/infra/code/codeXdmList"/>코드관리</a><br>
<a href="/v1/infra/nationality/nationalityXdmAjaxList"/>국가관리</a><br>
<a href="/v1/infra/member/memberList"/>회원관리</a><br>
<a href="/v1/location/location/locationXdmAjaxList"/>지역관리</a><br>



<hr>
sessSeq: <c:out value="${sessSeqXdm }"/><br>
sessName: <c:out value="${sessNameXdm }"/><br>
sessId: <c:out value="${sessIdXdm }"/><br>
<hr>
cookie.seq: <c:out value="${cookie.cookieSeqXdm.value }"/><br>
<c:if test="${not empty sessSeqXdm}">
	<button type="button" class="btn btn-danger btn-sm" name="" id="btnLogout"><i class="fa-solid fa-power-off"></i></button>
</c:if>

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

	});
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/v1/infra/member/logoutXdmProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = URL_LOGIN_FORM_XDM;
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
     
</script>

</body>
</html>