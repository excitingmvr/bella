<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->

<title>아이디/패스워드 찾기</title>
</head>

<body>

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
        <!-- Breadcrumb -->
<!--
        <div class="py-3 bg-gray-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 my-2">
                        <h1 class="m-0 h4 text-center text-lg-start">Login</h1>
                    </div>
                    <div class="col-lg-6 my-2">
                        <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                            <li class="breadcrumb-item"><a class="text-nowrap" href="#"><i class="bi bi-home"></i>Home</a></li>
                            <li class="breadcrumb-item text-nowrap active" aria-current="page">Login</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
-->
        <!-- End Breadcrumb -->
        <!-- login page -->
        <div class="section">
            <div class="container">
                <div class="justify-content-center row">
                    <div class="col-lg-5 col-xxl-4">
                        <div class="card">
                            <div class="card-header bg-transparent py-3">
                                <h3 class="h4 mb-0">Find ID </h3>
                            </div>
                            <div class="card-body">
								<div class="form-group mb-3">
								    <label for="ifmmNameFindId" class="form-label">Name<span class="text-danger">*</span></label>
								    <input type="text" id="ifmmNameFindId" name="ifmmNameFindId" maxlength="20" class="form-control" placeholder="Name">
								</div>
								<div class="form-group mb-3">
									<label class="form-label col" for="ifmeEmailFullFindId">Email<span class="text-danger">*</span></label>
								    <input type="text" id="ifmeEmailFullFindId" name="ifmeEmailFullFindId" maxlength="20" class="form-control" placeholder="abc@example.com">
								</div>
								<div class="text-center pb-3" id="resultFindId">
								   <!-- <span class="text-muted">ko*asdf*</span> -->
								   <!-- <span class="text-muted">일치하는 정보가 없습니다.</span> -->
								</div>                                    
							    <div class="form-group text-center">
							        <button type="button" class="btn btn-primary w-100" id="btnFindId">
							            Find ID
							        </button>
							    </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-5 col-xxl-4">
                        <div class="card">
                            <div class="card-header bg-transparent py-3">
                                <h3 class="h4 mb-0">Find Password </h3>
                            </div>
                            <div class="card-body">
								<div class="form-group mb-3">
								    <label for="ifmmNameFindPwd" class="form-label">Name<span class="text-danger">*</span></label>
								    <input type="text" id="ifmmNameFindPwd" name="ifmmNameFindPwd" maxlength="20" class="form-control" placeholder="Name">
								</div>
								<div class="form-group mb-3">
							        <label class="form-label col" for="ifmeEmailFullFindPwd">Email<span class="text-danger">*</span></label>
								    <input type="text" id="ifmeEmailFullFindPwd" name="ifmeEmailFullFindPwd" maxlength="20" class="form-control" placeholder="abc@example.com">
								</div>
								<div class="form-group mb-3">
							        <label class="form-label col" for="ifmmIdFindPwd">ID<span class="text-danger">*</span></label>
								    <input type="text" id="ifmmIdFindPwd" name="ifmmIdFindPwd" maxlength="20" class="form-control" placeholder="">
								</div>
								<div class="text-center pb-3" id="resultFindPwd">
								    <!-- <span class="text-muted">임시 비밀번호를 메일로 발송해 드렸습니다.</span> -->
								</div>                                    
							    <div class="form-group text-center">
							        <button type="button" class="btn btn-primary w-100" id="btnFindPwd">
							            Find Password
							        </button>
							    </div>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
        <!-- end login -->
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

<script type="text/javascript">

$("#btnFindId").on("click", function(){
	if(validationFindId() == false) return false;
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/v1/infra/member/findIdPwdProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmName" : $("#ifmmNameFindId").val(), "ifmeEmailFull" : $("#ifmeEmailFullFindId").val()}
		,success: function(response) {
			
			$("#resultFindId").empty();
			
			if(response.rt == "success") {
				
				var ifmmIdChanged = replaceAt(response.item.ifmmId, 2, '*');
				ifmmIdChanged = replaceAt(ifmmIdChanged, 4, '*');
				
				var resultDiv = '';
				resultDiv += '<span class="text-muted">';
				resultDiv += '	ID : ' + ifmmIdChanged +'';	
				resultDiv += '</span>';
			} else {
				
				var resultDiv = '';
				resultDiv += '<span class="text-muted">';
				resultDiv += '일치하는 정보가 없습니다.';	
				resultDiv += '</span>';
			}
			
			$("#resultFindId").append(resultDiv);
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});


validationFindId = function() {

}


$("#btnFindPwd").on("click", function(){
	if(validationFindPwd() == false) return false;
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/v1/infra/member/findIdPwdProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmName" : $("#ifmmNameFindPwd").val(), "ifmeEmailFull" : $("#ifmeEmailFullFindPwd").val(), "ifmmId" : $("#ifmmIdFindPwd").val()}
		,success: function(response) {
			
			$("#resultFindPwd").empty();
			
			if(response.rt == "success") {
				
				var resultDiv = '';
				resultDiv += '<span class="text-muted">';
				resultDiv += '임시 비밀번호를 메일로 발송해 드렸습니다.';	
				resultDiv += '</span>';
			} else {
				
				var resultDiv = '';
				resultDiv += '<span class="text-muted">';
				resultDiv += '일치하는 정보가 없습니다.';	
				resultDiv += '</span>';
			}
			
			$("#resultFindPwd").append(resultDiv);
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});


validationFindPwd = function() {

}

</script>
</body>

</html>