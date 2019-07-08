package com.cg.systemmanager.resource.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.systemmanager.resource.biz.ResourceBiz;
import com.cg.systemmanager.resource.dao.ResourceDao;
import com.cg.systemmanager.resource.domain.Resource;

@Service
public class ResourceBizImpl implements ResourceBiz {
	/**
	 * 关联dao层资源对象
	 */
	@Autowired
	private ResourceDao resourceDao;

	/**
	 * @return the resourceDao
	 */
	public ResourceDao getResourceDao() {
		return resourceDao;
	}

	/**
	 * @param resourceDao
	 *            the resourceDao to set
	 */
	public void setResourceDao(ResourceDao resourceDao) {
		this.resourceDao = resourceDao;
	}

	public boolean addResource(Resource resource) {
		System.out.println("addResource");
		// 判断添加结果如果大于0返回true,否则返回false
		return resourceDao.addResource(resource) > 0 ? true : false;
	}

	public boolean deleteResourceByResourceId(String resourceId) {
		
		//resourceDao.findResourceByResourceUrl(resourceUrl)
		// 判断删除结果如果大于0返回true,否则返回false
		return resourceDao.deleteResourceByResourceId(resourceId) > 0 ? true : false;
	}

	public boolean updateResourceByCateria(Resource resource) {
		// 判断修改结果如果大于0返回true,否则返回false
		return resourceDao.updateResourceByCateria(resource) > 0 ? true : false;
	}

	public Resource findResourceByResourceId(String resourceId) {
		// 获得根据资源id查询的结果对象
		Resource resource = resourceDao.findResourceByResourceId(resourceId);
		// 判断不为空返回结果对象，否则返回null
		return resource != null ? resource : null;
	}

	public Resource findResourceByResourceName(String resourceName) {
		// 获得根据资源名查询的结果对象
		Resource resource = resourceDao.findResourceByResourceName(resourceName);
		// 判断不为空返回结果对象，否则返回null
		return resource != null ? resource : null;
	}

	public Resource findResourceByResourceUrl(String resourceUrl) {
		// 获得根据资源url查询的结果对象
		Resource resource = resourceDao.findResourceByResourceUrl(resourceUrl);
		// 判断不为空返回结果对象，否则返回null
		return resource != null ? resource : null;
	}

	public List<Resource> findPageResource(int index,int size) {
		//根据MySQL数据库的分页查询规则将分页码和分页数做相关运算
		int pageIndex = (index-1)*size;
		int pageSize = index*size;
		//创建HashMap对象，将参数注入
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("pageIndex", pageIndex);
		map.put("pageSize",pageSize);
		// 获得分页查询资源的结果集对象
		List<Resource> resourceList = resourceDao.findPageResource(map);
		// 判断返回结果集不为空返回此结果集，否则返回null
		return resourceList != null ? resourceList : null;
	}
	
	public List<Resource> findAllResource() {
		List<Resource> resourceList = resourceDao.findAllResource();
		// 判断返回结果集不为空返回此结果集，否则返回null
		return resourceList != null ? resourceList : null;
	}

	public List<Resource> findResourceByCateria(Resource resource) {
		
		// 获得根据条件查询的资源结果集对象
		List<Resource> resourceList = resourceDao.findResourceByCateria(resource);
		// 判断返回结果集对象不为空返回此结果集，否则返回null
		return resourceList != null ? resourceList : null;
	}

}
