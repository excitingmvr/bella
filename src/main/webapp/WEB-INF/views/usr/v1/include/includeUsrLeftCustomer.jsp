<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<style>
.nav-item-edited > a { color: inherit; }
.nav-item-edited > a:hover { color: blue; }
</style>

<!-- Sidebar -->
<div class="col-lg-4 col-xl-3 pe-xl-5 offcanvas-lg offcanvas-start px-0 px-lg-3" tabindex="-1" id="shop_filter" aria-labelledby="shop_filterLabel">
	<div class="offcanvas-header border-bottom">
		<h5 class="offcanvas-title" id="shop_filterLabel">Menu & Filter</h5>
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#shop_filter" aria-label="Close"></button>
	</div>
	<div class="offcanvas-body flex-column">
    
<!-- Left Menu -->
		<div class="shop-sidebar-block">
			<div class="shop-sidebar-title">
				<a class="h5" data-bs-toggle="collapse" href="#shop_categories" role="button" aria-expanded="true" aria-controls="shop_categories">Customer <i class="bi bi-chevron-up"></i></a>
			</div>
			<div class="shop-category-list collapse show" id="shop_categories">
				<ul class="nav flex-column">
					<li class="nav-item">
						<a href="/v1/infra/notice/noticeUsrAjaxList" class="nav-link">공지사항</a>
					</li>
					<li class="nav-item">
						<a href="/v1/infra/rule/serviceUsrView" class="nav-link">이용약관</a>
					</li>					
					<li class="nav-item">
						<a href="/v1/infra/rule/privacyUsrView" class="nav-link">개인정보처리방침</a>
					</li>					
				</ul>
			</div>
		</div>
<!-- Left Menu -->

<script type="text/javascript">


</script>

<!-- Search -->
<%-- 
		<div class="d-flex align-items-center">
			<button class="btn btn-primary w-50" type="button" id="btnSearch">
				<svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
				</svg>
			</button>
			<button class="btn btn-secondary w-50" type="button" id="btnResetLeft">
				<svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-arrow-repeat" viewBox="0 0 16 16">
					<path d="M11.534 7h3.932a.25.25 0 0 1 .192.41l-1.966 2.36a.25.25 0 0 1-.384 0l-1.966-2.36a.25.25 0 0 1 .192-.41zm-11 2h3.932a.25.25 0 0 0 .192-.41L2.692 6.23a.25.25 0 0 0-.384 0L.342 8.59A.25.25 0 0 0 .534 9z"/>
					<path fill-rule="evenodd" d="M8 3c-1.552 0-2.94.707-3.857 1.818a.5.5 0 1 1-.771-.636A6.002 6.002 0 0 1 13.917 7H12.9A5.002 5.002 0 0 0 8 3zM3.1 9a5.002 5.002 0 0 0 8.757 2.182.5.5 0 1 1 .771.636A6.002 6.002 0 0 1 2.083 9H3.1z"/>
				</svg>			
			</button>
		</div>
		
		<div class="d-flex align-items-center pt-4">
			<div class="form-floating mb-3">
				<fmt:parseDate var="shPostedDateStart" value="${vo.shPostedDateStart }" pattern="yyyy-MM-dd HH:mm:ss"/>
				<input type="text" class="form-control" id="shPostedDateStart" placeholder="" name="shPostedDateStart" value="<fmt:formatDate value="${shDateStart }" pattern="yyyy-MM-dd" />" readonly>
				<label for="shPostedDateStart">등록일</label>
			</div> 
			<div class="text-gray-350 mx-2">-</div>
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="shPostedDateEnd" placeholder="" name="shPostedDateEnd" value="" readonly>
				<label for="shPostedDateEnd"></label>
			</div> 
		</div>
		<div class="d-flex align-items-center pt-2">
			<div class="form-floating mb-3">
				<input type="number" class="form-control" id="shProductionYearStart" placeholder="" name="shProductionYearStart" value="<c:out value="${vo.shProductionYearStart }"/>">
				<label for="shProductionYearStart">제작년도</label>
			</div> 
			<div class="text-gray-350 mx-2">-</div>
			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="shProductionYearEnd" placeholder="" name="shProductionYearEnd" value="<c:out value="${vo.shProductionYearEnd }"/>">
				<label for="shProductionYearEnd"></label>
			</div> 
		</div>
		<div class="d-flex align-items-center pt-2 pb-2">
			<div class="form-floating mb-3">
				<input type="number" class="form-control" id="shPriceStart" placeholder="" name="shPriceStart" value="<c:out value="${vo.shPriceStart }"/>">
				<label for="shPriceStart">가격</label>
			</div> 
			<div class="text-gray-350 mx-2">-</div>
			<div class="form-floating mb-3">
				<input type="number" class="form-control" id="shPriceEnd" placeholder="" name="shPriceEnd" value="<c:out value="${vo.shPriceEnd }"/>">
				<label for="shPriceEnd"></label>
			</div> 
		</div>
		
		<div class="form-floating" style="display: none;">
			<select class="form-select" id="shType" aria-label="Floating label select example" name="shType">
				<c:forEach items="${listCodeMajorType}" var="itemType" varStatus="statusType">
					<option value="<c:out value="${itemType.ifcdSeq }"/>" <c:if test="${itemType.ifcdSeq eq vo.shType }">selected</c:if>><c:out value="${itemType.ifcdName }"/></option>
				</c:forEach>				
			</select>
			<label for="shType">타입</label>
		</div>
		<br style="display: none;">

		<div class="form-floating">
			<select class="form-select" id="shTypeDetail" aria-label="Floating label select example" name="shTypeDetail">
			<option value="">전체</option>
			<c:choose>
				<c:when test="${vo.shType eq majorTypeRoad}">
					<c:forEach items="${listCodeMajorTypeRoad}" var="itemBicycleTypeRoad" varStatus="statusBicycleTypeRoad">
						<option value="<c:out value="${itemBicycleTypeRoad.ifcdSeq }"/>" <c:if test="${vo.shTypeDetail eq itemBicycleTypeRoad.ifcdSeq }">selected</c:if>><c:out value="${itemBicycleTypeRoad.ifcdName }"/></option>
					</c:forEach>
				</c:when>
				<c:when test="${vo.shType eq majorTypeMtb}">
					<c:forEach items="${listCodeMajorTypeMtb}" var="itemBicycleTypeMtb" varStatus="statusBicycleTypeMtb">
						<option value="<c:out value="${itemBicycleTypeMtb.ifcdSeq }"/>" <c:if test="${vo.shTypeDetail eq itemBicycleTypeMtb.ifcdSeq }">selected</c:if>><c:out value="${itemBicycleTypeMtb.ifcdName }"/></option>
					</c:forEach>
				</c:when>
				<c:when test="${vo.shType eq majorTypeLife }">
					<c:forEach items="${listCodeMajorTypeLife}" var="itemBicycleTypeLife" varStatus="statusBicycleTypeLife">
						<option value="<c:out value="${itemBicycleTypeLife.ifcdSeq }"/>" <c:if test="${vo.shTypeDetail eq itemBicycleTypeLife.ifcdSeq }">selected</c:if>><c:out value="${itemBicycleTypeLife.ifcdName }"/></option>
					</c:forEach>
				</c:when>					
			</c:choose>
			</select>
			<label for="shTypeDetail">타입 상세</label>
		</div>
		<br>
		<div class="form-floating">
			<select class="form-select" id="shBrand" aria-label="Floating label select example" name="shBrand">
			<option value="">전체</option>
				<c:forEach items="${listCategory}" var="itemBrand" varStatus="statusBrand">
					<c:if test="${listCategoryBrand eq itemBrand.ifctParents }">
						<option value="<c:out value="${itemBrand.ifctSeq }"/>" <c:if test="${itemBrand.ifctSeq eq vo.shBrand }">selected</c:if>><c:out value="${itemBrand.ifctName }"/></option>
					</c:if>
				</c:forEach>
			</select>
			<label for="shBrand">브랜드</label>
		</div>
		<br>
		<div class="form-floating">
			<select class="form-select" id="shModel" aria-label="Floating label select example" name="shModel">
			<option value="">선택</option>
			</select>
			<label for="shModel">모델</label>
		</div>
		<br>		
		<div class="form-floating">
			<select class="form-select" id="shSize" aria-label="Floating label select example" name="shSize">
				<option value="">전체</option>
				<c:forEach items="${listCodeSize}" var="itemSize" varStatus="statusSize">
					<option value="<c:out value="${itemSize.ifcdSeq }"/>" <c:if test="${itemSize.ifcdSeq eq vo.shSize }">selected</c:if>><c:out value="${itemSize.ifcdName }"/></option>
				</c:forEach>			
			</select>
			<label for="shSize">사이즈</label>
		</div>
		<br>
		<div class="form-floating">
			<select class="form-select" id="shMaterial" aria-label="Floating label select example" name="shMaterial">
			<option value="">전체</option>
				<c:forEach items="${listCodeMaterial}" var="itemMaterial" varStatus="statusMaterial">
					<option value="<c:out value="${itemMaterial.ifcdSeq }"/>" <c:if test="${itemMaterial.ifcdSeq eq vo.shMaterial }">selected</c:if>><c:out value="${itemMaterial.ifcdName }"/></option>
				</c:forEach>
			</select>
			<label for="shFrame">프래임</label>
		</div>
		<br>
		<div class="form-floating">
			<select class="form-select" id="shDriveSystem" aria-label="Floating label select example" name="shDriveSystem">
			<option value="">전체</option>
				<c:forEach items="${listCodeDriveSystem}" var="itemDriveSystem" varStatus="statusDriveSystem">
					<option value="<c:out value="${itemDriveSystem.ifcdSeq }"/>" <c:if test="${itemDriveSystem.ifcdSeq eq vo.shMaterial }">selected</c:if>><c:out value="${itemDriveSystem.ifcdName }"/></option>
				</c:forEach>
			</select>
			<label for="shDriveSystem">구동방식</label>
		</div>
		<br>		
		<div class="form-floating">
			<select class="form-select" id="shDrivetrain" aria-label="Floating label select example" name="shDrivetrain">
			<option value="">전체</option>
			<c:choose>
				<c:when test="${vo.shType eq majorTypeRoad}">
					<c:forEach items="${listCodeDriveTrainRoad}" var="itemDriveTrainRoad" varStatus="statusDriveTrainRoad">
						<option value="<c:out value="${itemDriveTrainRoad.ifcdSeq }"/>" <c:if test="${vo.shDriveTrain eq itemDriveTrainRoad.ifcdSeq }">selected</c:if>><c:out value="${itemDriveTrainRoad.ifcdName }"/></option>
					</c:forEach>
				</c:when>
				<c:when test="${vo.shType eq majorTypeMtb}">
					<c:forEach items="${listCodeDriveTrainMtb}" var="itemDriveTrainMtb" varStatus="statusDriveTrainMtb">
						<option value="<c:out value="${itemDriveTrainMtb.ifcdSeq }"/>" <c:if test="${vo.shDriveTrain eq itemDriveTrainMtb.ifcdSeq }">selected</c:if>><c:out value="${itemDriveTrainMtb.ifcdName }"/></option>
					</c:forEach>
				</c:when>
				<c:when test="${vo.shType eq majorTypeLife }">
					<c:forEach items="${listCodeDriveTrainLife}" var="itemDriveTrainLife" varStatus="statusDriveTrainLife">
						<option value="<c:out value="${itemDriveTrainLife.ifcdSeq }"/>" <c:if test="${vo.shDriveTrain eq itemDriveTrainLife.ifcdSeq }">selected</c:if>><c:out value="${itemDriveTrainLife.ifcdName }"/></option>
					</c:forEach>
				</c:when>					
			</c:choose>
				
			</select>
			<label for="shDrivetrain">구동계</label>
		</div>
		<br>
		<div class="form-floating">
			<select class="form-select" id="shWheel" aria-label="Floating label select example" name="shWheel">
			<option value="">전체</option>
				<c:forEach items="${listCodeWheel}" var="itemWheel" varStatus="statusWheel">
					<option value="<c:out value="${itemWheel.ifcdSeq }"/>" <c:if test="${itemWheel.ifcdSeq eq vo.shWheel }">selected</c:if>><c:out value="${itemWheel.ifcdName }"/></option>
				</c:forEach>
			</select>
			<label for="shWheel">휠</label>
		</div>
		<br>
		<div class="form-floating">
			<select class="form-select" id="shBreak" aria-label="Floating label select example" name="shBreak">
			<option value="">전체</option>
				<c:forEach items="${listCodeBreak}" var="itemBreak" varStatus="statusBreak">
					<option value="<c:out value="${itemBreak.ifcdSeq }"/>" <c:if test="${itemBreak.ifcdSeq eq vo.shBreak }">selected</c:if>><c:out value="${itemBreak.ifcdName }"/></option>
				</c:forEach>
			</select>
			<label for="shBreak">브레이크</label>
		</div>
		<br>	
		<div class="form-floating">
			<select class="form-select" id="shTire" aria-label="Floating label select example" name="shTire">
			<option value="">전체</option>
				<c:forEach items="${listCodeTire}" var="itemTire" varStatus="statusTire">
					<option value="<c:out value="${itemTire.ifcdSeq }"/>" <c:if test="${itemTire.ifcdSeq eq vo.shTire }">selected</c:if>><c:out value="${itemTire.ifcdName }"/></option>
				</c:forEach>
			</select>
			<label for="shTire">타이어</label>
		</div>
		<hr>			
   		<div class="form-floating">
			<select class="form-select" id="shDistrict" aria-label="Floating label select example" name="shDistrict">
			<option value="">전체</option>
				<c:forEach items="${listCategory}" var="itemDistrict" varStatus="statusDistrict">
					<c:if test="${listCategoryDistrict eq itemDistrict.ifctParents }">
						<option value="<c:out value="${itemDistrict.ifctSeq }"/>" <c:if test="${itemDistrict.ifctSeq eq vo.shDistrict }">selected</c:if>><c:out value="${itemDistrict.ifctName }"/></option>
					</c:if>
				</c:forEach>
			</select>
			<label for="shDistrict">지역</label>
		</div>
		<br>
   		<div class="form-floating">
			<select class="form-select" id="shDistrict2" aria-label="Floating label select example" name="shDistrict2">
			<option value="">전체</option>
			</select>
			<label for="shDistrict2">지역 상세</label>
		</div>
		<br>
 --%>		
<!-- Search -->
			
    </div>
</div>
<!-- End Sidebar -->
