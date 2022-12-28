<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>내정보</h2>
	<div>
		<a href="${pageContext.request.contextPath}/member/modifyPwMember">비밀번호수정</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/member/modifyMember">개인정보수정</a>
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/RemoveMemberController">회원탈퇴</a>
	</div>
</body>
</html>