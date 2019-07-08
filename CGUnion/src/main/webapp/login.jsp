<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
		
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<title>CGUnion后台登录</title>
		<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
		
		<link href="${path}/css/user/css.css" rel="stylesheet">
		<link href="${path}/css/user/bootstrap.css" rel="stylesheet">
		<link href="${path}/css/user/now-ui-kit.css" rel="stylesheet">
		<link href="${path}/css/font-awesome-4.7.0/css/font-awesome.css"
	rel="stylesheet" type="text/css">
		
		<script src="${path}/js/user/jquery.js" type="text/javascript"></script>
		<script src="${path}/js/user/popper.js" type="text/javascript"></script>
		<script src="${path}/js/user/bootstrap.js" type="text/javascript"></script>
		<script src="${path}/js/user/now-ui-kit.js" type="text/javascript"></script>
		
		
</head>
<body>

		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg  fixed-top navbar-transparent " >
			<div class="container">
				<div class="dropdown button-dropdown">
						<span class="button-bar"></span>
						<span class="button-bar"></span>
						<span class="button-bar"></span>
				</div>
				<div style="width: 200px;font-size: 18px;">
					CGUnion后台登录
				</div>
				<div class="collapse navbar-collapse justify-content-end" >
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="#">To the website</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#/issues">Have an issue?</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- End Navbar -->
		<div class="page-header" >
			<div class="container">
				<div class="col-md-4 content-center">
					<div class="card card-login"  style="width:640px;height:540px;padding:170px 170px">
						<form class="form" method="post" action="">
							<div class="">
								<div class="input-group input-lg">
									<span class="input-group-addon">
                                    <img alt="加载中..." src="${path}/img/user/加号用户.png" style="width:18px;height:18px">
                                </span>
									<input type="text" class="form-control" placeholder="Login Name">
								</div>
								<div class="input-group  input-lg">
									<span class="input-group-addon">
                                    <img alt="加载中..." src="${path}/img/user/锁.png" style="width:18px;height:18px">
                                </span>
									<input type="password" placeholder="Password" class="form-control">
								</div>
							</div>
							<div class="footer text-center">
								<a href="resource/index" class="btn btn-primary btn-round btn-lg btn-block">Login</a>
							</div>
							
							<div class="pull-right">
								<h6>
                                <a href="#pablo" class="link">Forget Password?</a>
                            </h6>
							</div>
						</form>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container">
					<nav>
						<ul>
							<li>
								<a href="#">
									Creative Tim
								</a>
							</li>
							<li>
								<a href="#">
									About Us
								</a>
							</li>
							<li>
								<a href="#">
									Blog
								</a>
							</li>
							<li>
								<a href="#">
									MIT License
								</a>
							</li>
						</ul>
					</nav>
					<div class="copyright">
						©
						<script>
							document.write(new Date().getFullYear())
						</script>, Designed by Invision. Coded by Creative Tim.More Templates
					</div>
				</div>
			</footer>
		</div>

		
	</body>
</html>