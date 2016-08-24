/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.OneCardPass;

/**
 * @author Administrator
 * @email zs@163.com
 * @description TODO
 * @date 2016年8月1日 上午10:40:40
 * @version v1.0
 */
public interface OneCardPassMapper {


	List<OneCardPass> ViewOneCardPass();

	OneCardPass findOneCardPassBySid(@Param("Sid") int studentId);

	int deleteOneCardPass(@Param("Sid") int studentId);

	int insertOneCardPass(OneCardPass OneCardPass);


	int updateOneCardPass(OneCardPass OneCardPass);
}
