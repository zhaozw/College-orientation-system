package cn.edu.scau.yx.service.interfaces;

import java.util.List;

import cn.edu.scau.yx.entity.Problems;


public interface ProblemsService {

	/**
	 * 删除一条记录
	 * @param problemsId
	 * @return
	 */
	int delById(int problemsId);
	
	/**
	 * 查询单个咨询记录
	 * @param problemsId
	 * @return
	 */
//	List<Problems> getById(int problemsId);
	Problems getById(int problemsId);
	
	/**
	 * 无条件查询所有咨询记录
	 * @return
	 */
	List<Problems> getList();
	
	/**
	 * 
	 * @return
	 */
	List<Problems> getListByCondition(String audit,String authority,String keyWord);
	
	//回复
	int replyById(int problemsId,Problems problems);
	
	//用户发布咨询
	int addProblems(Problems problems);
	
	//根据用户Id查询咨询信息列表
	List<Problems> getListByUserId(int userId);
	
	//根据用户Id和关键字搜索咨询信息列表
	List<Problems> getSearchByUserId(int userId,String keyWord);
}
