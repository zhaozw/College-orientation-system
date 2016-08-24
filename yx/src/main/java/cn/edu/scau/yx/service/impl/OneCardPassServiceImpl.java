/**
 * 
 * Copyright 2016 hwadee.com Co.,Ltd. All Rights Reserved.
 * 
 */
package cn.edu.scau.yx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.scau.yx.dao.OneCardPassMapper;
import cn.edu.scau.yx.entity.OneCardPass;
import cn.edu.scau.yx.service.interfaces.OneCardPassService;


/**
 * @author Administrator
 * @email zs@163.com
 * @description TODO
 * @date 2016年8月1日 上午11:27:28
 * @version v1.0
 */
@Service
public class OneCardPassServiceImpl implements OneCardPassService {

	@Autowired
	private OneCardPassMapper oneCardPassMapper;
	
	public List<OneCardPass> OneCardPassList() {
		
		List<OneCardPass> list = oneCardPassMapper.ViewOneCardPass();
		
		return list;
	}

	public OneCardPass findOneCardPassBySid(int studentId) {
		
		OneCardPass result = oneCardPassMapper.findOneCardPassBySid(studentId);
		
		return result;
	}
	
	/* (non-Javadoc)
	 * @see cn.edu.scau.weibo.service.interfaces.WeiboService#send(cn.edu.scau.weibo.entity.Weibo)
	 */
	@Transactional
	public Boolean addOneCardPass(OneCardPass oneCardPass) {
		
		int count = oneCardPassMapper.insertOneCardPass(oneCardPass);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		
		return true;
	}

	@Transactional
	public Boolean updateOneCardPass(OneCardPass oneCardPass) {
		
		int count = oneCardPassMapper.updateOneCardPass(oneCardPass);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		
		return true;
	}
	
	@Transactional
	public Boolean deleteOneCardPass(int oneCardPassId) {
		
		int count = oneCardPassMapper.deleteOneCardPass(oneCardPassId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		
		return true;
	}
}
