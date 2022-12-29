<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="../neumorphism/neumorphism/css/neumorphism.css" rel="stylesheet">
</head>
<body>
	<h3 class="text-center">게시글 입력</h3>
	<form action="${pageContext.request.contextPath}/board/addBoard" method="post">
		<table class="table shadow-soft rounded container w-50 h-50">
			<tr>
				<td>id</td>
				<td><input type="text" name="memberId" value="${loginMember.memberId}" readonly="readonly"></td>
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
		<div style=" text-align: center;">
			<button class="btn btn-primary text-dark" type="submit">글 입력</button>
		</div>	
	</form>
</body>
</html>