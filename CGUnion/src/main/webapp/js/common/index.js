/**
 * 
 */

$(function() {

	$("#add-resource").click(function() {
		$("#page").load("addResourcePage");
	});
	$("#query-resource").click(function() {
		$("#page").load("resource");
	});
	
	
	$.ajax({
		type : "POST",
		url : "treeview",
		dataType : "json",
		success : function(result) {

			$("#tree").treeview({
				data : result,
				enableLinks : true,
				levels : 1,
				selectedIcon : "glyphicon glyphicon-home",
				
			});
			// 默认初始化选择0节点
			$("#tree").treeview('selectNode', [ 0, {
				silent : true
			} ]);
			
			
		},

		error : function() {
			alert("菜单加载失败！")
		}
	});
	
	
})