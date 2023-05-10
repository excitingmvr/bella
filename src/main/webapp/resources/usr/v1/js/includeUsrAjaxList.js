var form = $("form[name=formList]");

$("#btnSearch").on("click", function(){
	if (validationList() == false) return false;
	setLita();
});


goView = function(keyValue) {
	 /*if(key != 0) seq.val(btoa(key));*/ 
	seq.val(keyValue);
	form.attr("action", goUrlView).submit();
}
	
goForm = function(keyValue) {
	 /*if(key != 0) seq.val(btoa(key));*/ 
	seq.val(keyValue);
	form.attr("action", goUrlForm).submit();
}


goList = function(thisPage) {
	$("input:hidden[name=thisPage]").val(thisPage);
	
	setLita();
}

	
function setLita() {
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: goUrlLita
		,data : $("#formList").serialize()
		/* ,data : {  } */
		,success: function(response) {
			$("#lita").empty();
			$("#lita").append(response);
			history.pushState({data: response}, null, goUrlAjaxList + '#page' + $("input:hidden[name=thisPage]").val());
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
}


$(window).on('popstate', function(event) {
    let data = event.originalEvent.state;
    $('#lita').html(data.data);
});

/*
var checkboxSeqArray = [];


$("#btnSearch").on("click", function(){
	if (validationList() == false) return false;
	setLita();
});


$("#btnReset").on("click", function(){
	$(location).attr("href", goUrlAjaxList);
});


$("#changeRowNum").on("change", function(){
	$("input:hidden[name=rowNumToShow]").val($("#changeRowNum option:selected").val());
	setLita();
});
	

$("#checkboxAll").click(function() {
	if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
	else $("input[name=checkboxSeq]").prop("checked", false);
});


$("input[name=checkboxSeq]").click(function() {
	var total = $("input[name=checkboxSeq]").length;
	var checked = $("input[name=checkboxSeq]:checked").length;
	
	if(total != checked) $("#checkboxAll").prop("checked", false);
	else $("#checkboxAll").prop("checked", true); 
});


goForm = function(keyValue) {
	 if(key != 0) seq.val(btoa(key)); 
	seq.val(keyValue);
	form.attr("action", goUrlForm).submit();
}


goList = function(thisPage) {
	$("input:hidden[name=thisPage]").val(thisPage);
	
	setLita();
}

	
$("#btnUelete").on("click", function(){
	if($("input[name=checkboxSeq]:checked").length > 0 ) {
		$("input:hidden[name=exDeleteType]").val(1);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").show();
		$("#btnModalDelete").hide();
		$("#modalConfirm").modal("show");
	} else {
		$(".modal-title").text("확 인");
		$(".modal-body").text("데이터를 선택해 주세요!");
		$("#modalAlert").modal("show");
	}
});


$("#btnDelete").on("click", function(){
	if($("input[name=checkboxSeq]:checked").length > 0 ) {
		$("input:hidden[name=exDeleteType]").val(2);
		$(".modal-title").text("확 인");
		$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
		$("#btnModalUelete").hide();
		$("#btnModalDelete").show();
		$("#modalConfirm").modal("show");
	} else {
		$(".modal-title").text("확 인");
		$(".modal-body").text("데이터를 선택해 주세요!");
		$("#modalAlert").modal("show");
	}
});
	
	
$("#btnModalUelete").on("click", function(){
	$("input[name=checkboxSeq]:checked").each(function() { 
		checkboxSeqArray.push($(this).val());
	});
	
	$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
	
	$("#modalConfirm").modal("hide");
	
	form.attr("action", goUrlMultiUele).submit();
});


$("#btnModalDelete").on("click", function(){
	$("input[name=checkboxSeq]:checked").each(function() { 
		checkboxSeqArray.push($(this).val());
	});
	
	$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
	
	$("#modalConfirm").modal("hide");
						
	form.attr("action", goUrlMultiDele).submit();
});

	
$("#btnExcel").click(function() {
	form.attr("action", excelUri).submit();
});


$('#btnForm').on("click", function() {
	goForm(0);                
});
	
	*/

