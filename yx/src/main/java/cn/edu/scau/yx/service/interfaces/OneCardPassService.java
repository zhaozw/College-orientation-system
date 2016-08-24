/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.service.interfaces;

import java.util.List;

import cn.edu.scau.yx.entity.OneCardPass;

/**
 * @author Administrator
 * @email zs@163.com
 * @description TODO
 * @date 2016年8月1日 上午11:27:01
 * @version v1.0
 */
public interface OneCardPassService {

	/**
	 * 根据用户信息查询weibo列表
	 * 
	 * @param account
	 *            用户信息
	 * @param current
	 *            当前第几页
	 * @return Page 完整分页信息
	 */
	List<OneCardPass> OneCardPassList();

	/**
	 * 
	 * @param aid
	 * @param wid
	 * @return
	 */

	OneCardPass findOneCardPassBySid(int studentId);
	
	Boolean addOneCardPass(OneCardPass oneCardPass);
	
	
	Boolean updateOneCardPass(OneCardPass oneCardPass);
	

	Boolean deleteOneCardPass(int cardId);


}
