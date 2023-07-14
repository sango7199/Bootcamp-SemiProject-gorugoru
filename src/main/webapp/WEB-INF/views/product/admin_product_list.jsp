<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>[admin] gorugoru 상품 리스트</title>
<link rel="stylesheet" type="text/css" href="../css/common.css">
</head>
<body>
	<!-- content 영역  -->
	<div class="content">
        <div class="title">
            <img id="titleImage" src="../img/title.jpg" alt="타이틀 이미지">
            <h2 class="title-text">상품 리스트</h2>
        </div>
		<div class="breadcrumb">
			<a href="admin_product_list.jsp">상품 관리</a> > 상품 리스트
		</div>
		<!-- 표-->
		<div class="button-container">
			<div class="reg-button">
				<button onclick="location.href='../product/addProduct.do';">상품 등록</button>
			</div>
		</div>
		<div class="product-table-container">
			<table class="product-table">
				<tr style="height: 50px;">
					<th>상품번호</th>
					<th>상품구분</th>
					<th>상품명</th>
					<th>원산지</th>
					<th>가격</th>
					<th>재고</th>
					<th>상세보기</th>
				</tr>
				<tr>
					<td>1</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(2Kg)</td>
					<td>충주</td>
					<td>10.000원</td>
					<td>50</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(2Kg)</td>
					<td>충주</td>
					<td>10.000원</td>
					<td>50</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>3</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(2Kg)</td>
					<td>충주</td>
					<td>10.000원</td>
					<td>50</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>4</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(2Kg)</td>
					<td>충주</td>
					<td>10.000원</td>
					<td>50</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>5</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(3Kg)</td>
					<td>충주</td>
					<td>10.001원</td>
					<td>51</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>6</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(4Kg)</td>
					<td>충주</td>
					<td>10.002원</td>
					<td>52</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>7</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(5Kg)</td>
					<td>충주</td>
					<td>10.003원</td>
					<td>53</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>8</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(6Kg)</td>
					<td>충주</td>
					<td>10.004원</td>
					<td>54</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>9</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(7Kg)</td>
					<td>충주</td>
					<td>10.005원</td>
					<td>55</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>10</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(8Kg)</td>
					<td>충주</td>
					<td>10.006원</td>
					<td>56</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>11</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(9Kg)</td>
					<td>충주</td>
					<td>10.007원</td>
					<td>57</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>12</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(10Kg)</td>
					<td>충주</td>
					<td>10.008원</td>
					<td>58</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>13</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(11Kg)</td>
					<td>충주</td>
					<td>10.009원</td>
					<td>59</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>14</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(12Kg)</td>
					<td>충주</td>
					<td>10.010원</td>
					<td>60</td>
					<td><a href="#">상세보기</a></td>
				</tr>
				<tr>
					<td>15</td>
					<td>과일류</td>
					<td>당도 보장 충주 사과(13Kg)</td>
					<td>충주</td>
					<td>10.011원</td>
					<td>61</td>
					<td><a href="#">상세보기</a></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>