<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<form name="form">
	<input type="hidden" name="ifmmName" value="asdasdf"/>
	<input type="hidden" name="ifmmId"/>
	<input type="hidden" name="ifmpNumber"/>
	<input type="hidden" name="ifmeEmailFull"/>
	<input type="hidden" name="ifmmGenderCd"/>
	<input type="hidden" name="ifmmDob"/>
</form>
<script type="text/javascript">
	var naver_id_login = new naver_id_login("_oyurJg7dwBPwPfZsJEV", "YOUR_CALLBACK_URL");
	// 접근 토큰 값 출력
	/* alert(naver_id_login.oauthParams.access_token); */
	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
/* 	  
		alert(naver_id_login.getProfileData('email'));
		alert(naver_id_login.getProfileData('nickname'));
		alert(naver_id_login.getProfileData('age'));
 */
		$("input[name=ifmmId]").val(naver_id_login.getProfileData('id'));
		$("input[name=ifmmName]").val(naver_id_login.getProfileData('name'));
		$("input[name=ifmeEmailFull]").val(naver_id_login.getProfileData('email'));

		if (naver_id_login.getProfileData('gender') == 'M'){
			$("input[name=ifmmGenderCd]").val(30);
		} else if (naver_id_login.getProfileData('gender') == 'F') {
			$("input[name=ifmmGenderCd]").val(31);
		} else {
 			$("input[name=ifmmGenderCd]").val(32);
		}

/* 		
		$("input[name=ifmpNumber]").val(naver_id_login.getProfileData('mobile'));
		$("input[name=ifmmDob]").val(naver_id_login.getProfileData('birthyear') + "-" + naver_id_login.getProfileData('birthday'));
 */
		$("form[name=form]").attr("action", "/member/loginNaverProc").submit();
	}

//	window.location.href = "/member/loginNaverProc";
  
</script>
</body>
</html>