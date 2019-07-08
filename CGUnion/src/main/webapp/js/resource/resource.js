/**
 * 
 */

$(function(){
	//初始化数据
	initTable();
	//删除数据
	deleteResource();
	
	$(".btn-secondary:first").append("<i class='fa fa-refresh'></i>");
	//修改资源数据
	updateResource();
	
	
	
});
//修改资源数据
var updateResource = function(){
	$("#sava-edit-btn").click(function(){
		$.ajax({
			type:"POST",
			url:"updateResource",
			async:true,
			data:{
				_method:"PUT",
				resourceId:$("#resourceId").val(),
		    	resourceName:$("#resourceName").val(),
		    	resourceNo: $("#resourceNo").val(),
		        resourceAbbr:$("#resourceAbbr").val(),
		        resourceType:$("#resourceType").val(),
		        resourceLevel:$("#resourceLevel").val(),
		        resourceUrl:$("#resourceUrl").val(),
		        useable:$("#useable").val(),
		        description:$("#description").val()
			},
			success:function(data){
				if(data=="ok"){
					alert("修改成功！");
					$("#myModal").modal("hide");
					location.reload();
				}else{
					alert("修改失败！");
				}
			},
			error:function(){
				alert("修改出错！");
			}
		});
		
	});
}


// 点击删除资源
var deleteResource = function(){
	$('#table').on('click','.delete-resource',function(){
		if(confirm("确定要删除此条数据吗？")){
		 	$.ajax({
		 		type:"post",
		 		url:"deleteResource",
		 		async:true,
		 		data:{
		 			_method:"delete",
		 			resourceId:$(this).attr("name")
		 		},
		 		success:function(data){
		 			alert("删除成功！");
		 			location.reload();
		 		},
		 		error:function(){
		 			alert("删除失败！");	
		 		}
		 	});
	 	}		
	 		
	});
}

// 初始化资源数据
var initTable = function(){
	$('#table').bootstrapTable({
	   url: "allResource",                 // 请求后台的URL（*）
	   method: 'GET',                      // 请求方式（*）
	   toolbar: '#toolbar', 			   // 工具按钮用哪个容器
	   striped: true,                      // 是否显示行间隔色
	   cache: false,                       // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
	   pagination: true,                   // 是否显示分页（*）
	   sortable: true,                     // 是否启用排序
	   sortOrder: "asc",                   // 排序方式
	   sidePagination: "client",           // 分页方式：client客户端分页，server服务端分页（*）
	   pageNumber: 1,                      // 初始化加载第一页，默认第一页,并记录
	   pageSize: 5,                       // 每页的记录行数（*）
	   pageList: [5,10, 25],        // 可供选择的每页的行数（*）
	   search: true,                       // 是否显示表格搜索
	   //searchOnEnterKey:true,				//按回车才搜索
	   strictSearch: false,
	   //searchText:"在此输入进行搜索",
	   showColumns: true,                  // 是否显示所有的列（选择显示的列）
	   showRefresh: true,                  // 是否显示刷新按钮
	   minimumCountColumns: 2,             // 最少允许的列数
	   clickToSelect: true,                // 是否启用点击选中行
	   // height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	   uniqueId: "resourceId",             // 每一行的唯一标识，一般为主键列
	   showToggle: true,                   // 是否显示详细视图和列表视图的切换按钮
	   cardView: false,                    // 是否显示详细视图
	   detailView: false,                  // 是否显示父子表
	   paginationPreText:"上一页",
	   paginationNextText:"下一页",
//	   // 得到查询的参数
//	   queryParams : function (params) {
//	       // 这里的键的名字和控制器的变量名必须一致，这边改动，控制器也需要改成一样的
//	       var temp = {   
//	           pageSize: params.limit,      // 页面大小
//	           pageIndex: (params.offset / params.limit) + 1,   // 页码
//	           //sortName: params.resourceNo,     // 排序列名
//	           //sortOrder: params.order   // 排位命令（desc，asc）
//	       };
//	       return temp;
//	   },
	   columns: [{
	       checkbox: true,  
	       visible: true                  // 是否显示复选框
	   }, {
	       field: 'resourceNo',
	       title: '资源编号',
	       sortable: true
	   }, {
	       field: 'resourceName',
	       title: '资源名',
	       sortable: true
	   }, {
	       field: 'resourceAbbr',
	       title: '资源缩写',
	       sortable: true
	   }, {
	       field: 'resourceType',
	       title: '资源类型',
	       sortable: true,
	   },{
	       field: 'resourceLevel',
	       title: '资源级别',
	       sortable: true
	   }, {
	       field: 'resourceUrl',
	       title: '资源路径',
	       sortable: true
	   }, {
	       field: 'description',
	       title: '资源描述',
	       sortable: true
	   }, {
	       field:'resourceId',
	       title: '操作',
	       width: 100,
	       align: 'center',
	       valign: 'middle',
	       events:operateEvents,
	       formatter: actionFormatter,
	       
	   }, ],
	   onLoadSuccess: function () {
	   },
	   onLoadError: function () {
	  	 alert("数据加载失败！");
	   },
	   
	});
    
	
	function  actionFormatter(value){
		return [
			 '<a class="btn active "  id="btn_edit" title="修改"><span class="glyphicon glyphicon-pencil"></span></a>',
			 '<a class="btn active delete-resource" title="删除" name="'+value+'"><span class="glyphicon glyphicon-remove"></span></a>'
		].join('');
	}
}


window.operateEvents = {
		 'click #btn_edit': function (e, value, row, index) {
	    	 $("#resourceId").val(row.resourceId)
	    	 $("#resourceName").val(row.resourceName)
	    	 $("#resourceNo").val(row.resourceNo)
	         $("#resourceAbbr").val(row.resourceAbbr)
	         $("#resourceType").val(row.resourceType)
	         $("#resourceLevel").val(row.resourceLevel)
	         $("#resourceUrl").val(row.resourceUrl)
	         $("#useable").val(row.useable)
	         $("#description").val(row.description)
	         $("#myModal").modal();

	    },
}