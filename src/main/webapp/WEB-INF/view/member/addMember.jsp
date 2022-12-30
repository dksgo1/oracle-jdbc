<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="Neumorphism UI - Sign in">
<meta name="author" content="Themesberg">
<link rel="canonical" href="https://themesberg.com/product/ui-kits/neumorphism-ui/" />

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="../neumorphism/neumorphism/assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="../neumorphism/neumorphism/assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="../neumorphism/neumorphism/assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="../neumorphism/neumorphism/assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="../neumorphism/neumorphism/assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">
<!-- Fontawesome -->
<link type="text/css" href="../neumorphism/neumorphism/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
<!-- Pixel CSS -->
<link type="text/css" href="../neumorphism/neumorphism/css/neumorphism.css" rel="stylesheet">
<title>addMember</title>
</head>
<body>
	<div>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h2>HOME</h2></a>
	</div>
	<form action="${pageContext.request.contextPath}/member/addMember" method="post">
        <!-- Section -->
        <section class="min-vh-100 d-flex bg-primary align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="card-header text-center pb-0">
                                <h2 class="mb-0 h5">회원가입</h2>                               
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
                                            <input class="form-control" id="exampleInputIcon4" name="memberId" placeholder="Id" type="text" aria-label="email adress">
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
                                            <label for="exampleConfirmPassword7">Name</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                                </div>
                                                <input class="form-control" id="exampleConfirmPassword7" name="memberName" placeholder="Name" type="text" aria-label="Password" required>
                                            </div>
                                        </div>
                                        <!-- End of Form -->
                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck6">
                                            <label class="form-check-label" for="defaultCheck6">
                                                이용약관에 동의합니다.
                                            </label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-block btn-primary">회원가입 완료</button>
                                </form>
                                <div class="mt-3 mb-4 text-center">
                                    <span class="font-weight-normal">or</span>
                                </div>
                                <div class="btn-wrapper my-4 text-center">
                                    <button class="btn btn-primary btn-icon-only text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                        <span aria-hidden="true" class="fab fa-facebook-f"></span>
                                    </button>
                                    <button class="btn btn-primary btn-icon-only text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                        <span aria-hidden="true" class="fab fa-twitter"></span>
                                    </button>
                                    <button class="btn btn-primary btn-icon-only text-facebook" type="button" aria-label="github button" title="github button">
                                        <span aria-hidden="true" class="fab fa-github"></span>
                                    </button>
                                </div>
                                <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                    <span class="font-weight-normal">
                                       	이미 ID가 있으신가요?
                                        <a href="${pageContext.request.contextPath}/member/login" class="font-weight-bold">로그인</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	</form>
</body>
</html>