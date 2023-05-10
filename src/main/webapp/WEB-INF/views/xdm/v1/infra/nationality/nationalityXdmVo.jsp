<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shUseNy" value="<c:out value="${vo.shUseNy}"/>"/>
<input type="hidden" name="shDelNy" value="<c:out value="${vo.shDelNy}"/>"/>

<input type="hidden" name="shOptionDate" value="<c:out value="${vo.shOptionDate}"/>"/>
<input type="hidden" name="shDateStart" value="<c:out value="${vo.shDateStart}"/>"/>
<input type="hidden" name="shDateEnd" value="<c:out value="${vo.shDateEnd}"/>"/>

<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>


<input type="hidden" name="ifnaSeq" value="<c:out value="${vo.ifnaSeq}"/>">		<!-- #-> -->