<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../xdmin/include/head.jsp"%>



</head>
<body>
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
                <th class="text-center" width="80px">#</th>
                <th>이름</th>
                <th>아이디</th>
                <th>성별</th>
                <th>생일</th>
                <th>이메일</th>
                <th>모바일</th>
                <th>가입일</th>
            </tr>
        </thead>
        <tbody>

<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
            <tr>
                <td class="text-center">
                    <div>
                        <input type="checkbox" id="checkboxSeq" name="checkboxSeq" value="<c:out value="${item.ifmmSeq }"/>" class="form-check-input">
                    </div>
                </td>
                <td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
                <td><a href="javascript:goForm(<c:out value="${item.ifmmSeq}"/>)"><c:out value="${item.ifmmName }"/></a></td>
                <td><c:out value="${item.ifmmId }"/></td>
                <td>
					<c:forEach items="${listCodeGender}" var="itemGender" varStatus="statusGender">
						<c:if test="${item.ifmmGenderCd eq itemGender.ifcdSeq}"><c:out value="${itemGender.ifcdName }"/></c:if>
					</c:forEach>
                </td>
                <td><c:out value="${item.ifmmDob }"/></td>
                <td><c:out value="${item.ifmeEmailFull }"/></td>
                <td>
                	<c:set var="numberPhone" value="${item.ifmpNumber }"/>
                	<c:choose>
                		<c:when test="${fn:length(numberPhone) eq 10 }">
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,6)}"/>
							- <c:out value="${fn:substring(numberPhone,6,10)}"/>
                		</c:when>
                		<c:otherwise>
							<c:out value="${fn:substring(numberPhone,0,3)}"/>
							- <c:out value="${fn:substring(numberPhone,3,7)}"/>
							- <c:out value="${fn:substring(numberPhone,7,11)}"/>
                		</c:otherwise>
               		</c:choose>
                </td>
                <td><fmt:formatDate value="${item.modDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
		</c:forEach>
	</c:otherwise>
</c:choose>	            
            
         </tbody>
    </table>
</div>
<!-- table e -->
</body>
</html>
