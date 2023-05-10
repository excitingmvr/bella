<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../include/head.jsp"%>
<!-- head e -->

<style type="text/css">
	
	.my-wrap {
		width: 380px;		
	}
	
</style>
	
</head>
<body>

<!-- contents s -->
<div class="container my-wrap">
	<div class="row row-cols-1 gy-3">
		<div class="col text-center">
			<img alt="" src="/resources/xdmin/image/logo_login_300_200.png">
		</div>
		<div class="col">
			<h4>Change Password</h4>
		</div>
		<div class="col">
			<input type="text" class="form-control" id="" placeholder="Old Password">
		</div>
		<div class="col">
			<input type="text" class="form-control" id="" placeholder="New Password">
		</div>
		<div class="col">
			<input type="text" class="form-control" id="" placeholder="New Password Retype">
		</div>
		<div class="d-grid gap-2 mt-3">
			<button class="btn btn-primary opacity-50" type="button"">Change Password</button>
			<button class="btn btn-secondary" type="button" id="btnLater">Later 90 days</button>
		</div>
	</div>
</div>
<!-- contents e -->

<!-- modalBase s -->
<%@include file="../include/modalBase.jsp"%>
<!-- modalBase e -->

<!-- linkJs s -->
<%@include file="../include/linkJs.jsp"%>
<!-- linkJs e -->

<script type="text/javascript">

$("#btnLater").on("click", function(){
	if(validation() == false) return false;
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/member/extendPwd"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmSeq" : 1}
		,success: function(response) {
			if(response.rt == "success") {
				if(response.changePwd == "true") {
					location.href = URL_CHANGE_PWD_FORM;
				} else {
					location.href = URL_INDEX_ADMIN;
				}
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});


validation = function() {
/* 	if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
	if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false; */
}

</script>

</body>
</html>