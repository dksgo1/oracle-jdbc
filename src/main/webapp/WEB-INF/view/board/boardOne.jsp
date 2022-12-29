<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>TITLE</td>
			<td>CONTENT</td>
		</tr>
		<tr>
			<td>${b.memberId}</td>
			<td>${b.boardTitle}</td>
			<td>${b.boardContent}</td>
		</tr>
	</table>
	<div>
		<c:if test="${loginMember.memberId == b.memberId}">
			<a href='${pageContext.request.contextPath}/board/modifyBoard?boardNo=${b.boardNo}'>수정</a>
			<a href='${pageContext.request.contextPath}/board/RemoveBoard?boardNo=${b.boardNo}'>삭제</a>
		</c:if>	
	</div>
</body>
</html>