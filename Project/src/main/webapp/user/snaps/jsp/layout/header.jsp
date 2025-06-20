<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<header>
    <%-- Google Font : Gothic A1 --%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <%-- CSS --%>
    <link href="${pageContext.request.contextPath}/user/customer/css/common/common.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/user/customer/css/layout/header.css" rel="stylesheet" type="text/css">

    <%-- JS --%>
    <script src="${pageContext.request.contextPath}/user/customer/js/layout/header.js"></script>

    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between">
                <!-- 로고 -->
                <a class="navbar-brand fw-bold text-white me-3" href="${pageContext.request.contextPath}/Controller" style="font-size: 1.8rem;">
                    MUSINSA
                </a>

<%--                <!-- 검색창 -->--%>
<%--                <div class="prod-search-container flex-grow-1">--%>
<%--                    <div class="form-group position-relative">--%>
<%--                        <i class="bi bi-search form-control-icon"></i>--%>
<%--                        <input type="text" class="form-control me-2" id="total-search-input" placeholder="검색어를 입력하세요">--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </nav>
    <div>
        <div class="index header d-flex justify-content-between align-items-center p-3 bg-light border-bottom">
            <c:choose>
                <c:when test="${not empty sessionScope.customer_info}">
                    <!-- 로그인 상태 -->
                    <span class="nickname">${sessionScope.customer_info.nickname}님 &nbsp;&nbsp; <button type="button" class="btn btn-outline-danger" onclick="onClickLogout()">로그아웃</button></span>
                    <div class="d-flex gap-3 align-items-center user-header-menu">
                            <%-- 스냅 --%>
                        <a href="${pageContext.request.contextPath}/Controller?type=snap" class="text-decoration-none text-dark">
                            <i class="bi bi-sunglasses"></i>
                            <span class="like_title">스냅</span>
                        </a>
                            <%-- 좋아요 --%>
                        <a href="Controller?type=like&action=select" class="text-decoration-none text-danger">
                            <i class="bi bi-heart-fill"></i>
                            <span class="like_title">좋아요</span>
                        </a>
                            <%-- 장바구니 --%>
                        <a href="Controller?type=cart" class="text-decoration-none text-dark position-relative">
                            <i class="bi bi-basket-fill"></i>
                            <span>장바구니</span>
                            <c:if test="${not empty sessionScope.cart_count and sessionScope.cart_count ne '0'}">
                                    <span class="badge bg-primary rounded-pill cart_count">
                                            ${sessionScope.cart_count}
                                    </span>
                            </c:if>
                        </a>
                            <%-- 주문배송조회 --%>
                        <a href="Controller?type=orderDelivery" class="text-decoration-none text-dark">
                            <i class="bi bi-box-seam-fill"></i>
                            <span>주문배송조회</span>
                        </a>
                            <%-- 마이페이지 --%>
                        <a href="Controller?type=myPage" class="text-decoration-none text-dark">
                            <i class="bi bi-person-circle"></i>
                            <span>마이페이지</span>
                        </a>
                    </div>
                </c:when>
                <c:otherwise>
                    <!-- 비로그인 상태 -->
                    <button type="button" class="btn btn-outline-primary" onclick="location.href='${pageContext.request.contextPath}/Controller?type=showlogin';">로그인</button>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</header>
</html>
