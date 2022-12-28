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
		<a href="${pageContext.request.contextPath}/updateMemberPwForm.jsp">비밀번호수정</a>
		<!-- updateMemberPwAction.jsp 수정전 비밀번호와 변경할 비밀번호를 입력받아야 함 -->
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/updateMemberForm.jsp">개인정보수정</a>
		<!-- updateMemberAction.jsp -->
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/deleteMemberForm.jsp">회원탈퇴</a>
		<!-- deleteMemberAction.jsp 비밀번호 확인 후 삭제 후 session.invalidte() 까지 해야 됨 -->
	</div>
</body>
</html>