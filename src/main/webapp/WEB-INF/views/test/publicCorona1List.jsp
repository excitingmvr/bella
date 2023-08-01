<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../xdm/v1/include/head.jsp"%>

</head>
<body>
publicCorona1List

<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${fn:length(items) }"/>
<hr>
<br>bbb : <c:out value="${header.resultCode }"/>
<br>bbb : <c:out value="${header.resultMsg }"/>
<br>bbb : <c:out value="${header.pageNo }"/>
<br>bbb : <c:out value="${header.totalCount }"/>
<br>bbb : <c:out value="${header.numOfRows }"/>
<br>bbb : <c:out value="${header.items }"/>
<br>bbb : <c:out value="${fn:length(header.items) }"/>
<hr>
<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.YYYY }"/>
	<br><c:out value="${item.MM }"/>	
	<br><c:out value="${item.KIT_PROD_QTY }"/>	
	<br><c:out value="${item.KIT_EXPRT_QTY }"/>	
	<br><c:out value="${item.KIT_STOCK_QTY }"/>	
</c:forEach>

</body>
</html>