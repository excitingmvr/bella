<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../xdmin/include/head.jsp"%>



</head>
<body>
memberView

<br><c:out value="${item.ifmmSeq }"/>
<br><fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
</body>
</html>
