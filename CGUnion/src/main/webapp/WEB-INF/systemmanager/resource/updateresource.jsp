<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CGUnion | 后台管理系统</title>
	<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
	
	<link href="${path }/css/resource.css" rel="stylesheet">
	
	<link rel="stylesheet" href="${path }/css/bootstrap/bootstrap-table.css" />
    <link rel="stylesheet" type="text/css" href="${path }/css/bootstrap/bootstrap.css"/>
        
	
    <script type="text/javascript" src="${path }/js/bootstrap/jquery.min.js" ></script>
    <!-- 导入resource.js -->
	<script src="${path }/js/updateresource.js" type="text/javascript"></script>
	
    <script type="text/javascript" src="${path }/js/bootstrap/bootstrap-table.js" ></script>
    <script type="text/javascript" src="${path }/js/bootstrap/bootstrap-table-zh-CN.js" ></script>
    
	
	
</head>
<body>
	
	
	
	<table id="table"></table>
	
		<input type="hidden" id="resource-id" name="resourceId" value="${requestScope.resourceId }">
		资源编号:<input type="text" name="resourceNo" id="resource-no" />
		资源名:<input type="text" name="resourceName" id="resource-name" />
		资源url:<input type="text" name="resourceUrl" id="resource-url" />
		资源类型:<input type="text" name="resourceType" id="resource-type" />
		资源等级:<input type="text" name="resourceLevel" id="resource-level" />
		资源缩写:<input type="text" name="resourceAbbr" id="resource-abbr" />
		是否可用:<input type="text" name="useable" id="useable" />
		描述:<input type="text" name="description" id="description" />
		
		<input id="update-re" type="button" class="btn" value="确定修改" />
		<a href="index">点我返回主页</a>
	
</body>
</html>