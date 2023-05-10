<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<div class="modal fade" id="modalConfirm" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">title</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				body
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal"><i class="fa-solid fa-angle-left"></i></button>
				<button type="button" class="btn btn-danger btn-sm" name="" id="btnModalDelete"><i class="fa-solid fa-x"></i></button>
				<button type="button" class="btn btn-danger btn-sm" name="" id="btnModalUelete"><i class="far fa-trash-alt"></i></button>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="modalAlert" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">title</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				body
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-sm" data-bs-dismiss="modal"><i class="fa-solid fa-check"></i></button>
			</div>
		</div>
	</div>
</div>

<c:set var="imgType" value=""/>		<!-- 어떻게 해야 될지 고민 중이다. -->
<div class="modal fade" id="modalImgViewer" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">Image Viewer</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
					<div class="carousel-indicators">
						<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							<c:if test="${listUploaded.type eq 2 }">						
								<c:choose>
									<c:when test="${statusUploaded.count eq 1 }">
										<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
									</c:when>
									<c:otherwise>
										<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<c:out value="${statusUploaded.index }"/>" aria-label="Slide <c:out value="${statusUploaded.count }"/>"></button>
									</c:otherwise>
								</c:choose>
							</c:if>
						</c:forEach>
					</div>
					<div class="carousel-inner">
						<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
							<c:if test="${listUploaded.type eq 2 }">						
								<c:choose>
									<c:when test="${statusUploaded.count eq 1 }">
										<div class="carousel-item active">
											<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="d-block w-100">
										</div>
									</c:when>
									<c:otherwise>
										<div class="carousel-item">
											<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="d-block w-100">
										</div>
									</c:otherwise>
								</c:choose>
							</c:if>
						</c:forEach>	
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>

			</div>
<!-- 			
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-sm" data-bs-dismiss="modal"><i class="fa-solid fa-check"></i></button>
			</div>
 -->			
		</div>
	</div>
</div>
