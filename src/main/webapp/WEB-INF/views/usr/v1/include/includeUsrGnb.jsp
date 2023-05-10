<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- Header -->
<header class="header-main bg-white header-light fixed-top header-height header-option-1">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <!-- Logo -->
            <a class="navbar-brand" href="/">
                <img src="/resources/usr/v1/template/shopapp/assets/img/logo.svg" title="" alt="">
            </a>
            <!-- End Logo -->
            <!-- Menu -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto">
                    <li class="dropdown nav-item">
                        <%-- <a href="/v1/mallbicycle/show/bicycleShowUsrAjaxList?shType=<c:out value="${majorTypeRoad }"/>" class="nav-link">Road</a> --%>
                        <a href="/v1/mallbicycle/major/majorShowUsrAjaxList?shType=<c:out value="${majorTypeRoad }"/>" class="nav-link">Road</a>
                        <label class="px-dropdown-toggle mob-menu"></label>
                        <ul class="dropdown-menu left shadow-lg">
                            <li><a class="dropdown-item" href="/v1/mallbicycle/show/bicycleShowUsrAjaxList?shType=<c:out value="${majorTypeRoad }"/>">완차</a></li>
                            <li><a class="dropdown-item" href="../../pages/policy.html">부품</a></li>
                            <li><a class="dropdown-item" href="../../pages/support.html">의류</a></li>
                        </ul>
                    </li>
                    <li class="dropdown nav-item">
                        <%-- <a href="/v1/mallbicycle/show/bicycleShowUsrAjaxList?shType=<c:out value="${majorTypeMtb }"/>" class="nav-link">MTB</a> --%>
                        <a href="/v1/mallbicycle/major/majorShowUsrAjaxList?shType=<c:out value="${majorTypeMtb }"/>" class="nav-link">MTB</a>
                        <label class="px-dropdown-toggle mob-menu"></label>
                        <ul class="dropdown-menu left shadow-lg">
                            <li><a class="dropdown-item" href="/v1/mallbicycle/show/bicycleShowUsrAjaxList?shType=<c:out value="${majorTypeMtb }"/>">완차</a></li>
                            <li><a class="dropdown-item" href="../../pages/policy.html">부품</a></li>
                            <li><a class="dropdown-item" href="../../pages/support.html">의류</a></li>
                        </ul>
                    </li>
                    <li class="dropdown nav-item">
                        <%-- <a href="/v1/mallbicycle/show/bicycleShowUsrAjaxList?shType=<c:out value="${majorTypeLife }"/>" class="nav-link">Life</a> --%>
                        <a href="/v1/mallbicycle/major/majorShowUsrAjaxList?shType=<c:out value="${majorTypeLife }"/>" class="nav-link">Life</a>
                        <label class="px-dropdown-toggle mob-menu"></label>
                        <ul class="dropdown-menu left shadow-lg">
                            <li><a class="dropdown-item" href="/v1/mallbicycle/show/bicycleShowUsrAjaxList?shType=<c:out value="${majorTypeLife }"/>">완차</a></li>
                            <li><a class="dropdown-item" href="../../pages/policy.html">부품</a></li>
                            <li><a class="dropdown-item" href="../../pages/support.html">의류</a></li>
                        </ul>
                    </li>
                    <li class="dropdown nav-item">
                        <a href="/v1/location/location/locationUsrAjaxList" class="nav-link">Info</a>
                        <label class="px-dropdown-toggle mob-menu"></label>
                        <ul class="dropdown-menu left shadow-lg">
                            <li><a class="dropdown-item" href="/v1/location/location/locationUsrAjaxList">Shop&Repair</a></li>
                            <li><a class="dropdown-item" href="/v1/location/location/locationUsrAjaxList">SNS</a></li>
                            <li><a class="dropdown-item" href="/v1/location/location/locationUsrAjaxList">Course</a></li>
                            <li><a class="dropdown-item" href="/v1/location/location/locationUsrAjaxList">GoGoGo</a></li>
                            <li><a class="dropdown-item" href="/v1/location/location/locationUsrAjaxList">Race</a></li>
                        </ul>                       
                    </li>                       
                    <li class="dropdown nav-item">
                        <a href="/v1/infra/notice/noticeUsrAjaxList" class="nav-link">Customer</a>
                        <label class="px-dropdown-toggle mob-menu"></label>
                        <ul class="dropdown-menu left shadow-lg">
                            <li><a class="dropdown-item" href="/v1/infra/notice/noticeUsrAjaxList">공지사항</a></li>
                            <li><a class="dropdown-item" href="/v1/infra/rule/serviceUsrView">이용약관</a></li>
                            <li><a class="dropdown-item" href="/v1/infra/rule/privacyUsrView">개인정보처리방침</a></li>
                        </ul>
                    </li>                        
                    <li class="dropdown nav-item">
                        <a href="/v1/mallbicycle/major/majorFavoriteUsrAjaxList" class="nav-link">My Page</a>
                        <label class="px-dropdown-toggle mob-menu"></label>
                        <ul class="dropdown-menu left shadow-lg">
                            <li><a class="dropdown-item" href="/v1/mallbicycle/major/majorFavoriteUsrAjaxList">즐겨찾기</a></li>
                            <li><a class="dropdown-item" href="/v1/mallbicycle/major/majorTradeUsrAjaxList">거래</a></li>
                            <li><a class="dropdown-item" href="/v1/mallbicycle/major/majorGoodsUsrAjaxList">상품</a></li>
                            <li><a class="dropdown-item" href="/v1/infra/qna/qnaUsrAjaxList">활동</a></li>
                            <li><a class="dropdown-item" href="/v1/infra/member/profileUsrForm">개인정보</a></li>
                        </ul>
                    </li>                                                 
                </ul>
            </div>
            <!-- End Menu -->
            <div class="nav flex-nowrap align-items-center header-right">
                <!-- Acount -->
                <div class="nav-item dropdown">
                    <a class="nav-link" href="#" role="button" id="dropdown_myaccount" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fi-user"> </i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end mt-2 shadow" aria-labelledby="dropdown_myaccount">

<c:choose>
	<c:when test="${empty sessUsrSeq }">
						<a class="dropdown-item" href="/v1/infra/member/loginUsrForm">Login</a>
						<a class="dropdown-item" href="/v1/infra/member/signUpUsrForm">SignUp</a>
	</c:when>
	<c:otherwise>
						<a class="dropdown-item" href="javascript:void(0);" id="btnLogout">Logout</a>
						<a class="dropdown-item" href="/v1/infra/member/signUpUsrForm">My page</a>
	</c:otherwise>
</c:choose>


<!--                             
                            <a class="dropdown-item" href="#">Wishlist</a>
                            <a class="dropdown-item" href="#">My account</a> 
-->
                    </div>
                </div>
                <!-- End Acount -->
                <!-- Mobile Toggle -->
                <button class="navbar-toggler ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- End Mobile Toggle -->
            </div>
        </div>
    </nav>
</header>
<!-- End Header -->