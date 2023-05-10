<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ page import="com.junefw.common.constants.Constants" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.junefw.infra.code.CodeServiceImpl"/>
<jsp:useBean id="CategoryServiceImpl" class="com.junefw.infra.category.CategoryServiceImpl"/>

<% pageContext.setAttribute("br", "\n"); %>