<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta name="description"
	content="Example of using default thumbnails from w3cschool.cc">
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" href="${ path}/css/common/bootstrap.min.css" />
<script src="${ path}/js/common/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="${ path}/js/common/bootstrap.min.js" type="text/javascript"></script>

<link rel="shortcut icon" href="${ path}/img/bitbug_favicon.ico" type="image/x-icon" />
<!--制作的图标，使用href关联，仅仅需要更改href的内容  -->
<title>CGUnion</title>
<style>
* {
	text-align: center;
	line-height: 100%;
}

.row {
	margin-bottom: 10px;
	margin-left: 0px;
	width: 1140px;
}

.title-context {
	font-size: 20px;
	background: #A6E1EC;
}

.title .tooltip {
	height: 80px;
}

.title-text {
	font-size: large;
	line-height: 40px;
}

.btn {
	background: none;
	height: 100%;
	border: none;
}

.btn-toolbar {
	background-color: #46B8DA;
}

.add {
	text-align: left;
	height: 50px;
	line-height: 50px;
}

.addIcon {
	font-size: large;
}

.glyphicon {
	font-size: large;
	color: yellowgreen;
}

.add-text {
	font-size: large;
}

.label {
	background: none;
	font-size: larger;
	color: #000000;
}

.search-query {
	height: 36px;
	border: none;
	float: left;
	margin-left: 10px;
	font-size: large;
	box-shadow: inset 0 0px 0px rgba(0, 0, 0, .075);
}

.input-group-addon {
	width: 200px;
	height: 36px;
}

.search {
	height: 36px;
	border-radius: 6px;
	margin-left: 20px;
	float: left;
	background-color: #B92C28;
	display: inline;
	width: 40px;
	height: 36px;
	text-align: center;
}

.search-row {
	float: left;
}

.choose {
	float: left;
	margin-left: 38%;
}

.page-input {
	width: 50px;
	height: 30px;
}

.fixManager {
	display: block;
	float: left;
	margin-left: 10px;
	font-size: 18px;
	color: #FFFFFF;
	height: 50px;
	line-height: 40px;
	border-radius: 6px;
}

.form-control {
	width: auto;
	float: left;
}

.fix-name {
	float: left;
}

#addAttr {
	width: 200px;
}

#addText {
	width: 50px;
}
.modal-body {
	height: 150px;
}

.input-group {
	margin-left: 25%;
}

.modal-footer {
	padding-left: 40%;
}

.modal-btn {
	background-color: #5cb85c;
}

.relation-content {
	margin-left: 50px;
	float: left;
}

.allcheckTd {
	width: 70px;
}

.allcheckDiv {
	
}

.allCheck {
	display: block;
	float: left;
	margin-right: 10px;
}

.panel-group .panel+.panel {
	margin-top: 0px;
}

.checkInput {
	padding-left: 28px !important;
}

.fixDiv {
	height: 300px;
}

.addPartitionContent {
	width: 750px;
	border: 1px solid #000000;
}

.list-group-item {
	border: 0px;
}

.checkbox {
	width: 14px;
	height: 14px;
}

.fixAndPartition {
	width: 800px;
	height: 600px;
}

.fixAndPartitionBody {
	height: 300px;
}

#content-relation {
	width: 1108px;
}

body {
	overflow-y: scroll;
	padding-right: 0px;
}
.modal-backdrop{ background:none; }

</style>
<script type="text/javascript">
$(function(){
	 
})
</script>
</head>
<!-- /* $("#addFixedBtn").click(function(){
		
	$("#addFixed").modal("show");
	}) */	搜索 -->

<body>
	<div class="container panel panel-success">
		<!--
            	第一行：定区标题
            -->
		<div class="row title-context  panel-heading">
			<div class="col-md-1 title">
				<span class="label label-danger title-text">定区管理</span>
			</div>
		</div>
		<!--
            	第二行：设置管理栏
            -->
		<div class="row  btn-toolbar panel-body">
			<!--左边的添加删除修改按钮  -->
			<div class="col-md-4 add">
				<button class=" btn btn-danger addBtn" id="addFixedBtn"  type="button" data-toggle="modal"
					data-target="#addFixed" >
					<span class="glyphicon glyphicon-plus-sign addIcon"></span> 
					<span class="add-text ">添加</span>
				</button>
				<!-- 模态框  	添加模态框 start  -->
				<div class="modal fade in "  role="dialog"  id="addFixed" data-backdrop="static" aria-labelledby="modealTitle" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title left" id="modalTitle">添加定区</h4>
							</div>
							<div class="modal-body">
								<form class="form-group">
									<div class="form-group center-block">
										<div class="row input-group  ">
											<span class="input-group-addon" id="addText">定区名:</span> <input
												type="text" id="addAttr" class="form-control "
												placeholder="请输入定区名" />
										</div>
										<div class="input-group row">
											<span class="input-group-addon " id="addText">责任人:</span> <select
												class="form-control addName" id="addAttr">
												<option>12</option>
												<option>12</option>
												<option>12</option>
												<option>12</option>
											</select>
										</div>

									</div>

								</form>
							</div>
							<div class="modal-footer">
								<button class="btn btn-success modal-btn" type="submit"
									data-dismiss="modal" id="ctlHideBtn">提交</button>
								<button class="btn btn-success modal-btn" type="reset"
									data-dismiss="modal" id="ctlHideBtn">关闭窗口</button>

							</div>
						</div>
					</div>

				</div>
				<!--   	添加模态框 end  -->
				<button class=" btn btn-danger addBtn" data-toggle="modal"
					data-target="#addFixed">
					<span class="glyphicon glyphicon-edit"></span> <span
						class="add-text">修改</span>
				</button>
				<!--
								修改
                            -->
				<button class="btn btn-danger addBtn" data-toggle="modal"
					data-target="#addFixed">
					<span class="glyphicon glyphicon-remove-sign"></span> <span
						class="add-text">删除</span>
				</button>
			</div>
			<!--右边的定区关联内容按钮-->
			<div class="col-md-7">
				<button class="btn btn-primary fixManager" title="请选择其中一个定区"
					data-placement="auto" data-toggle="modal" data-backdrop="false"
					data-keyboard="false" data-target="#partition">定区的分区管理</button>

				<!-- 定区的分区管理  start-->
				<div class="modal  fade  in" id="partition" data-backdrop="static"
					aria-labelledby="modealTitle" tabindex="-1">
					<div class="modal-dialog fixAndPartition">
						<div class="modal-content">

							<div class="modal-header">
								<button class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title" id="modalTitle">定区的分区管理</h4>
							</div>

							<div class="modal-body  container fixAndPartitionBody">
								<div class="row addPartitionContent">

									<div class="addPartition col-md-4" data-spy="scroll"
										style="height: 200px; overflow: auto;">
										<div class="list-group nav navbar-nav fixDiv ">
											<a class="list-group-item ">
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
												<h4 class="list-group-item-danger ">哈哈</h4>
											</a>
										</div>
									</div>

									<div class="col-md-4 ">
										<button>添加</button>
										<button>删除</button>
										<button>全部删除</button>
									</div>
									<div class="col-md-4 ">
										<ul class="list-group ">
											<li class="list-group-item list-group-item-danger active ">首页<span
												class="badge ">12</span></li>
											<li class="list-group-item list-group-item-info ">首页<span
												class="badge ">12</span></li>
											<li class="list-group-item list-group-item-success "><a
												href="# ">首页</a></li>
											<li class="list-group-item list-group-item-warning "><a
												href="# ">首页</a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="modal-footer ">
								<button class="btn btn-default " data-dismiss="modal "
									id="ctlHideBtn ">关闭窗口</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 定区的分区管理 动态模块 end-->

				<button class="btn btn-primary fixManager" title="请选择其中一个定区 "
					data-toggle="tooltip " data-placement="auto ">定区的取派员管理</button>
				<button class="btn btn-primary fixManager" title="请选择其中一个定区 "
					data-toggle="tooltip " data-placement="auto ">定区的客户管理</button>
			</div>
		</div>

		<!--
            	第三行：搜索栏
            -->
		<div class="row panel panel-body ">
			<form class="form-group ">
				<div class="search-row ">
					<label class="label label-danger ">定区名:</label> <input
						class="input-medium input-group-addon " /> <label
						class="label label-danger ">负责人:</label> <input
						class=" input-medium input-group-addon " />
				</div>
				<button
					class="btn btn-danger form-control glyphicon glyphicon-search search-query "
					type="submit "></button>
			</form>
		</div>

		<!--
            	第四行：定区内容栏
            -->
		<div class="row panel panel-body ">
			<table class="table table-bordered ">
				<thead>
					<tr class="active ">
						<td class="allcheckTd ">
							<div class="allcheckDiv ">
								<span class="allCheck ">全选</span> <input type="checkbox "
									class="checkbox " />
							</div>

						</td>
						<td class="tab-content ">定区名</td>
						<td class="tab-content ">负责人</td>

					</tr>
				</thead>

				<tbody>
				<c:forEach var="fix" items="${requestScope.list}">
					<tr class="success ">
						<td class="checkInput "><input type="checkbox"
							class="checkbox" /></td>
						<td href="#content-relation" data-toggle="collapse">${fix.fixed_area_name}</td>
						<td class="tab-content " href="#content-relation "
							data-toggle="collapse">${fix.master_name }</td>
					</tr>
				</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="3 ">
							<ul class="pagination choose ">
								<li><a href="# ">&laquo;</a></li>
								<li class="active "><a href="# ">1</a></li>
								<li><a href="# ">2</a></li>
								<li><a href="# ">3</a></li>
								<li><a href="# ">4</a></li>
								<li><a href="# ">5</a></li>
								<li class="disabled "><a href="# ">&raquo;</a></li>
							</ul>
							<ul class="pagination jump ">

								<li class="page ">第<input class="input-medium page-input " />页
								</li>
								<li class="page "></li>
								<li class="page "><a class="btn btn-success ">跳转</a></li>
							</ul>
						</td>
					</tr>
				</tfoot>

			</table>
		</div>
		<!--
             	第五行：定区的关联内容
             -->
		<div class="row panel panel-footer   ">
			<div id="content-relation" class="row panel-collapse collapse"
				data-parent="#news">
				<div class=" panel panel-group ">
					<div class="panel relation-content col-md-3 ">
						<div class="panel panel-heading ">关联分区</div>
						<div class="panel panel-body ">
							<h5>www.yootk.COM</h5>
						</div>
					</div>
					<div class="panel relation-content col-md-3 ">
						<div class="panel panel-heading ">关联取派员</div>
						<div class="panel panel-body ">
							<h5>www.yootk.COM</h5>
						</div>
					</div>
					<div class="panel relation-content col-md-3 ">
						<div class="panel panel-heading ">关联客户</div>
						<div class="panel panel-body ">
							<h5>www.yootk.COM</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>