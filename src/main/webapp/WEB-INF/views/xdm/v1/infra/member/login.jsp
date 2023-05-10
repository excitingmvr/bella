<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../include/head.jsp"%>
<!-- head e -->

<style type="text/css">

	.my-btn-kakao,
	.my-btn-kakao:hover,
	.my-btn-kakao:active,
	.my-btn-kakao:visited,
	.my-btn-kakao:focus {
	    background-color: #F7E600;
	    border-color: #F7E600;
	    color: #3A1D1D;
	}

	.my-btn-naver,
	.my-btn-naver:hover,
	.my-btn-naver:active,
	.my-btn-naver:visited,
	.my-btn-naver:focus {
	    background-color: #2DB400;
	    border-color: #2DB400;
	    color: white;
	}
	
	.my-btn-facebook,
	.my-btn-facebook:hover,
	.my-btn-facebook:active,
	.my-btn-facebook:visited,
	.my-btn-facebook:focus {
	    background-color: #3b5998;
	    border-color: #3b5998;
	    color: white;
	}
	
	.my-btn-google,
	.my-btn-google:hover,
	.my-btn-google:active,
	.my-btn-google:visited,
	.my-btn-google:focus {
	    background-color: #ea4335;
	    border-color: #ea4335;
	    color: white;
	}
	
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
			<img alt="" src="../../../images/xdmin/logo_login_300_200.png">
		</div>		
    	<div class="col">
			<input type="text" class="form-control" id="" placeholder="ID">
		</div>
		<div class="col">
			<input type="password" class="form-control" id="" placeholder="Password">
		</div>
		<div class="col">
			<div class="form-check form-switch">
			  <input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked>
			  <label class="form-check-label" for="flexSwitchCheckChecked">Auto login</label>
			</div>		
		</div>
		<div class="d-grid gap-2 mt-3">
			<button class="btn btn-secondary" type="button">Login</button>
			<a href="../member/findIdPwd.html" class="text-center">Find Id/Password</a>
			<hr>
			<button class="btn my-btn-naver" type="button">Naver</button>
			<button class="btn my-btn-kakao" type="button">Kakao</button>
			<button class="btn my-btn-google" type="button">Google</button>
			<button class="btn my-btn-facebook" type="button">Facebook</button>
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
	
</script>
	
</body>
</html>