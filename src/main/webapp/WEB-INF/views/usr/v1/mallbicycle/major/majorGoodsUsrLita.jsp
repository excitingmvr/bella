<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrTagCodeMajor s -->
<%@include file="../../include/includeUsrTagCodeMajor.jsp"%>
<!-- includeUsrTagCodeMajor e -->
                        	
<!-- Total -->
<div class="shop-top-bar d-flex pb-3">
    <div class="layout-change">
        <!-- Mobile Toggle -->
        <button class="btn btn-sm d-lg-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#shop_filter" aria-controls="shop_filter">
            <i class="fs-4 lh-1 bi bi-justify-left"></i>
        </button>
        <!-- End Mobile Toggle -->
        <!-- <a class="btn btn-sm active" href="#"><i class="bi bi-grid"></i></a> -->
        <a class="btn btn-sm" href="javascript:goForm(0);"><i class="bi bi-plus-lg"></i></a>

<c:choose>
	<c:when test="${not empty vo.totalRows}">        
		<span>&nbsp;&nbsp;&nbsp;Total: <fmt:formatNumber value="${vo.totalRows}" pattern="#,###"/></span>
	</c:when>
	<c:otherwise>            
		<span>&nbsp;&nbsp;&nbsp;Total: 0</span>
	</c:otherwise>
</c:choose>

    </div>
</div>
<!-- End Total --> 
                     
                       
<div class="row g-2">
	<!-- Product -->
	
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
			<span style="padding-left: 50px;">There are no data!</span>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">
			
	<div class="col-sm-6 col-lg-4">
	    <div class="product-card-1">
	        <div class="product-card-image">
	            <div class="product-media">
	                <a href="#">
	                    <img class="img-fluid" src="/resources/usr/v1/image/mall/product/1000x1000.jpg" title="" alt="">
	                </a>
	<!--                                                 
					<div class="product-cart-btn">
						<a href="#" class="btn btn-danger btn-sm w-100">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
								<path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
							</svg>
						</a>
					</div>
	 -->                                                
	            </div>
	        </div>
	        <div class="product-card-info">
	            
<!-- includeUsrBicycleLita s -->
<%@include file="../../include/includeUsrMajorLita.jsp"%>
<!-- includeUsrBicycleLita e -->  	            
	            
				<h6 class="product-title" style="padding-top: 10px;">
					<a href="javascript:goView(<c:out value="${list.mbmgSeq}"/>)"><c:out value="${list.mbmgTitle }"/></a>
				</h6>
				<div class="product-meta small">
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
	<!-- End Product -->
	
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

</div>
