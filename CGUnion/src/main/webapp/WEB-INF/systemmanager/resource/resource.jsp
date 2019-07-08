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

<!-- font Awesome -->
<link href="${path}/css/font-awesome-4.7.0/css/font-awesome.css"
	rel="stylesheet" type="text/css">


<script src="${path}/js/common/jquery.min.js"></script>

<!-- Bootstrap -->
<script src="${path}/js/common/bootstrap.js" type="text/javascript"></script>
<script src="${path}/js/common/bootstrap-table.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${path }/js/common/bootstrap-table-zh-CN.js"></script>

<script type="text/javascript" src="${path }/js/resource/resource.js"></script>

</head>

<body>
	<table id="table"></table>
	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel" id="myModal">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title btn btn-danger" id="myModalLabel">修改资源</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<input type="hidden" name="resourceId" id="resourceId">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">资源名</label>
							<div class="col-sm-9">
								<input type="text" name="resourceName" class="form-control"
									id="resourceName">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">资源编号</label>
							<div class="col-sm-9">
								<input type="text" name="resourceNo" class="form-control"
									id="resourceNo">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">资源名缩写</label>
							<div class="col-sm-9">
								<input type="text" name="resourceAbbr" class="form-control"
									id="resourceAbbr">
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-2 control-label">资源类型</label>
							<div class="col-sm-9">
								<input type="text" name="resourceType" class="form-control"
									id="resourceType">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">资源等级</label>
							<div class="col-sm-9">
								<input type="text" name="resourceLevel" class="form-control"
									id="resourceLevel">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">资源url</label>
							<div class="col-sm-9">
								<input type="text" name="resourceUrl" class="form-control"
									id="resourceUrl">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">描述</label>
							<div class="col-sm-9">
								<input type="text" name="description" class="form-control"
									id="description">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						关闭 &nbsp;<i class="fa fa-times-circle"></i>
					</button>
					<button type="button" class="btn btn-primary" id="sava-edit-btn">
						保存 &nbsp;<i class="fa fa-file-text-o"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>

</html>