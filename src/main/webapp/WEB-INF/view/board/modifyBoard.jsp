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
<title>Insert title here</title>
</head>
<body>
	<h3>게시글 수정</h3>
	<form action="${pageContext.request.contextPath}/board/modifyBoard" method="post">
		<table class="table shadow-soft rounded container w-50 h-50">
			<c:forEach var="b" items="${list}">
				<tr>
					<td>No</td>
					<td><input type="no" name="boardNo" value="${b.boardNo}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="memberId" value="${b.memberId}" readonly="readonly"></td>
				</tr>
				<tr>
					<td>TITLE</td>
					<td><input type="text" name="boardTitle" value="${b.boardTitle}"></td>
				</tr>
				<tr>
					<td>CONTENT</td>
					<td><textarea rows="5" cols="50" name="boardContent">${b.boardContent}</textarea></td>
				</tr>
			</c:forEach>	
		</table>	
		<div style=" text-align: center;">
			<button class="btn btn-primary text-dark" type="submit" >수정</button>
		</div>	
	</form>
</body>
</html>