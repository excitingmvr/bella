<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrTagCodeMajor s -->
<%@include file="../../include/includeUsrTagCodeMajor.jsp"%>
<!-- includeUsrTagCodeMajor e -->

<div class="shop-top-bar d-flex pb-3">
    <div class="layout-change">
        <!-- Mobile Toggle -->
        <button class="btn btn-sm d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#shop_filter" aria-controls="shop_filter">
            <i class="fs-4 lh-1 bi bi-justify-left"></i>
        </button>
        <!-- End Mobile Toggle -->
        <!-- <a class="btn btn-sm active" href="#"><i class="bi bi-grid"></i></a> -->
        <a class="btn btn-sm" href=""><i class="bi bi-arrow-repeat"></i></a>

<c:choose>
	<c:when test="${not empty vo.totalRows}">        
            <span>&nbsp;&nbsp;&nbsp;Total: <fmt:formatNumber value="${vo.totalRows}" pattern="#,###"/></span>
	</c:when>
	<c:otherwise>            
			<span>&nbsp;&nbsp;&nbsp;Total: 0</span>
	</c:otherwise>
</c:choose>

    </div>
    <div class="shortby-dropdown ms-auto">
        <div class="dropdown">
            <a class="btn btn-white btn-sm border dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                Sort by
            </a>
            <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="#">Featured</a></li>
                <li><a class="dropdown-item" href="#">Best selling</a></li>
                <li><a class="dropdown-item" href="#">Alphabetically, A-Z</a></li>
                <li><a class="dropdown-item" href="#">Alphabetically, Z-A</a></li>
                <li><a class="dropdown-item" href="#">Price, low to high</a></li>
                <li><a class="dropdown-item" href="#">Price, high to low</a></li>
                <li><a class="dropdown-item" href="#">Date, old to new</a></li>
                <li><a class="dropdown-item" href="#">Date, new to old</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="row g-3">
    <!-- Product Box -->

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
			<span style="padding-left: 50px;">There are no data!</span>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">
		    
    <div class="col-sm-6 col-lg-4">
        <div class="product-card-1">
            <div class="product-card-image">
                <div class="badge-ribbon">
                    <span class="badge bg-danger">Today</span>
                </div>
                <div class="product-action">
                    <a data-bs-toggle="modal" data-bs-target="#px-quick-view" href="javascript:void(0)" class="btn btn-outline-primary">
                        <i class="fi-eye"></i>
                    </a>
<%-- <c:if test="${ xMajorMyFavoriteCount eq 0 && not empty sessUsrSeq }"> --%>         
					<a href="javascript:void(0)" class="btn btn-outline-primary" id="btnFavocite">
                        <i class="bi bi-bookmark"></i>
                    </a>
<%-- </c:if> --%>                    
                </div>
                <div class="product-media">
                    <a href="#">
                        <img class="img-fluid" src="/resources/usr/v1/image/mall/product/1000x1000.jpg" title="" alt="">
                    </a>
                </div>
            </div>
            <div class="product-card-info">
                <!-- <div class="product-meta small"> -->
                <div class="product-meta">
                    <i class="bi bi-hand-index-fill"></i> <c:out value="${list.xMajorHitCount }"/>&nbsp;&nbsp;
                    <i class="bi bi-bookmark-fill"></i> <c:out value="${list.xMajorFavoriteCount }"/>&nbsp;&nbsp;
                    <i class="bi bi-geo-alt-fill"></i>
                    <c:forEach items="${listCategory}" var="itemCategory" varStatus="statusCategory">
						<c:if test="${list.mbtdDistrictCt eq itemCategory.ifctSeq}"><c:out value="${itemCategory.ifctName }"/></c:if>
					</c:forEach>
					 | 
					<c:forEach items="${listCategory}" var="itemCategory" varStatus="statusCategory">
						<c:if test="${list.mbtdDistrict2Ct eq itemCategory.ifctSeq}"><c:out value="${itemCategory.ifctName }"/></c:if>
					</c:forEach>
                </div>

<!-- includeUsrBicycleLita s -->
<%@include file="../../include/includeUsrMajorLita.jsp"%>
<!-- includeUsrBicycleLita e -->
	            
				<h6 class="product-title" style="padding-top: 10px;">
					<a href="javascript:goView(<c:out value="${list.mbmtSeq}"/>)"><c:out value="${list.mbmtTitle }"/></a>
				</h6>	            
				<div class="product-price">
					<span class="text-primary"><fmt:formatNumber value="${list.mbmtPrice }" pattern="#,###" /></span>
				</div>
				<div class="product-meta small" style="padding-top: 5px;">
					<fmt:formatDate value="${list.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
					 | 
					<c:out value="${list.regId }"/>
	            </div>	                                                                          
            </div>
        </div>
    </div>
    
		</c:forEach>
	</c:otherwise>
</c:choose>	  
    
    <!-- End Product Box -->
</div>
	<!-- Paging -->
	<div class="shop-bottom-bar d-flex align-items-center mt-3">
	    <div class="ms-auto">
	        <ul class="pagination">
<c:if test="${vo.startPage gt vo.pageNumToShow}">	            
	            <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">          
	            <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:when>
		<c:otherwise>  	            
	            <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>
<c:if test="${vo.endPage ne vo.totalPages}">    	            
	            <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
</c:if>	            
	        </ul>
	    </div>
	</div>
	<!-- End Paging -->

<div class="modal fade" id="modalConfirm" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalConfirmTitle">title</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body" id="modalConfirmBody">
				body
			</div>
			<div class="modal-footer" id="modalConfirmFooter">
				<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-backspace" viewBox="0 0 16 16">
					  <path d="M5.83 5.146a.5.5 0 0 0 0 .708L7.975 8l-2.147 2.146a.5.5 0 0 0 .707.708l2.147-2.147 2.146 2.147a.5.5 0 0 0 .707-.708L9.39 8l2.146-2.146a.5.5 0 0 0-.707-.708L8.683 7.293 6.536 5.146a.5.5 0 0 0-.707 0z"/>
					  <path d="M13.683 1a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-7.08a2 2 0 0 1-1.519-.698L.241 8.65a1 1 0 0 1 0-1.302L5.084 1.7A2 2 0 0 1 6.603 1h7.08zm-7.08 1a1 1 0 0 0-.76.35L1 8l4.844 5.65a1 1 0 0 0 .759.35h7.08a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1h-7.08z"/>
					</svg>				
				</button>
<!--  			
				<button type="button" class="btn btn-danger btn-sm" name="" id="btnMoveToLogin"><i class="fa-solid fa-x"></i></button>
				<button type="button" class="btn btn-danger btn-sm" name="" id="btnModalUelete"><i class="far fa-trash-alt"></i></button>
 -->				
			</div>
		</div>
	</div>
</div>  
	
<script>
	$("#btnFavocite").on("click", function(){
		$("#modalConfirmTitle").text("즐겨찾기");
		$("#modalConfirmBody").text("로그인 후 이용가능한 서비스 입니다.");
		
//  		$("#modalConfirmFooter *").remove();
// 		$("#modalConfirmFooter").append(buttons);

		$("#modalConfirm").modal("show");
 		
	});

</script>	