<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../../../common/xdmin/includeV1/head.jsp"%>
<!-- head e -->

<title>Find Id/Password</title>		<!-- #-> -->

<style type="text/css">
	
	.my-wrap {
		width: 380px;		
	}
	
</style>
	
</head>
<body>

<!-- contents s -->
<div class="container my-wrap">
<form id="formFindIdPassword" name="formFindIdPassword" method="post">
	<div class="row row-cols-1 gy-3">
		<div class="col text-center">
			<img alt="" src="/resources/xdmin/image/logo_login_300_200.png">
		</div>
		<div class="col">
			<h4>Find ID/Password</h4>
		</div>
		<div class="col">
			<input type="text" class="form-control" id="ifmmName" placeholder="Name">
		</div>
		<div class="col">
			<input type="text" class="form-control" id="ifmeEmailFull" placeholder="Email">
		</div>
		<div class="col" id="resultFindId">
<!-- 		
			<div class="alert alert-primary" role="alert">
 				ID : asdf***SDFG	
			</div>
 -->			
		</div>
		<div class="d-grid gap-2 mt-3">
			<button class="btn btn-secondary" type="button" id="btnFindId">Find ID</button>
			<button class="btn btn-primary opacity-50" type="button">Reset Password</button>
			<button class="btn btn-danger opacity-50" type="button" id="btnFindIdReset">Reset</button>
		</div>
	</div>
</form>
</div>
<!-- contents e -->

<!-- modalBase s -->
<%@include file="../../../common/xdmin/includeV1/modalBase.jsp"%>
<!-- modalBase e -->

<!-- linkJs s -->
<%@include file="../../../common/xdmin/includeV1/linkJs.jsp"%>
<!-- linkJs e -->

<script type="text/javascript">

var replaceAt = function(input, index, character){
    return input.substr(0, index) + character + input.substr(index+character.length);
}

	$("#btnFindId").on("click", function(){
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/findIdPwdProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmName" : $("#ifmmName").val(), "ifmeEmailFull" : $("#ifmeEmailFull").val()}
			,success: function(response) {
				
				$("#resultFindId").empty();
				
				if(response.rt == "success") {
					
					var change_name = replaceAt(response.item.ifmmId, 2, '*');
					change_name = replaceAt(change_name, 3, '*');
					
					alert(change_name);
					
					var resultDiv = '';
					resultDiv += '<div class="alert alert-primary" role="alert">';
					resultDiv += '	ID : ' + change_name +'';	
					resultDiv += '</div>';
				} else {
					
					var resultDiv = '';
					resultDiv += '<div class="alert alert-primary" role="alert">';
					resultDiv += 'There is no your Id';	
					resultDiv += '</div>';
				}
				
				$("#resultFindId").append(resultDiv);
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	validation = function() {
		// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
		// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
    }	
	
	
	$("#btnFindIdReset").on("click", function(){
		$("#ifmmName").val('');
		$("#ifmeEmailFull").val('');
		$("#resultFindId").empty();
	});
	
</script>

</body>
</html>