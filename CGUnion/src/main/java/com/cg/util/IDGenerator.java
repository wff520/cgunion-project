package com.cg.util;

import java.util.UUID;
/**
 * ID生成器
 * @author leung
 *
 */
public class IDGenerator {
	public static void main(String[] args) {
		//打印id
		System.out.println(getId());
	}
	/**
	 * 获得id
	 * @return 返回生成的id
	 */
	public static String getId(){
		return UUID.randomUUID().toString()
				.replace("-", "")
				.substring(0,32)
				.toUpperCase();
	}
	
}
