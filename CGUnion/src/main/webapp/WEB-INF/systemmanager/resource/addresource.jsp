<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CGUnion | 后台管理系统</title>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />

</head>
<body>

	<a href="index">点我返回主页</a>
	<h3>添加资源</h3>
	<!-- 通过modelAttribute填充对象 -->
	<sf:form action="addResource" method="post"
		modelAttribute="resource">
						resourceName:<sf:input path="resourceName" />
		<br />
		<sf:errors path="resourceName" />
		<br />
						
						resourceNo:<sf:input path="resourceNo" />
		<br />
		<sf:errors path="resourceNo" />
		<br />
						resourceLevel:<sf:input path="resourceLevel" />
		<br />
		<sf:errors path="resourceLevel" />
		<br />
						resourceType:<sf:input path="resourceType" />
		<br />
		<sf:errors path="resourceType" />
		<br />
						resourceUrl:<sf:input path="resourceUrl" />
		<br />
		<sf:errors path="resourceUrl" />
		<br />
						useable:<sf:input path="useable" />
		<br />
		<sf:errors path="useable" />
		<br />
						resourceAbbr:<sf:input path="resourceAbbr" />
		<br />
		<sf:errors path="resourceAbbr" />
		<br />
						描述:<sf:input path="description" />
		<br />
		<sf:errors path="description" />
		<br />
		<input type="submit" value="提交" />
						${requestScope.addResult }
					</sf:form>


</body>
</html>