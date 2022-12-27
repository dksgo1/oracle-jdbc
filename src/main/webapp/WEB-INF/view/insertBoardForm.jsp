<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시글 입력</h3>
	<form action="${pageContext.request.contextPath}/InsertBoardActionController" method="post">
		<table border="1">
			<tr>
				<td>id</td>
				<td><input type="text" name="memberId"></td>
			</tr>
			<tr>
				<td>title</td>
				<td><input type="text" name="boardTitle"></td>
			</tr>
			<tr>
				<td>content</td>
				<td><textarea rows="5" cols="50" name="boardContent"></textarea></td>
			</tr>
		</table>
		<button type="submit">글 입력</button>
	</form>
</body>
</html>