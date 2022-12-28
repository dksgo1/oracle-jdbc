<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>${loginMember.memberName}님 어서오세요</h2>
	<div>
		<a href="${pageContext.request.contextPath}/board/boardList">게시판</a>
		<a href="${pageContext.request.contextPath}/member/memberOne">내정보</a>
		<a href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
		
	</div>
</body>
</html>