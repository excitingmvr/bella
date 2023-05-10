var form = $("form[name=form]");
var formVo = $("form[name=formVo]");

$("#btnList").on("click", function(){
	formVo.attr("action", goUrlAjaxList).submit();
}); 
	
/*	
$("#btnSave").on("click", function(){
	if (seq.val() == "0" || seq.val() == ""){
   		// insert
   		if (validationInst() == false) return false;
   		form.attr("action", goUrlInst).submit();
   	} else {
   		// update
   		 keyName.val(atob(keyName.val())); 
   		if (validationUpdt() == false) return false;
   		form.attr("action", goUrlUpdt).submit();
   	}
});


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
*/