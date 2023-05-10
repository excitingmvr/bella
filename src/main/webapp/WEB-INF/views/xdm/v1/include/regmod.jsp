<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
    
<div class="row mt-sm-4">
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="regSeq" class="form-label">최초등록자</label>
        <input type="text" id="regSeq" value="<c:out value="${item.regId }"/> (<c:out value="${item.regSeq }"/>)" class="form-control-plaintext form-control-sm" readonly>
    </div>
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="regDateTime" class="form-label">최초등록일</label>
        <input type="text" id="regDateTime" value="<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" class="form-control-plaintext form-control-sm" readonly>          
    </div>
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="regIp" class="form-label">최초등록Ip</label>
        <input type="text" id="regIp" value="<c:out value="${item.regIp }"/>" class="form-control-plaintext form-control-sm" readonly>
    </div>
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="regDeviceCd" class="form-label">최초등록디바이스</label>
        <input type="text" id="regDeviceCd" value="<c:out value="${item.regDeviceCd }"/>" class="form-control-plaintext form-control-sm" readonly>          
    </div>        
</div>
<div class="row mt-sm-4">
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="modSeq" class="form-label">최종수정자</label>
        <input type="text" id="modSeq" value="<c:out value="${item.modId }"/> (<c:out value="${item.modSeq }"/>)" class="form-control-plaintext form-control-sm" readonly>
    </div>
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="modDateTime" class="form-label">최종수정일</label>
        <input type="text" id="modDateTime" value="<fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>" class="form-control-plaintext form-control-sm" readonly>          
    </div>
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="modIp" class="form-label">최종수정Ip</label>
        <input type="text" id="modIp" value="<c:out value="${item.modIp }"/>" class="form-control-plaintext form-control-sm" readonly>
    </div>
    <div class="col-sm-3 mt-3 mt-sm-0">
        <label for="modDeviceCd" class="form-label">최종수정디바이스</label>
        <input type="text" id="modDeviceCd" value="<c:out value="${item.modDeviceCd }"/>" class="form-control-plaintext form-control-sm" readonly>          
    </div>        
</div> 