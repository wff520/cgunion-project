package com.cg.util;

import java.util.Calendar;
import java.util.Random;

/**
 * 订单号生成工具类
 * @author leung
 *
 */
public class NodeGenerator {

		/**
		 * 生成订单号
		 * @return 返回生成的订单号
		 */
		public static String getNo(){
			Random random = new Random();
			String sRandom = random.nextInt(10000)+"";
			String orderNo = (Calendar.getInstance().get(Calendar.YEAR)+10)
					+ "" + (Calendar.getInstance().get(Calendar.MONTH)+10)
					+ "" + (Calendar.getInstance().get(Calendar.DATE)+10)
					+ "" + (Calendar.getInstance().get(Calendar.HOUR_OF_DAY)+10)
					+ "" + (Calendar.getInstance().get(Calendar.MINUTE)+10)
					+ "" + (Calendar.getInstance().get(Calendar.SECOND)+10)
					+ "" +sRandom;
					
			return orderNo;
		}
		
		public static void main(String[] args) {
			System.out.println(getNo());
			System.out.println(getNo().length());
		}
		
		
}
