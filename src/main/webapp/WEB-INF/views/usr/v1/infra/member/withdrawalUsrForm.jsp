<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrHead s -->
<%@include file="../../include/includeUsrHead.jsp"%>
<!-- includeUsrHead e -->

<title>회원탈퇴</title>
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
        
            <!-- Breadcrumb -->
            <div class="py-3 bg-gray-100">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 my-2">
                            <h1 class="m-0 h4 text-center text-lg-start">회원탈퇴</h1>
                        </div>
                        <div class="col-lg-6 my-2">
                            <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                                <li class="breadcrumb-item">My Page</a></li>
                                <li class="breadcrumb-item text-nowrap" aria-current="page">개인정보</li>
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
<%@include file="../../include/includeUsrLeftMypage.jsp"%>
<!-- includeUsrLeft e -->    

						<!-- Product Box -->
						<div class="col-lg-8 col-xl-9">

<!-- <div id="lita"></div> -->		<!-- #-> -->  

<!-- Form Contents -->
<div class="shop-top-bar d-flex pb-3">
    <div class="layout-change">

        <!-- Mobile Toggle -->
        <button class="btn btn-sm d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#shop_filter" aria-controls="shop_filter">
            <i class="fs-4 lh-1 bi bi-justify-left"></i>
        </button>
        <!-- End Mobile Toggle -->
        
        <!-- <a class="btn btn-sm active" href="#"><i class="bi bi-grid"></i></a> -->
        <!-- <a class="btn btn-sm" href=""><i class="bi bi-arrow-repeat"></i></a> -->
    </div>
</div>

<div class="row g-3">
	<div class="card mb-5">
		<div class="card-body p-4">
			<div class="row">
				<div class="col-sm-6 mb-3">
					<div class="form-group">
						<label for="ifmmPassword" class="form-label">비밀번호</label>
						<input type="password" id="ifmmPassword" class="form-control" name="ifmmPassword">
					</div>
				</div>
				<div class="col-sm-6 mb-3">
				</div>
				<div class="col-12 pt-2" id="resultWithdrawal">
					<!-- <span class="text-muted">일치하는 정보가 없습니다.</span> -->
				</div>	
				<div class="col-12 pt-2">
					<button class="btn btn-primary" id="btnWithdrawal">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-save" viewBox="0 0 16 16">
							<path d="M2 1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H9.5a1 1 0 0 0-1 1v7.293l2.646-2.647a.5.5 0 0 1 .708.708l-3.5 3.5a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L7.5 9.293V2a2 2 0 0 1 2-2H14a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h2.5a.5.5 0 0 1 0 1H2z"/>
						</svg>
					</button>
				</div>
			</div>
		</div>
	</div>                            
</div>
<!-- Form Contents -->
                            
                        </div>
                        <!-- End Product Box -->
                    </div>
                </div>
            </section>
            <!-- End Shop -->
      
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

$("#btnWithdrawal").on("click", function(){
	if(validationFindId() == false) return false;
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/v1/infra/member/withdrawalUsrProc"
		/* ,data : $("#formLogin").serialize() */
		,data : { "ifmmId" : "<c:out value="${sessUsrId }"/>", "ifmmPassword" : $("#ifmmPassword").val()}
		,success: function(response) {
			
			if(response.rt == "success") {
				location.href = "/";
			} else {
				$("#resultWithdrawal").empty();
				
				var resultDiv = '';
				resultDiv += '<span class="text-muted">';
				resultDiv += '비밀번호 와 일치하는 정보가 없습니다.';	
				resultDiv += '</span>';
				
				$("#resultWithdrawal").append(resultDiv);
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});


validationFindId = function() {
	
	// 구 패스워드와 신패스워트 일치여부
	// 신패스워트1가 신패스워트2 일치여부

}
</script>

</body>

</html>