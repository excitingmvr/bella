<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- head s -->
<%@include file="../../../common/xdmin/includeV1/head.jsp"%>
<!-- head e -->

<title>Admin Login</title>		<!-- #-> -->

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
	

	.my-btn-google,
	.my-btn-google:hover,
	.my-btn-google:active,
	.my-btn-google:visited,
	.my-btn-google:focus {
	    background-color: #ea4335;
	    border-color: #ea4335;
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
	
	.my-wrap {
		width: 380px;		
	}
</style>
	
</head>
<body>
<!-- contents s -->
<div class="container my-wrap">
<form id="formLogin" name="formLogin" method="post">
	<div class="row row-cols-1 gy-3">
		<div class="col text-center">
			<img alt="" src="/resources/xdmin/image/logo_login_300_200.png">
		</div>		
    	<div class="col">
			<input type="text" id="ifmmId" name="ifmmId" maxlength="20" placeholder="ID" class="form-control" value="xdmin">
		</div>
		<div class="col">
			<input type="password" id="ifmmPassword" name="ifmmPassword" maxlength="20" placeholder="Password" class="form-control" value="aaa">
		</div>
<!-- 		
		<div class="col">
			<div class="form-check form-switch">
			  <input type="checkbox" id="autoLogin" name="autoLogin" checked role="switch" class="form-check-input">
			  <input type="checkbox" id="autoLogin" name="autoLogin" role="switch" class="form-check-input">
			  <label class="form-check-label" for="autoLogin">Auto login</label>
			</div>		
		</div>
 -->		
		<div class="d-grid gap-2 mt-3">
			<button class="btn btn-secondary" type="button" id="btnLogin" name="">Login</button>
<%-- 			
			<a href="/member/findIdPwdForm" class="text-center">Find Id/Password</a>
			<hr>
			cookie.seq: <c:out value="${cookie.cookieSeq.value }"/><br>
			<button class="btn my-btn-kakao" type="button">Kakao</button>
			<button class="btn my-btn-naver" type="button" id="btnLoginNaver">Naver</button>
			<button class="btn my-btn-google" type="button">Google</button>
			<button class="btn my-btn-facebook" type="button">Facebook</button>
 --%>
		</div>
		
		   <!-- 네이버 로그인 버튼 노출 영역 -->
    <div id="naver_id_login"></div>
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

    <!-- <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script> -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	
<script type="text/javascript">

	/* naver 로그인 s */
/* 	
	var naver_id_login = new naver_id_login("_oyurJg7dwBPwPfZsJEV", "http://localhost:8080/member/loginNaverCallback");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain("http://localhost:8080");
	naver_id_login.setState(state);
	naver_id_login.init_naver_id_login();
 */	
	/* naver 로그인 e */
	
	
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "_oyurJg7dwBPwPfZsJEV", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/member/LoginForm", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();
$("#btnLoginNaver").on("click", function(){
// window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});
	
	$("#btnLogin").on("click", function(){
		if(validation() == false) return false;
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val(), "autoLogin" : $("#autoLogin").is(":checked")}
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
		// if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
		// if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
    }
	

	</script>
	
</body>
</html>