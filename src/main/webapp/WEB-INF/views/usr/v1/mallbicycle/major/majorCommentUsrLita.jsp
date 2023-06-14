<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- includeUsrJspTag s -->
<%@include file="../../include/includeUsrJspTag.jsp"%>
<!-- includeUsrJspTag e -->

<!-- includeUsrTagCodeMajor s -->
<%@include file="../../include/includeUsrTagCodeMajor.jsp"%>
<!-- includeUsrTagCodeMajor e -->


<div class="row">
    <div class="col-lg-12">

<c:forEach items="${list}" var="list" varStatus="status">
	    
        <div class="d-flex review-box border-top pt-4 mb-4" id="<c:out value="${list.mbctSeq }"/>">
            <div>
                <div class="review-image">
                    <img class="img-fluid" src="/resources/usr/v1/image/infra/member/1000x1000.jpg" title="" alt="">
                </div>
            </div>
            <div class="col ps-3">
                <h6><c:out value="${list.regId }"/></h6>
                <div class="rating-star">
                    <span><fmt:formatDate value="${list.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>&nbsp;&nbsp;&nbsp;
                    <a href="javascript:void(0);" onclick="ueleModalComment(<c:out value="${list.mbctSeq }"/>)"><i class="bi bi-trash3"></i></a>&nbsp;&nbsp;
                    <a href="javascript:void(0);" onclick="updateComment(<c:out value="${list.mbctSeq }"/>)"><i class="bi bi-pencil-square"></i></a>
                </div>
                <p class="m-0 pt-3" id="mbctComment_<c:out value="${status.index }"/>"><c:out value="${fn:replace(list.mbctComment, br, '<br/>')}" escapeXml = "false"/></p>
            </div>
        </div>

</c:forEach>

<c:if test="${fn:length(list) ne 0}">       
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
		
</c:if>
                                                
    </div>
</div>

    
                           
</div>

<!-- includeUsrModal s -->
<%@include file="../../include/includeUsrModal.jsp"%>
<!-- includeUsrModal e -->  

<script type="text/javascript">


	
</script>