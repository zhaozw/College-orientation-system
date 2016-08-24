/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.dao;

import cn.edu.scau.yx.entity.PowerInfo;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description TODO
 *@date 2016年8月17日下午3:08:58
 *@version v1.0
 */

public interface PowerInfoMapper {

	PowerInfo findByPowerId (int powerId);
	
	int reg (PowerInfo powerInfo);
}
