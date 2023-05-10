<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="product-meta" style="padding-top: 5px;">
	Canyon
	 | 
	<c:forEach items="${listCodeMajorType}" var="itemBicycleType" varStatus="statusBicycleType">
		<c:if test="${list.mbmgTypeCd eq itemBicycleType.ifcdSeq}"><c:out value="${itemBicycleType.ifcdName }"/></c:if>
	</c:forEach> 
	 |  	                 
	<c:out value="${list.mbmgProductionYear }"/>
</div>
<div class="product-meta " style="padding-top: 5px;">
	Aeroad CF SLX 7 Disc eTap 
</div>
<div class="product-meta " style="padding-top: 5px;">
	<c:forEach items="${listCodeSize}" var="itemSize" varStatus="statusSize">
		<c:if test="${list.mbmgSizeCd eq itemSize.ifcdSeq}"><c:out value="${itemSize.ifcdName }"/></c:if>
	</c:forEach>
	 |  
	<c:forEach items="${listCodeMaterial}" var="itemMaterial" varStatus="statusSize">
		<c:if test="${list.mbmgMaterialCd eq itemMaterial.ifcdSeq}"><c:out value="${itemMaterial.ifcdName }"/></c:if>
	</c:forEach>
	 | 		
	<c:choose>
		<c:when test="${list.mbmgTypeCd eq majorTypeRoad}">
			<c:forEach items="${listCodeMajorTypeRoad}" var="itemBicycleTypeRoad" varStatus="statusBicycleTypeRoad">
				<c:if test="${list.mbmgTypeDetailCd eq itemBicycleTypeRoad.ifcdSeq}"><c:out value="${itemBicycleTypeRoad.ifcdName }"/></c:if>
			</c:forEach>
		</c:when>
		<c:when test="${list.mbmgTypeCd eq majorTypeMtb}">
			<c:forEach items="${listCodeMajorTypeMtb}" var="itemBicycleTypeMtb" varStatus="statusBicycleTypeMtb">
				<c:if test="${list.mbmgTypeDetailCd eq itemBicycleTypeMtb.ifcdSeq}"><c:out value="${itemBicycleTypeMtb.ifcdName }"/></c:if>
			</c:forEach>
		</c:when>
		<c:when test="${list.mbmgTypeCd eq majorTypeLife }">
			<c:forEach items="${listCodeMajorTypeLife}" var="itemBicycleTypeLife" varStatus="statusBicycleTypeLife">
				<c:if test="${list.mbmgTypeDetailCd eq itemBicycleTypeLife.ifcdSeq}"><c:out value="${itemBicycleTypeLife.ifcdName }"/></c:if>
			</c:forEach>
		</c:when>					
	</c:choose>
	 |  
	<c:forEach items="${listCodeDriveSystem}" var="itemDriveSystem" varStatus="statusDriveSystem">
		<c:if test="${list.mbmgDriveSystemCd eq itemDriveSystem.ifcdSeq}"><c:out value="${itemDriveSystem.ifcdName }"/></c:if>
	</c:forEach>
</div>                                            
<div class="product-meta" style="padding-top: 5px;">
	<c:choose>
		<c:when test="${list.mbmgTypeCd eq majorTypeRoad}">
			<c:forEach items="${listCodeDriveTrainRoad}" var="itemDriveTrainRoad" varStatus="statusDriveTrainRoad">
				<c:if test="${list.mbmgDriveTrainCd eq itemDriveTrainRoad.ifcdSeq}"><c:out value="${itemDriveTrainRoad.ifcdName }"/></c:if>
			</c:forEach>
		</c:when>
		<c:when test="${list.mbmgTypeCd eq majorTypeMtb}">
			<c:forEach items="${listCodeDriveTrainMtb}" var="itemDriveTrainMtb" varStatus="statusDriveTrainMtb">
				<c:if test="${list.mbmgDriveTrainCd eq itemDriveTrainMtb.ifcdSeq}"><c:out value="${itemDriveTrainMtb.ifcdName }"/></c:if>
			</c:forEach>
		</c:when>
		<c:when test="${list.mbmgTypeCd eq majorTypeLife }">
			<c:forEach items="${listCodeDriveTrainLife}" var="itemDriveTrainLife" varStatus="statusDriveTrainLife">
				<c:if test="${list.mbmgDriveTrainCd eq itemDriveTrainLife.ifcdSeq}"><c:out value="${itemDriveTrainLife.ifcdName }"/></c:if>
			</c:forEach>
		</c:when>					
	</c:choose>
	 | 
	<c:forEach items="${listCodeBreak}" var="itemBreak" varStatus="statusBreak">
		<c:if test="${list.mbmgBreakCd eq itemBreak.ifcdSeq}"><c:out value="${itemBreak.ifcdName }"/></c:if>
	</c:forEach>
	 | 
	<c:forEach items="${listCodeWheel}" var="itemWheel" varStatus="statusWheel">
		<c:if test="${list.mbmgWheelCd eq itemWheel.ifcdSeq}"><c:out value="${itemWheel.ifcdName }"/></c:if>
	</c:forEach>
	 | 
	<c:forEach items="${listCodeTire}" var="itemTire" varStatus="statusTire">
		<c:if test="${list.mbmgTireCd eq itemTire.ifcdSeq}"><c:out value="${itemTire.ifcdName }"/></c:if>
	</c:forEach>		
</div>                                                                              
