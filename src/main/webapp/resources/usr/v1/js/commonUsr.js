document.write("<script src='/resources/usr/v1/js/constantsUsr.js'></script>");
document.write("<script src='/resources/usr/v1/js/validationUsr.js'></script>");

$.datepicker.setDefaults({
	showMonthAfterYear: true,
    changeYear: true,
    changeMonth: true,
    dateFormat:'yy-mm-dd',
    closeText:'취소',
    currentText: '오늘',
    showButtonPanel: true,
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    onClose: function () {
        if ($(window.event.srcElement).hasClass('ui-datepicker-close')) {
            $(this).val('');
        }
    }

});


$("#btnLogout").on("click", function(){
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/v1/infra/member/logoutUsrProc"
		,data: {}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/v1/infra/index/indexUsrView";
			} else {
				// by pass
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});


/*문자열 특정 자리수 치환*/
var replaceAt = function(input, index, character){
    return input.substr(0, index) + character + input.substr(index+character.length);
}


goLogin = function(){
	location.href = URL_USR_LOGIN_FORM;
}


goIndex = function(){
	location.href = URL_USR_INDEX_VIEW;
}