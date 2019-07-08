<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html style="min-height: 2015px;">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="UTF-8">
		<title>CGUnion | 后台管理系统</title>
		<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- bootstrap 3.0.2 -->
		<link href="${path}/css/common/bootstrap.css" rel="stylesheet" type="text/css">
		<!-- font Awesome -->
		<link href="${path}/css/common/font-awesome.css" rel="stylesheet" type="text/css">
		
		<link href="${path}/css/common/ionicons.css" rel="stylesheet" type="text/css">
		<!-- fullCalendar -->
		<link href="${path}/css/common/fullcalendar.css" rel="stylesheet" type="text/css">
		<!-- Daterange picker -->
		<link href="${path}/css/common/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
		
		<link href="${path}/css/common/AdminLTE.css" rel="stylesheet" type="text/css">
		<link href="${path}/css/common/index.css" rel="stylesheet" type="text/css">
		<!-- jQuery 2.0.2 -->
		<script src="${path}/js/common/jquery_002.js"></script>
		<!-- jQuery UI 1.10.3 -->
		<script src="${path}/js/common/jquery-ui-1.js" type="text/javascript"></script>
		<!-- Bootstrap -->
		<script src="${path}/js/common/bootstrap.js" type="text/javascript"></script>
		<!-- Sparkline -->
		<script src="${path}/js/common/jquery_003.js" type="text/javascript"></script>
		<!-- jvectormap -->
		<script src="${path}/js/common/jquery-jvectormap-1.js" type="text/javascript"></script>
		<script src="${path}/js/common/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
		<!-- fullCalendar -->
		<script src="${path}/js/common/fullcalendar.js" type="text/javascript"></script>
		<!-- jQuery Knob Chart -->
		<script src="${path}/js/common/jquery.js" type="text/javascript"></script>
		<!-- daterangepicker -->
		<script src="${path}/js/common/daterangepicker.js" type="text/javascript"></script>
		<!-- Bootstrap WYSIHTML5 -->
		<script src="${path}/js/common/bootstrap3-wysihtml5.js" type="text/javascript"></script>
		<!-- iCheck -->
		<script src="${path}/js/common/icheck.js" type="text/javascript"></script>
		<!-- CGUnion App -->
		<script src="${path}/js/common/app.js" type="text/javascript"></script>
		<!-- CGUnion dashboard demo (This is only for demo purposes) -->
		<script src="${path}/js/common/dashboard.js" type="text/javascript"></script>
	</head>

	<body class="skin-blue wysihtml5-supported  pace-done" style="min-height: 2015px;">
		<!-- header logo: style can be found in header.less -->
		<header class="header">
			<a href="${path }/resource/testIndex" class="logo">
				CGUnion
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<div class="navbar-right">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="${path}/img/common/信封.png" alt="加载中..." style="width: 16px;height: 16px;" />
								<span class="label label-success">0</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 0 messages</li>
								<li>
									No messages
								</li>
								<li class="footer">
									<a href="#">See All Messages</a>
								</li>
							</ul>
						</li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="${path}/img/common/警告.png" alt="加载中..." style="width: 16px;height: 16px;" />
								<span class="label label-warning">1</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 1 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;">
										<ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
											<li>
												<a href="#">
													<i class="ion ion-ios7-people info"></i> 5 new members joined today
												</a>
											</li>

										</ul>
										<div class="slimScrollBar" style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div>
										<div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</li>
								<li class="footer">
									<a href="#">View all</a>
								</li>
							</ul>
						</li>
						<!-- Tasks: style can be found in dropdown.less -->
						<li class="dropdown tasks-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="${path}/img/common/条形图.png" alt="加载中..." style="width: 16px;height: 16px;" />
								<span class="label label-danger">2</span>
							</a>
							<ul class="dropdown-menu">
								<li class="header">You have 2 tasks</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 200px;">
										<ul class="menu" style="overflow: hidden; width: 100%; height: 200px;">
											<li>
												<!-- Task item -->
                                                   		Some task I need to do
                                                   		<small class="pull-right">60%</small>
													<div class="progress xs">
														<div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">60% Complete</span>
														</div>
													</div>
											</li>
											<!-- end task item -->
											<li>
												<!-- Task item -->
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
													<div class="progress xs">
														<div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">80% Complete</span>
														</div>
													</div>
											</li>
											<!-- end task item -->
										</ul>
										<div class="slimScrollBar" style="background: rgb(0, 0, 0) none repeat scroll 0% 0%; width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div>
										<div class="slimScrollRail" style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</li>
								<li class="footer">
									<a href="#">View all tasks</a>
								</li>
							</ul>
						</li>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="${path}/img/common/加号用户.png" alt="加载中..." style="width: 16px;height: 16px;" />
								<span>Jane Doe <i class="caret"></i></span>
							</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header bg-light-blue">
									<img src="${path}/img/common/QQ图片20190601202405.jpg" class="img-circle" alt="User Image">
									<p>
										Jane Doe - Web Developer
										<small>Member since Nov. 2012</small>
									</p>
								</li>
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
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<div class="wrapper row-offcanvas row-offcanvas-left" style="min-height: 585px;">
			<!-- Left side column. contains the logo and sidebar -->
			<aside class="left-side sidebar-offcanvas" style="min-height: 2015px;">
				<!-- sidebar: style can be found in sidebar.less -->
				<section class="sidebar">
					<!-- Sidebar user panel -->
					<div class="user-panel">
						<div class="pull-left image">
							<img src="${path}/img/common/QQ图片20190601202405.jpg" class="img-circle" alt="User Image">
						</div>
						<div class="pull-left info">
							<p>Hello, 小废物</p>
							<a href="#"><small class="badge pull-right bg-red">❤</small> Online</a>
						</div>
					</div>
					<!-- search form -->
					<form action="#" method="get" class="sidebar-form">
						<div class="input-group">
							<input type="text" name="q" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
                                <button type="submit" name="seach" id="search-btn" class="btn btn-flat">
                                	<img src="${path}/img/common/搜索.png" alt="加载中..." style="width: 18px;height: 18px;"/>	
                                </button>
                            </span>
						</div>
					</form>
					<!-- /.search form -->
					<!-- sidebar menu: : style can be found in sidebar.less -->
					<ul class="sidebar-menu">
						<li class="active">
							<a href="${path }/resource/testIndex">
								<img src="${path}/img/common/网络图形.png" alt="加载中..." style="width: 14px;height: 18px;"/>	
								<span>Dashboard</span>
								<small class="badge pull-right bg-green">new</small>
							</a>
						</li>
						<li class="treeview">
							<a href="#">
								<img src="${path}/img/common/齿轮齿轮.png" alt="加载中..." style="width: 16px;height: 16px;"/>
								<span>Base Setting</span> 
								<small class="badge pull-right bg-green">∨</small>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 基础档案设置</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 班车设置</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 排班设置</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 调度设置</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 区域设置</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<img src="${path}/img/common/齿轮.png" alt="加载中..." style="width: 17px;height: 16px;"/>
								<span>System Management</span>
								<small class="badge pull-right bg-green">∨</small>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 用户管理</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 组织结构管理</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 资源管理</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 角色管理</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 权限管理</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<img src="${path}/img/common/齿轮齿轮.png" alt="加载中..." style="width: 16px;height: 16px;"/>
								<span>Pick</span>
								<small class="badge pull-right bg-green">∨</small>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#" style="margin-left: 10px;">
										&gt;&gt;&nbsp;&nbsp;&nbsp; 受理
									</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 调度</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 包装</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 返货</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 签单</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 合作网络</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 异常</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<img src="${path}/img/common/齿轮齿轮.png" alt="加载中..." style="width: 16px;height: 16px;"/>
								<span>Transit</span>
								<small class="badge pull-right bg-green">∨</small>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 分拣</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 进出口</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 物流</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 异常</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<img src="${path}/img/common/齿轮齿轮.png" alt="加载中..." style="width: 16px;height: 16px;"/>
								<span>Routing</span>
								<small class="badge pull-right bg-green">∨</small>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 路由基础</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 路由分析</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 路由应用</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 产品配置</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#">
								<img src="${path}/img/common/人民币符号.png" alt="加载中..." style="width: 16px;height: 16px;"/>
								<span>Financial</span>
								<small class="badge pull-right bg-green">∨</small>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 统计与出纳</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 资金监控</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 成本管理</a>
								</li>
								<li>
									<a href="#" style="margin-left: 10px;">&gt;&gt;&nbsp;&nbsp;&nbsp; 异常调账</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">
								<img src="${path}/img/common/日志文件格式.png" alt="加载中..." style="width: 16px;height: 16px;"/>
								<span>System Log</span>
								<small class="badge pull-right bg-red">3</small>
							</a>
						</li>
						
					</ul>
				</section>
				<!-- /.sidebar -->
			</aside>

			<!-- Right side column. Contains the navbar and content of the page -->
			<aside class="right-side">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
					<ol class="breadcrumb">
						<li>
							<a href="#">
								<img src="${path}/img/common/房子.png" alt="加载中..." style="width: 14px;height: 12px;position: relative;top: -2px;" /> Home
							</a>
						</li>
						<li class="active">&gt;Dashboard</li>
					</ol>
				</section>

				<!-- Main content -->
				<section class="content">
					
					
					
					
					
					<h1>在这里写业务</h1>
					
					
					
					
					
					
					
					
				</section>
				<!-- /.content -->
			</aside>
			<!-- /.right-side -->
		</div>
		<!-- ./wrapper -->

	</body>

</html>