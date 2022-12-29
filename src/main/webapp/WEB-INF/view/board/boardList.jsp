<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Neumorphism UI - Sign in">
<meta name="author" content="Themesberg">
<link rel="canonical" href="https://themesberg.com/product/ui-kits/neumorphism-ui/" />

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="../neumorphism/neumorphism/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="../neumorphism/neumorphism/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="../neumorphism/neumorphism/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="../neumorphism/neumorphism/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="../neumorphism/neumorphism/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<!-- Fontawesome -->
<link type="text/css" href="../neumorphism/neumorphism/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<!-- Pixel CSS -->
<link type="text/css" href="../neumorphism/neumorphism/css/neumorphism.css" rel="stylesheet">
<title>Board List</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#rowPerPage').change(function() {
			$('#pageForm').submit();
			alert('change');
		})
	});
</script>
</head>
<body>
	<div>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h4>HOME</h4></a>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/member/logout"><h4>LOGOUT</h4></a>
	</div>
	<h1 class="text-center">BOARD LIST</h1>
	<form id="pageForm" method="get" action="${pageContext.request.contextPath}/board/boardList">
		<select name="rowPerPage" id="rowPerPage">
			<c:if test="${rowPerPage == 10}">
				<option value="10" selected="selected">10</option>
				<option value="20">20</option>
				<option value="30">30</option>
			</c:if>
			<c:if test="${rowPerPage == 20}">
				<option value="10">10</option>
				<option value="20" selected="selected">20</option>
				<option value="30">30</option>
			</c:if>
			<c:if test="${rowPerPage == 30}">
				<option value="10">10</option>
				<option value="20">20</option>
				<option value="30" selected="selected">30</option>
			</c:if>
		</select>
	</form>
	<table class="table table-hover shadow-inset rounded">
		<tr>
			<th>boardNo</th>
			<th>boardTitle</th>
			<th>createdate</th>
		</tr>
		<c:forEach var="b" items="${boardList}">
			<tr>
				<td>${b.boardNo}</td>
				<td><a href="${pageContext.request.contextPath}/BoardOneController?boardNo=${b.boardNo}">${b.boardTitle}</a></td>
				<td>${b.createdate}</td>
			</tr>
		</c:forEach>
	</table>
		<a class="btn btn-primary text-dark" href="${pageContext.request.contextPath}/board/addBoard">글입력</a>
	<div style=" text-align: center;">	
		<a class="btn btn-primary text-info" href="${pageContext.request.contextPath}/board/boardList?rowPerPage=${rowPerPage}&currentPage=${currentPage-1}">이전</a>
		<a class="btn btn-primary text-info" href="${pageContext.request.contextPath}/board/boardList?rowPerPage=${rowPerPage}&currentPage=${currentPage+1}">다음</a>
	</div>
</body>
</html>