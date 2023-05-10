<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../common/xdmin/includeV1/head.jsp"%>

</head>
<body>
publicCorona1JsonNodeList

<br>node : <c:out value="${node }"/>
<br>node.header : <c:out value="${node.get('header') }"/>
<br>node.header.resultCode : <c:out value="${node.get('header').get('resultCode') }"/>
<br>node.header.resultCode : <c:out value="${fn:replace(node.get('header').get('resultCode'),'&quot;','') }"/>
<br>resultCode : <c:out value="${resultCode }"/>
<br>node.header.resultMsg : <c:out value="${fn:replace(node.get('header').get('resultMsg'),'&quot;','') }"/>
<%-- <br>aaa : <c:out value="${header.resultCode }"/> --%>
<%-- <br>aaa : <c:out value="${node.resultMsg }"/> --%>
<%-- <br>aaa : <c:out value="${node.header.resultMsg }"/> --%>
<br>node.body.pageNo : <c:out value="${fn:replace(node.get('body').get('pageNo'),'&quot;','') }"/>
<%-- 
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
 --%>
<br>node.body.items : <c:out value="${node.get('body').get('items') }"/>
<br>node.body.items : <c:out value="${node.get('body').get('items').get('1').get('MM') }"/>
<%-- <br>node.body.items.length : <c:out value="${fn:length(node.get('body').get('items')) }"/> --%>
 
<%-- 	
<c:forEach items="${node.get('body').get('items')}" var="item" varStatus="status">
	<c:out value="${fn:replace(node.get('body').get('items').get('YYYY'),'&quot;','') }"/>
	<br><c:out value="${fn:replace(node.get('body').get('items').get('MM'),'&quot;','') }"/>	
	<br><c:out value="${fn:replace(node.get('body').get('items').get('KIT_PROD_QTY'),'&quot;','') }"/>	
	<br><c:out value="${fn:replace(node.get('body').get('items').get('KIT_EXPRT_QTY'),'&quot;','') }"/>	
	<br><c:out value="${fn:replace(node.get('body').get('items').get('KIT_STOCK_QTY'),'&quot;','') }"/>	
</c:forEach>
 --%>	

</body>
</html>