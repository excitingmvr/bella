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
                <th class="text-center" width="40px">
                    <div>
                        <input type="checkbox" id="checkboxAll" name="" value="" class="form-check-input">
                    </div>
                </th>
                <th width="80px">#</th>
                <th>이름</th>
                <th>설립일</th>
                <th>시작일</th>
                <th>대표자</th>
                <th>이메일</th>
                <th>연락처</th>
                <th>모바일</th>
                <th>주소</th>
                <th width="180px">최근수정일</th>
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
                        <input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${list.ltltSeq }"/>" class="form-check-input">
                    </div>
                </td>
                <td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
                <td><a href="javascript:goForm(<c:out value="${list.ltltSeq}"/>)" class="text-decoration-none"><c:out value="${list.ltltName }"/></a></td>
                <td><c:out value="${list.ltltEstDate }"/></td>
                <td><c:out value="${list.ltltStartDate }"/></td>
                <td><c:out value="${list.ltltCeo }"/></td>
                <td><c:out value="${list.ltltEmail }"/></td>
                <td><c:out value="${list.ltltPhone1 }"/></td>
                <td><c:out value="${list.ltltMobile }"/></td>
                <td><c:out value="${list.ltltAddress1 }"/></td>
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


<script type="text/javascript">
	<c:forEach items='${list}' var='list' varStatus='status'>
		var markerPosition  = new kakao.maps.LatLng('<c:out value="${list.ltltLat }"/>', '<c:out value="${list.ltltLng }"/>'); 
		var marker = new kakao.maps.Marker({ position: markerPosition });
		// marker.setMap(null);
		marker.setMap(map);
	</c:forEach>
</script>
