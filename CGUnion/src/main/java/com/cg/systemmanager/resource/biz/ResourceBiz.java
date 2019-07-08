package com.cg.systemmanager.resource.biz;

import java.util.List;

import com.cg.systemmanager.resource.domain.Resource;

public interface ResourceBiz {

	/**
	 * 添加资源
	 * @param resource 参数1 资源对象
	 * @return 返回添加资源结果
	 */
	boolean addResource(Resource resource);
	/**
	 * 根据资源id删除资源
	 * @param resourceId 参数1 资源id
	 * @return 返回删除资源结果
	 */
	boolean deleteResourceByResourceId(String resourceId);
	/**
	 * 根据条件修改资源
	 * @param map 参数1 要修改的资源条件
	 * @return 返回修改资源的结果
	 */
	boolean updateResourceByCateria(Resource resource);
	/**
	 * 根据资源id查询资源信息
	 * @param resourceId 参数1 资源id
	 * @return 返回查询结果对象
	 */
	Resource findResourceByResourceId(String resourceId);
	/**
	 * 根据资源名查询资源信息
	 * @param resourceName 参数1 资源名
	 * @return 返回查询资源结果
	 */
	Resource findResourceByResourceName(String resourceName);
	/**
	 * 根据资源url查询资源信息
	 * @param resourceUrl 参数1 资源url
	 * @return 返回查询资源结果
	 */
	Resource findResourceByResourceUrl(String resourceUrl);
	/**
	 * 分页查询资源信息
	 * @param map 参数1 分页查询的条件，页码和页数
	 * @return 返回分页查询的结果集对象
	 */
	List<Resource> findPageResource(int pageIndex,int pageSize);
	/**
	 * 查询所有资源信息
	 * @return 返回查询的结果集对象
	 */
	List<Resource> findAllResource();
	/**
	 * 根据条件查询资源信息
	 * @param map 参数1 要查询的资源条件
	 * @return 返回条件查询的结果集对象
	 */
	List<Resource> findResourceByCateria(Resource resource);
}
