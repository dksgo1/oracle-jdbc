<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" href="../neumorphism/neumorphism/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<link type="text/css" href="../neumorphism/neumorphism/css/neumorphism.css" rel="stylesheet">
<title>Modify Pw Member</title>
</head>
<body>
	<div>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h4>HOME</h4></a>
	</div>
	<form action="${pageContext.request.contextPath}/member/modifyPwMember" method="post">
        <!-- Section -->
        <section class="min-vh-100 d-flex bg-primary align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="card-header text-center pb-0">
                                <h2 class="mb-0 h5">비밀번호 수정</h2>                               
                            </div>
                            <div class="card-body">
                                <form action="#">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">ID</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="memberId" type="text" aria-label="email adress">
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-group">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="exampleInputPassword7">Password</label>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                                </div>
                                                <input class="form-control" id="exampleInputPassword7" placeholder="Password" name="memberPw" type="password" aria-label="Password" required>
                                            </div>
                                        </div>
                                        <!-- End of Form -->
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="exampleConfirmPassword7">New Password</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                                </div>
                                                <input class="form-control" id="exampleConfirmPassword7" name="newMemberPw" type="text" aria-label="text" required>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-block btn-primary">비밀번호 수정</button>
                               </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	</form>
</body>
</html>