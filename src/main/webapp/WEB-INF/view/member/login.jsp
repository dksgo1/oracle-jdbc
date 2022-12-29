<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
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
</head>
<body>
<body>
	<div>
		<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h2>HOME</h2></a>
	</div>
	<form action="${pageContext.request.contextPath}/member/login" method="post">
        <section class="min-vh-100 d-flex bg-primary align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="card-header text-center pb-0">
                                <h2 class="h4">아이디와 비밀번호를 입력해주세요</h2>  
                            </div>
                            <div class="card-body">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="exampleInputIcon3">ID</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon3" name="memberId" placeholder="Id" type="text" aria-label="email adress">
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-group">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="exampleInputPassword6">Password</label>
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                                </div>
                                                <input class="form-control" id="exampleInputPassword6" name="memberPw" placeholder="Password" type="password" aria-label="Password" required>
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-block btn-primary">로그인</button>   
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
                                      	아직 회원이 아니신가요?
                                        <a href="${pageContext.request.contextPath}/member/addMember" class="font-weight-bold">회원 가입</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  	</form>
    <!-- Core -->
<script src="../neumorphism/neumorphism/vendor/jquery/dist/jquery.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/headroom.js/dist/headroom.min.js"></script>

<!-- Vendor JS -->
<script src="../neumorphism/neumorphism/vendor/onscreen/dist/on-screen.umd.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/nouislider/distribute/nouislider.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/jarallax/dist/jarallax.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/jquery.counterup/jquery.counterup.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/jquery-countdown/dist/jquery.countdown.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
<script src="../neumorphism/neumorphism/vendor/prismjs/prism.js"></script>

<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Neumorphism JS -->
<script src="../neumorphism/neumorphism/js/neumorphism.js"></script>
		
</body>
</html>