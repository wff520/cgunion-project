<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
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
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="../css/bootstrap.min.css" />
	<link rel="stylesheet"
	href="../css/common.css" />
<title>Insert title here</title>
</head>
<body>
<form action="qwqdqdq" method="post">
	<table class="table table-striped table-bordered ">
    <thead>
    <tr>
   <!--  <td> 定区ID</td> -->
     <td> 定区名</td>
     <!-- td> 负责人ID</td> -->
     <td> 负责人</td>
    <td> 是否可用</td>
     <td> 描述</td>
     <td> 操作</td>
    </tr>
    </thead>
    <tbody>
    
     
    <c:forEach items="${requestScope.list}" var="fa">
    <input name="fixed_area_id" value="${fa.fixed_area_id }" type="hidden" />
    <tr>
	 <%--  <td>${fa.fixed_area_id }</td> --%>
	   <td>${fa.fixed_area_name }</td>
	   <%--  <td>${fa.master_id }</td> --%>
	     <td>${fa.master_name }</td>
	      <td>${fa.userable=="0"?"Y":"N"}</td>
	       <td>${fa.description}</td>
	       <td>
	   <a class="btn btn-sm btn-primary"  href="toUpdateFixedArea?fixed_area_id=${fa.fixed_area_id}">编辑</a>
	   <a class="btn btn-sm btn-danger deleteBtn delete" href="fixedAreaes" id="${fa.fixed_area_id}" >删除</a> 
	
	  </td>
	  </tr>
	  
	  </c:forEach>
	 
	</tbody>
    </table>
 </form>
</body>
<script type="text/javascript">
  $(function(){
	  $(".delete").on("click",function(){
		  var id= $(this).attr("id");
		  $.ajax({
			  type: "DELETE",
			  async:false,
			  cache:false,
			  url: "fixedArea?fixed_area_id="+id,
			  success:function(data){
				  document.write(data);
			  }
		  })
	  })
  })
</script>
</html>