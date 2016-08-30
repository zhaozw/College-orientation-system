/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.OneCardPass;

public interface PayTheFeesMapper {

   int updatePayTheFeesStatusByStuId(int stuId);
	
}
