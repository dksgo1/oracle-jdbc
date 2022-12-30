<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member One</title>
<link type="text/css" href="../neumorphism/neumorphism/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<link type="text/css" href="../neumorphism/neumorphism/css/neumorphism.css" rel="stylesheet">
</head>
<body>
	<div>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h4>HOME</h4></a>
	</div>
	
    <!-- Section -->
    <section class="min-vh-100 d-flex bg-primary align-items-center">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                    <div class="card bg-primary shadow-soft border-light p-4">
                        <div class="card-header text-center pb-0">
                            <h2 class="mb-0 h5">내정보</h2>                               
                        </div>
                        <div class="card-body">                                   
	                        <div class="input-group mb-4">
	           					<a href="${pageContext.request.contextPath}/member/modifyPwMember" class="btn btn-block btn-primary">비밀번호 수정</a>
	                        </div>
                        	<div class="input-group mb-4">                                               
								<a href="${pageContext.request.contextPath}/member/modifyMember" class="btn btn-block btn-primary">개인정보 수정</a>                                                                                           
                        	</div>                 
            	 			<a href="${pageContext.request.contextPath}/RemoveMemberController" class="btn btn-block btn-primary">회원탈퇴</a> 			           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>