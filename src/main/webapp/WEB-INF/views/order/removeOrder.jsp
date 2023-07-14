<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주문 삭제</title>
<link href="${contextPath}/resources/css/common.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div class="content">
		<div class="title">
			<img id="titleImage" src="${contextPath}/resources/images/title.jpg"
				alt="타이틀 이미지">
			<h2 class="title-text">상품 상세</h2>
		</div>

		<div class="breadcrumb">
			<a>주문 관리</a> > <a href="${contextPath}/order/listOrders.do">주문 리스트</a> > <a href="${contextPath}/order/viewOrderDetail.do">주문 상세</a> > <a href="${contextPath}/order/removeOrder.do" class="current">주문 삭제</a>
		</div>
		<h1>주문이 성공적으로 취소되었습니다.</h1>
		<a href="${contextPath}/order/listOrders.do">주문 리스트로 이동</a>
	</div>
</body>
</html>