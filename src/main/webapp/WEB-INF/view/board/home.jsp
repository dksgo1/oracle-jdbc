<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="regal/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="regal/vendors/feather/feather.css">
<link rel="stylesheet" href="regal/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="regal/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="regal/images/favicon.png" />
<title>HOME</title>
</head>
<body>
 <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-stretch auth auth-img-bg">
        <div class="row flex-grow">
          <div class="col-lg-6 d-flex align-items-center justify-content-center">
            <div class="auth-form-transparent text-left p-3">
   				<div>
     				<h3>OO 게시판</h3>
      			</div>
            	<div class="col-xl-11 d-flex grid-margin stretch-card">
     				<div class="card">
       					<div class="card-body">
           					<h2 class="card-title">이미 회원이시라면</h2>
         					<div class="row">
             					<div class="col-lg-12"> 
					              <h4 class="font-weight-light">로그인을 해주세요</h4>
             					</div>
             				</div>
             			</div>
             		</div>				
               	   <a class="btn btn-block btn-Secondary btn-outline-dark btn-lg font-weight-medium auth-form-btn" href="${pageContext.request.contextPath}/member/login"><h3>로그인</h3></a>
                </div>
               	<div class="col-xl-11 d-flex grid-margin stretch-card">
     				<div class="card">
       					<div class="card-body">
           					<h2 class="card-title">처음오셨나요?</h2>
         					<div class="row">
             					<div class="col-lg-12"> 
					              <h4 class="font-weight-light">아이디가 없다면 회원가입을 해주세요</h4>
             					</div>
             				</div>
             			</div>
             		</div>				
               	   <a class="btn btn-block btn-Secondary btn-outline-dark btn-lg font-weight-medium auth-form-btn" href="${pageContext.request.contextPath}/member/addMember"><h3>회원가입</h3></a>
                </div>
            </div>
          </div>
          <div class="col-lg-6 register-half-bg d-flex flex-row">
            <p class="text-white font-weight-medium text-center flex-grow align-self-end">Copyright &copy; 2020  All rights reserved.</p>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="regal/vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="regal/js/off-canvas.js"></script>
  <script src="regal/js/hoverable-collapse.js"></script>
  <script src=".regal/js/template.js"></script>
  <!-- endinject -->
</body>
</html>