package com.cg.systemmanager.resource.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cg.systemmanager.resource.biz.ResourceBiz;
import com.cg.systemmanager.resource.domain.BootstrapResource;
import com.cg.systemmanager.resource.domain.Node;
import com.cg.systemmanager.resource.domain.Resource;
import com.cg.util.IDGenerator;

/**
 * 资源控制器
 * 
 * @author leung
 *
 */
@Controller
@RequestMapping("/resource")
public class ResourceController {
	// 关联资源业务层对象
	@Autowired
	private ResourceBiz resourceBiz;

	/**
	 * @return the resourceBiz
	 */
	public ResourceBiz getResourceBiz() {
		return resourceBiz;
	}

	/**
	 * @param resourceBiz
	 *            the resourceBiz to set
	 */
	public void setResourceBiz(ResourceBiz resourceBiz) {
		this.resourceBiz = resourceBiz;
	}

	/**
	 * 转发到资源页面
	 * 
	 * @param requestResource
	 *            参数1 携带的请求参数对象
	 * @return 返回资源管理页面
	 */
	@RequestMapping(value = "/resource", method = RequestMethod.GET)
	public String doResourcePage() {
		// 返回资源管理页面
		return "/systemmanager/resource/resource";
	}
	@RequestMapping(value = "/addResourcePage", method = RequestMethod.GET)
	public String doAddResourcePage(Map<String, Object> requestResource) {
		// 将实体资源对象作为请求参数放入请求域
		requestResource.put("resource", new Resource());
		// 返回资源管理页面
		return "/systemmanager/resource/addresource";
	}
	@RequestMapping(value = "/updateResourcePage", method = RequestMethod.GET)
	public String doUpdateResourcePage(String resourceId,Map<String, Object> requestResource) {
		requestResource.put("resourceId", resourceId);
		// 返回资源管理页面
		return "/systemmanager/resource/updateresource";
	}

	/**
	 * 返回主页面
	 * 
	 * @return 返回主页
	 */
	@RequestMapping("/index")
	public String doIndex() {
		return "/index";
	}
	
	/**
	 * 树形菜单
	 * @param resource
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/treeview", method = RequestMethod.POST)
	public List<Node> doFindAllTreeview(Resource resource) {
		List<Resource> resourceList = resourceBiz.findResourceByCateria(resource);
		List<Node> nodes = new ArrayList<Node>();// 把所有资源转换成树模型的节点集合，此容器用于保存所有节点
		for (Resource re : resourceList) {
			Node node = new Node();
			node.setHref(re.getResourceUrl());
			node.setNodeId(re.getResourceId());
			node.setPid(re.getParentResourceId());
			node.setText(re.getResourceName());
			nodes.add(node);// 添加到节点容器
		}
		Node tree = new Node();// 重要插件，创建一个树模型
		List<Node> nodeList = tree.createTree(nodes);// Node类里面包含了一个创建树的方法。这个方法就是通过节点的信息（nodes）来构建一颗多叉树manytree->mt。
		return nodeList;
	}
	

	/**
	 * 添加资源数据
	 * 
	 * @param resource
	 *            参数1 资源数据对象
	 * @param result
	 *            参数2 绑定结果对象
	 * @param requestMap参数3
	 *            绑定请求域参数对象
	 * @return 返回资源页面
	 */
	@RequestMapping(value = "/addResource", method = RequestMethod.POST)
	public String doAddResource(@Valid Resource resource, BindingResult result, Map<String, Object> requestMap) {
		// 判断绑定结果的错误数是否大于0，大于0则绑定添加失败信息并转发回原页面,否则进入else
		if (result.getErrorCount() > 0) {
			requestMap.put("msg", "资源数据添加失败！！！");
			return "/systemmanager/resource/addresource";
		} else {
			// 调用ID生成器生成资源id
			resource.setResourceId(IDGenerator.getId());
			// 调用资源业务逻辑对象的添加方法，并判断是否添加成功
			if (resourceBiz.addResource(resource)) {
				// 添加成功绑定成功数据并转发回原页面
				requestMap.put("addResult", "资源数据添加成功！！！");
				return "/systemmanager/resource/addresource";
			} else {
				// 添加失败绑定失败数据并转发回原页面
				requestMap.put("addResult", "资源数据添加失败！！！");
				return "/systemmanager/resource/addresource";
			}
		}
	}

	/**
	 * 根据资源id删除资源
	 * 
	 * @param resourceId
	 *            参数1 资源id
	 * @return 返回资源删除结果
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteResource", method = RequestMethod.DELETE)
	public String doDeleteResourceByResourceId(String resourceId) {
		if (resourceBiz.deleteResourceByResourceId(resourceId)) {
			return "ok";
		} else {
			return "fail";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/updateResource", method = RequestMethod.PUT)
	public String doUpdateResourceByCateria(String resourceName,Resource resource) {
		// 调用根据条件修改资源的业务方法并判断是否修改成功
		if (resourceBiz.updateResourceByCateria(resource)) {
			// 修改成功
			return "ok";
		} else {
			// 修改失败
			return "fail";
		}
	}

	@ResponseBody
	@RequestMapping(value = "/findResourceByResourceId", method = RequestMethod.GET)
	public List<Resource> doFindResourceById(String resourceId) {
		// 调用根据资源id查询资源的业务方法并获得结果对象
		Resource resource = resourceBiz.findResourceByResourceId(resourceId);
		// 判断结果对象
		if (resource != null) {
			List<Resource> resourceList = new ArrayList<Resource>();
			resourceList.add(resource);
			// 返回结果对象的json格式
			return resourceList;
		} else {
			// 返回空
			return null;
		}
	}

	/**
	 * 分页查询资源
	 * 
	 * @param pageIndex
	 *            参数1 页码
	 * @param pageSize
	 *            参数2 页数
	 * @return 返回分页查询资源的json格式数据
	 */
	@ResponseBody
	@RequestMapping(value = "/pageResource", method = RequestMethod.GET)
	public BootstrapResource doFindPageResource(int pageIndex, int pageSize) {
		System.out.println("pageResource");
		// 判断页码是否为空，为空则进行初始化
		if (pageIndex == 0) {
			pageIndex = 1;
		}
		// 判断页数是否为空，为空则进行初始化
		if (pageSize == 0) {
			pageSize = 10;
		}
		// 调用资源业务层的分页查询，并获得结果集
		List<Resource> resourceList = resourceBiz.findPageResource(pageIndex, pageSize);
		// 判断结果集对象
		if (resourceList != null) {
			// 返回结果集对象数据的json格式
			
			System.out.println("成功");
			return new BootstrapResource(resourceList.size(),resourceList);
		} else {
			System.out.println("失败");
			// 返回空
			return null;
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/allResource", method = RequestMethod.GET)
	public BootstrapResource doFindAllResource() {
		// 调用资源业务层的分页查询，并获得结果集
		List<Resource> resourceList = resourceBiz.findAllResource();
		// 判断结果集对象
		if (resourceList != null) {
			// 返回结果集对象数据的json格式
			return new BootstrapResource(resourceList.size(),resourceList);
		} else {
			// 返回空
			return null;
		}
	}

}
