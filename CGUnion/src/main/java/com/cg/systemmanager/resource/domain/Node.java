package com.cg.systemmanager.resource.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Node implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5805055138870807169L;
	/**
	 * 
	 */
	private String nodeId; // 树的节点Id，区别于数据库中保存的数据Id。
	private String pid;
	private String text; // 节点名称
	private String icon;
	private String href; // 点击节点触发的链接
	private List<Node> nodes = new ArrayList<Node>(); // 子节点，可以用递归的方法读取

	/**
	 * 生成一颗多叉树，根节点为root
	 * 
	 * @param Nodes
	 *            生成多叉树的节点集合
	 * @return root
	 */
	public List<Node> createTree(List<Node> nodes) {
		if (nodes == null || nodes.size() < 0)
			return null;
		List<Node> nodeList = new ArrayList<>();// 根节点自定义，但是要和pid对应好
		// 将所有节点添加到多叉树中
		for (Node node : nodes) {
			if (node.getPid()==null) {// 根节点自定义，但是要和pid对应好
				// 向根添加一个节点
				nodeList.add(node);
			} else {
				addChild(nodes,nodeList, node);
			}
		}
		return nodeList;
	}

	/**
	 * 向指定多叉树节点添加子节点
	 * 
	 * @param Node
	 *            多叉树节点
	 * @param child
	 *            节点
	 */
	public void addChild(List<Node> nodes,List<Node> nodeList, Node child) {
		for (Node item : nodes) {
			if (item.getNodeId().equals(child.getPid())) {
				// 找到对应的父亲
				child.setIcon("glyphicon glyphicon-minus");
				child.setNodes(null);
				item.getNodes().add(child);
				break;
			} else {
				if (item.getNodes() != null && item.getNodes().size() > 0) {
					addChild(item.getNodes(),nodeList,child);
				}
			}
		}
	}

	public Node() {
	}

	public Node(String nodeId, String pid) {
		this.nodeId = nodeId;
		this.pid = pid;
	}

	public Node(String nodeId, String pid, String text, String icon, String href, List<Node> nodes) {
		super();
		this.nodeId = nodeId;
		this.pid = pid;
		this.text = text;
		this.icon = icon;
		this.href = href;
		this.nodes = nodes;
	}

	/**
	 * @return the nodeId
	 */
	public String getNodeId() {
		return nodeId;
	}

	/**
	 * @param nodeId
	 *            the nodeId to set
	 */
	public void setNodeId(String nodeId) {
		this.nodeId = nodeId;
	}

	/**
	 * @return the pid
	 */
	public String getPid() {
		return pid;
	}

	/**
	 * @param pid
	 *            the pid to set
	 */
	public void setPid(String pid) {
		this.pid = pid;
	}

	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param text
	 *            the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}

	/**
	 * @return the icon
	 */
	public String getIcon() {
		return icon;
	}

	/**
	 * @param icon
	 *            the icon to set
	 */
	public void setIcon(String icon) {
		this.icon = icon;
	}

	/**
	 * @return the href
	 */
	public String getHref() {
		return href;
	}

	/**
	 * @param href
	 *            the href to set
	 */
	public void setHref(String href) {
		this.href = href;
	}

	/**
	 * @return the nodes
	 */
	public List<Node> getNodes() {
		return nodes;
	}

	/**
	 * @param nodes
	 *            the nodes to set
	 */
	public void setNodes(List<Node> nodes) {
		this.nodes = nodes;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((href == null) ? 0 : href.hashCode());
		result = prime * result + ((icon == null) ? 0 : icon.hashCode());
		result = prime * result + ((nodeId == null) ? 0 : nodeId.hashCode());
		result = prime * result + ((nodes == null) ? 0 : nodes.hashCode());
		result = prime * result + ((pid == null) ? 0 : pid.hashCode());
		result = prime * result + ((text == null) ? 0 : text.hashCode());
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Node other = (Node) obj;
		if (href == null) {
			if (other.href != null)
				return false;
		} else if (!href.equals(other.href))
			return false;
		if (icon == null) {
			if (other.icon != null)
				return false;
		} else if (!icon.equals(other.icon))
			return false;
		if (nodeId == null) {
			if (other.nodeId != null)
				return false;
		} else if (!nodeId.equals(other.nodeId))
			return false;
		if (nodes == null) {
			if (other.nodes != null)
				return false;
		} else if (!nodes.equals(other.nodes))
			return false;
		if (pid == null) {
			if (other.pid != null)
				return false;
		} else if (!pid.equals(other.pid))
			return false;
		if (text == null) {
			if (other.text != null)
				return false;
		} else if (!text.equals(other.text))
			return false;
		return true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Node [nodeId=" + nodeId + ", pid=" + pid + ", text=" + text + ", icon=" + icon + ", href=" + href
				+ ", nodes=" + nodes + "]";
	}

}
