<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
<title>[admin] gorugoru 상품 등록</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/common.css">
</head>
<body>
	<!-- content 영역  -->
	<div class="content">
		<div class="title">
			<img id="titleImage" src="${contextPath}/resources/images/title.jpg"
				alt="타이틀 이미지">
			<h2 class="title-text">상품 등록</h2>
		</div>
		<div class="breadcrumb">
			<a href="${contextPath}/admin_product_list.jsp">상품 관리</a> > 상품 등록
		</div>
		<div class="product-reg">
			<div class="product-reg-info">
				<form method="get" name="frm_prdReg" action="${contextPath}/product/addProduct.do}">
					<h3>상품 구분</h3>
					<select>
						<option>과일류</option>
						<option>엽채류</option>
						<option>경채류</option>
						<option>근채류</option>
						<option>구근류</option>
						<option>과채류</option>
						<option>화채류</option>
					</select>
					<h3>상품명</h3>
					<input type="text">
					<h3>원산지</h3>
					<input type="text">
					<h3>가격</h3>
					<input type="number">
					<h3>재고</h3>
					<input type="number"></br>
					</br>
			</div>
			<div class="product-reg-thumbnail">
				<h3>상품 이미지(썸네일)</h3>
				<input type="file" id="thumbnail_fileInput" style="display: none;">
				<div>
					<span id="thumbnail_fileName"></span> <img id="previewImage"
						style="display: none; width: 200px;">
				</div>
				</br>
				<button
					onclick="document.getElementById('thumbnail_fileInput').click()">파일
					첨부</button>
			</div>

			<div class="product-reg-detailImg">
				<h3>상품 이미지(상세)</h3>
				<input type="file" id="detail_fileInput" style="display: none;">
				<div>
					<span id="detail_fileName"></span> <img id="detailPreviewImage"
						style="display: none; width: 200px;">
				</div>
				</br>
				<button
					onclick="document.getElementById('detail_fileInput').click()">파일
					첨부</button>
			</div>
			</form>
		</div> <!-- .product-reg -->
		<div class="reg-btn">
			<div>
				<button>초기화</button>
			</div>
			<div>
				<button>등록</button>
			</div>
		</div>
	</div>

	<!-- 이미지 첨부 관련 script -->
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>