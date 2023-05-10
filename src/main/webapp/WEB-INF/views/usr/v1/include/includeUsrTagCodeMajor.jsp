<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- code -->
<c:set var="listCodeMajorType" value="${CodeServiceImpl.selectListCachedCode('17')}"/>

<c:set var="listCodeMajorTypeRoad" value="${CodeServiceImpl.selectListCachedCode('18')}"/>
<c:set var="listCodeMajorTypeMtb" value="${CodeServiceImpl.selectListCachedCode('19')}"/>
<c:set var="listCodeMajorTypeLife" value="${CodeServiceImpl.selectListCachedCode('20')}"/>

<c:set var="listCodeSize" value="${CodeServiceImpl.selectListCachedCode('21')}"/>
<c:set var="listCodeMaterial" value="${CodeServiceImpl.selectListCachedCode('22')}"/>

<c:set var="listCodeDriveTrainRoad" value="${CodeServiceImpl.selectListCachedCode('23')}"/>
<c:set var="listCodeDriveTrainMtb" value="${CodeServiceImpl.selectListCachedCode('24')}"/>
<c:set var="listCodeDriveTrainLife" value="${CodeServiceImpl.selectListCachedCode('25')}"/>

<c:set var="listCodeBreak" value="${CodeServiceImpl.selectListCachedCode('26')}"/>
<c:set var="listCodeWheel" value="${CodeServiceImpl.selectListCachedCode('27')}"/>
<c:set var="listCodeTire" value="${CodeServiceImpl.selectListCachedCode('28')}"/>
<c:set var="listCodeDriveSystem" value="${CodeServiceImpl.selectListCachedCode('29')}"/>

<c:set var="majorTypeRoad" value="112"/>
<c:set var="majorTypeMtb" value="113"/>
<c:set var="majorTypeLife" value="114"/>

<!-- category -->
<c:set var="listCategory" value="${CategoryServiceImpl.selectListCachedCategoryAll()}"/>

<!-- 
<c:set var="listCategoryBrand" value="247"/>
<c:set var="listCategoryDistrict" value="1"/>
 -->
