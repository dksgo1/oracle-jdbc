<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시글 수정</h3>
	<form action="${pageContext.request.contextPath}/UpdateBoardActionController" method="post">
		<table border="1">
			<c:forEach var="b" items="${list}">
				<tr>
					<td>ID</td>
					<td><input type="number" name="memberId" value="${b.memberId}" readonly="readonly"></td>
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
		<button type="submit">수정</button>
	</form>
</body>
</html>