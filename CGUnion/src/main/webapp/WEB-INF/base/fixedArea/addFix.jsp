<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta name="description"
	content="Example of using default thumbnails from w3cschool.cc">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<script src="../js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="../js/bootstrap.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="../css/bootstrap.min.css" />
	<link rel="stylesheet"
	href="../css/common.css" />
<title>邓博物流</title>
</head>
<body>
  <div class="container addHTML">
		<%@include file="head.html"%>
		<div class="row content">
			<!-- 左侧导航 -->
			<%@include file="bar.html"%>
			
			
			<div class="col-lg-10">
				<div class="row content-head">

					<div class="row fix-head">
						<div class="title">
							<h2>定区管理</h2>
						</div>

					</div>
					<div class="row">
						<div class="col-lg-2"></div>
						<div >
							<h2>添加定区</h2>
						</div>
					</div>
					<div class="row addContent">
					<s:form action="fixedArea" method="post" modelAttribute="fixedArea">
					  <div class="form-group">
							<label class="addName">定区名</label>
							<s:input type="text" class="form-control"  path="fixed_area_name"/>
							  
					</div>
					<div class="form-group">
							<label class="addName">负责人</label>
							<s:input class="form-control"  path="master_name"/>
					</div>
					<div class="form-group">
							<label class="addName">是否可用</label>
							<s:input class="form-control"  path="userable"/>
					</div>
					<div class="form-group">
							<label class="addName">描述</label>
							<s:input class="form-control"  path="description"/>
					</div>
					<div class="form-group">
							<button class="btn btn-pramary" type="submit">提交</button>
					</div>
					</s:form>
					
					</div>
					

				</div>
			
			
			</div>

		</div>
   </div>
</body>
</html>