<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="min-height: 2015px;">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>CGUnion | 后台管理系统</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- bootstrap 3.0.2 -->
<link href="${path}/css/common/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${path}/css/common/bootstrap-table.css" rel="stylesheet"
	type="text/css">
<link href="${path}/css/common/bootstrap-treeview.min.css"
	rel="stylesheet" type="text/css">

<!-- font Awesome -->
<link href="${path}/css/font-awesome-4.7.0/css/font-awesome.css"
	rel="stylesheet" type="text/css">

<link href="${path}/css/common/AdminLTE.css" rel="stylesheet"
	type="text/css">
<link href="${path}/css/common/index.css" rel="stylesheet"
	type="text/css">
<!-- jQuery 2.0.2 -->
<script src="${path}/js/common/jquery_002.js"></script>
<script src="${path}/js/common/jquery.min.js"></script>

<!-- Bootstrap -->
<script src="${path}/js/common/bootstrap.js" type="text/javascript"></script>
<script src="${path}/js/common/bootstrap-table.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${path }/js/common/bootstrap-table-zh-CN.js"></script>

<script src="${path}/js/common/bootstrap-treeview.min.js"
	type="text/javascript"></script>

<!-- CGUnion App -->
<script src="${path}/js/common/app.js" type="text/javascript"></script>
<script src="${path}/js/common/index.js" type="text/javascript"></script>




</head>

<body class="skin-blue wysihtml5-supported  pace-done"
	style="min-height: 2015px;">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="${path}/resource/index" class="logo"> CGUnion </a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="${path}/img/common/信封.png" alt="加载中..."
							style="width: 16px; height: 16px;" /> <span
							class="label label-success">0</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 0 messages</li>
							<li>No messages</li>
							<li class="footer"><a href="#">See All Messages</a></li>
						</ul></li>
					<!-- Notifications: style can be found in dropdown.less -->
					<li class="dropdown notifications-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="${path}/img/common/警告.png" alt="加载中..."
							style="width: 16px; height: 16px;" /> <span
							class="label label-warning">1</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 1 notifications</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 200px;">
									<ul class="menu"
										style="overflow: hidden; width: 100%; height: 200px;">
										<li><a href="#"> <i class="ion ion-ios7-people info"></i>
												5 new members joined today
										</a></li>

									</ul>
									<div class="slimScrollBar"
										style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div>
									<div class="slimScrollRail"
										style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
								</div>
							</li>
							<li class="footer"><a href="#">View all</a></li>
						</ul></li>
					<!-- Tasks: style can be found in dropdown.less -->
					<li class="dropdown tasks-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="${path}/img/common/条形图.png" alt="加载中..."
							style="width: 16px; height: 16px;" /> <span
							class="label label-danger">2</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">You have 2 tasks</li>
							<li>
								<!-- inner menu: contains the actual data -->
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 200px;">
									<ul class="menu"
										style="overflow: hidden; width: 100%; height: 200px;">
										<li>
											<!-- Task item --> Some task I need to do <small
											class="pull-right">60%</small>
											<div class="progress xs">
												<div class="progress-bar progress-bar-red"
													style="width: 60%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> Make beautiful transitions <small
											class="pull-right">80%</small>
											<div class="progress xs">
												<div class="progress-bar progress-bar-yellow"
													style="width: 80%" role="progressbar" aria-valuenow="20"
													aria-valuemin="0" aria-valuemax="100">
													<span class="sr-only">80% Complete</span>
												</div>
											</div>
										</li>
										<!-- end task item -->
									</ul>
									<div class="slimScrollBar"
										style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div>
									<div class="slimScrollRail"
										style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
								</div>
							</li>
							<li class="footer"><a href="#">View all tasks</a></li>
						</ul></li>
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <img
							src="${path}/img/common/加号用户.png" alt="加载中..."
							style="width: 16px; height: 16px;" /> <span>Jane Doe <i
								class="caret"></i></span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								src="${path}/img/common/QQ图片20190601202405.jpg"
								class="img-circle" alt="User Image">
								<p>
									Jane Doe - Web Developer <small>Member since Nov. 2012</small>
								</p></li>
							<!-- Menu Body -->
							<li class="user-body">
								<div class="col-xs-4 text-center">
									<a href="#">Followers</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Sales</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Friends</a>
								</div>
							</li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="#" class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left"
		style="min-height: 585px;">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas" style="min-height: 2015px;">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="${path}/img/common/QQ图片20190601202405.jpg"
							class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Hello, 小废物</p>
						<a href="#"><small class="badge pull-right bg-red">❤</small>
							Online</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="seach" id="search-btn"
								class="btn btn-flat">
								<img src="${path}/img/common/搜索.png" alt="加载中..."
									style="width: 18px; height: 18px;" />
							</button>
						</span>
					</div>
				</form>



				<!-- 树形动态菜单栏 -->
				<div id="tree" class="col-sm-2" style="width: 220px; height: 30px"></div>

			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Right side column. Contains the navbar and content of the page 
		<aside class="right-side">
			
        
          




			/.content
		</aside> -->
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

</body>

</html>