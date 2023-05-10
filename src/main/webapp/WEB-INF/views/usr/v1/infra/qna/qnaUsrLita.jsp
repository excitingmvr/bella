<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<style>
.td-title-edited > a { color: inherit; }
.td-title-edited > a:hover { color: blue; }
</style>
                        	
<!-- Total -->
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
</div>
<!-- End Total --> 
                     
	<table class="table table-bordered table-hover mb-0">
		<thead class="text-700 bg-gray-200">
			<tr>
				<th class="fw-600" width="80px;">#</th>
				<th class="fw-600">제목</th>
				<th class="fw-600" width="180px;">등록일</th>
				<th class="fw-600" width="100px;">상태</th>
			</tr>
		</thead>
		<tbody>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="4">There are no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">	
				
			<tr>
				<td class="p-3"><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
				<td class="p-3 td-title-edited"><a href="javascript:goView(<c:out value="${list.ifqaSeq}"/>)" class="text-decoration-none"><c:out value="${list.ifqaTitle }"/></a></td>
				<td class="p-3"><fmt:formatDate value="${list.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td class="p-3"><c:out value="${CodeServiceImpl.selectOneCachedCode(list.ifqaStatusCd)}"/></td>
			</tr>
			
		</c:forEach>
	</c:otherwise>
</c:choose>	
  			
		</tbody>
	</table>
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


