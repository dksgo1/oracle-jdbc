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
<title>HOME2</title>
</head>
<body>
	<div class="container-scroller">
	    <div class="container-fluid page-body-wrapper full-page-wrapper">
	      <div class="content-wrapper d-flex align-items-stretch auth auth-img-bg">
     	 	<div>
				<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/Home"><h4>HOME</h4></a>
				<a class= "btn btn-outline-dark btn-sm" href="${pageContext.request.contextPath}/member/logout"><h4>LOGOUT</h4></a>
			</div>
	        <div class="row flex-grow">
	          <div class="col-lg-6 d-flex align-items-center justify-content-center">
	            <div class="auth-form-transparent text-left p-3">
	   				<div>
	     				<h2>${loginMember.memberName}님 어서오세요</h2>
	      			</div>
	            	<div class="col-xl-12 d-flex grid-margin stretch-card">
	     				<div class="card">
	       					<div class="card-body">
	           					<h2 class="card-title">여러 회원들의 게시글을 보고싶으시다면?</h2>
	         					<div class="row">
	             					<div class="col-lg-15"> 
						              <h4 class="font-weight-light">빨리 여러 회원들과 같이 소통하세요</h4>
	             					</div>
	             				</div>
	             			</div>
	             		</div>				
	               	   <a class="btn btn-block btn-Secondary btn-outline-dark btn-lg font-weight-medium auth-form-btn" href="${pageContext.request.contextPath}/board/boardList"><h3>게시글 보기</h3></a>
	                </div>
	               	<div class="col-xl-12 d-flex grid-margin stretch-card">
	     				<div class="card">
	       					<div class="card-body">
	           					<h2 class="card-title">비밀번호, 닉네임 변경을 하고 싶으시다면?</h2>
	         					<div class="row">
	             					<div class="col-lg-15"> 
						              <h4 class="font-weight-light">주기적으로 개인정보를 수정 해주세요</h4>
	             					</div>
	             				</div>
	             			</div>
	             		</div>				
	               	   <a class="btn btn-block btn-Secondary btn-outline-dark btn-lg font-weight-medium auth-form-btn" href="${pageContext.request.contextPath}/member/memberOne"><h3>개인정보 수정</h3></a>
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
	  <!-- endinject -->ㄴ
</body>
</html>