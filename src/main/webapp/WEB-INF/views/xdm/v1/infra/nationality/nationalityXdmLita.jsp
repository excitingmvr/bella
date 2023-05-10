<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!-- totalAndRowNum s -->
<%@include file="../../include/totalAndRowNum.jsp"%>
<!-- totalAndRowNumu e -->

<!-- table s -->
<div class="table-responsive px-0 mt-2">
    <table class="table table-bordered table-sm table-hover table-striped mb-0">
        <thead class="table-dark">
            <tr>
                <th class="text-center" width="40px" >
                    <div>
                        <input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input">
                    </div>
                </th>
                <th width="80px">#</th>
                <th>Seq</th>
                <th>국가 이름</th>
                <th>국가 이름 (영문)</th>
                <th>국가 코드 (2자리)</th>
                <th>국가 코드 (3자리)</th>
                <th>사용</th>
                <th>순서</th>
                <th width="200px">등록일</th>
                <th width="200px">수정일</th>
            </tr>
        </thead>
        <tbody>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="11">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="list" varStatus="status">	
            <tr>
                <td class="text-center">
                    <div>
                        <input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.ifnaSeq }"/>" class="form-check-input">
                    </div>
                </td>
                <td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
                <td><c:out value="${list.ifnaSeq }"/></td>
                <td><a href="javascript:goForm(<c:out value="${list.ifnaSeq}"/>)" class="text-decoration-none"><c:out value="${list.ifnaName }"/></a></td>
                <td><c:out value="${list.ifnaNameEng }"/></td>
                <td><c:out value="${list.ifnaCode2Char }"/></td>
                <td><c:out value="${list.ifnaCode3Char }"/></td>
                <td>
                	<c:choose>
                		<c:when test="${list.ifnaUseNy eq 0 }">N</c:when>
                		<c:otherwise>Y</c:otherwise>
                	</c:choose>
                </td>
                <td><c:out value="${list.ifnaOrder }"/></td>
                <td><fmt:formatDate value="${list.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><fmt:formatDate value="${list.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
		</c:forEach>
	</c:otherwise>
</c:choose>	            
            
         </tbody>
    </table>
</div>
<!-- table e -->

<!-- pagination s -->
<%@include file="../../include/pagination.jsp"%>
<!-- pagination e -->
