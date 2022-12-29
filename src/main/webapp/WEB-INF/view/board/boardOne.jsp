<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Neumorphism UI - Sign in">
<meta name="author" content="Themesberg">
<link rel="canonical" href="https://themesberg.com/product/ui-kits/neumorphism-ui/" />

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="neumorphism/neumorphism/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="neumorphism/neumorphism/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="neumorphism/neumorphism/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="neumorphism/neumorphism/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="neumorphism/neumorphism/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<!-- Fontawesome -->
<link type="text/css" href="neumorphism/neumorphism/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<!-- Pixel CSS -->
<link type="text/css" href="neumorphism/neumorphism/css/neumorphism.css" rel="stylesheet">
<title>Board One</title>
</head>
<body>
	<div>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h4>HOME</h4></a>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/member/logout"><h4>LOGOUT</h4></a>
	</div>
	<table class="table shadow-soft rounded container w-50 h-50">
		<tr>
			<td>ID</td>
			<td>${b.memberId}</td>
		</tr>
		<tr>
			<td>TITLE</td>
			<td>${b.boardTitle}</td>
		</tr>
		<tr>
			<td>CONTENT</td>
			<td>${b.boardContent}</td>
		</tr>
	</table>
	<div class="text-center">
		<c:if test="${loginMember.memberId == b.memberId}">
			<a class="btn btn-primary text-dark btn-sm" href='${pageContext.request.contextPath}/board/modifyBoard?boardNo=${b.boardNo}'>수정</a>
			<a class="btn btn-primary text-dark btn-sm" href='${pageContext.request.contextPath}/board/RemoveBoard?boardNo=${b.boardNo}'>삭제</a>
		</c:if>	
	</div>
</body>
</html>