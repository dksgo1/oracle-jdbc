<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>비밀번호 수정 페이지</h2>
	<form action="${pageContext.request.contextPath}/member/modifyPwMember" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memberId"></td>
			</tr>
			<tr>
				<td>현재 비밀번호</td>
				<td><input type="password" name="memberPw"></td>
			</tr>
			<tr>
				<td>새로운 비밀번호</td>
				<td><input type="password" name="newMemberPw"></td>
			</tr>
		</table>
		<button type="submit">비밀번호 수정</button>
	</form>	
</body>
</html>