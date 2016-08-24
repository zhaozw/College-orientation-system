/**
 *@author Bruce 
 *@email 2594570106@qq.com
 *@decription TODO
 *@date
 *@version v1.0
 */
package cn.edu.scau.yx.dao;

import java.util.List;

import cn.edu.scau.yx.entity.Major;

/**
 *@author 赵文俊 
 *@email 1142265923@qq.com
 *@description TODO
 *@date 2016年8月22日下午9:28:07
 *@version v1.0
 */
public interface MajorMapper {
	
	List<Major> findByMajorName(String mjname);
	
	//Class findByClassName(String mjname);
	
	int deleteMajor(int mjid);
	
	int insertMajor(Major major);
	
	int updateMajor(Major major);
}
