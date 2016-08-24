package cn.edu.scau.yx.service.interfaces;

import java.util.List;

import cn.edu.scau.yx.entity.Major;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月23日下午3:37:20
 *@version v1.0
 */
public interface MajorService {
	/**
	 * 根据输入的专业名查找专业
	 * @param mjname 要查找的专业名
	 * @return 专业实体
	 */
	public List<Major> findByMajorName(String mjname);
	
	/**
	 * 根据输入的专业信息添加到数据库
	 * @param major
	 * @return Boolean
	 */
	public Boolean insertMajor(Major major);
	
	/**
	 * 根据提交的专业信息修改到数据库
	 * @param major
	 * @return Boolean
	 */
	public Boolean updateMajor(Major major);
	
	/**
	 * 根据专业id删除专业信息
	 * @param mjid
	 * @return Boolean
	 */
	public Boolean deleteMajor(int mjid);
}
