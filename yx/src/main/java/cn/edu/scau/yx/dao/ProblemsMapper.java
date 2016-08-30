package cn.edu.scau.yx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.Problems;

/**
 * 
 * @author Wongsir 2016年8月17日21:22:17
 *
 */

public interface ProblemsMapper {
	
	/**
	 * 插入一条记录（一个实体）
	 * @param problems
	 * @return 返回影响行数 0：表示插入失败
	 */
	int insertProblems(Problems problems);
	
	/**
	 * 根据id删除一条记录
	 * @param problemsId
	 * @return 返回影响行数 0：表示删除失败
	 */
	int delProblemsById(int problemsId);
	
	/**
	 * 根据id更新回复内容的字段，包括审核状态、权限状态、回复内容、回复时间、回复人
	 * @param problemsId
	 * @return
	 */
	int updateContentById(@Param("problemsId") int problemsId,@Param("problems") Problems problems);
	
	/**
	 * 根据id查询咨询内容，进行“详情”操作的时候用到该查询
	 * @param problemsId
	 * @return
	 */
//	List<Problems> findById(int problemsId);
	Problems findById(int problemsId);
	

	/**
	 * 组合查询，根据审核状态（audit）、权限状态（authority）和关键字（keyWord）组合查询咨询记录
	 * @param audit
	 * @param authority
	 * @param keyWord
	 * @return
	 */
	List<Problems> findWithKey(@Param("audit") String audit,@Param("authority") String authority,@Param("keyWord") String keyWord);
	
	/**
	 * 无条件查询全部咨询内容列表
	 * @return
	 */
	List<Problems> findAll();
	
	
	
//	/**
//	 * 根据audit（审核状态）查询咨询记录
//	 * @param audit
//	 * @return
//	 */
//	List<Problems> findByAudit(String audit);
//	
//	/**procedure
//	 * 根据authority（权限状态）查询咨询记录
//	 * @param authority
//	 * @return
//	 */
//	List<Problems> findByAuthority(String authority);
//	
//	/**
//	 * 根据keyword（关键字）查询咨询记录
//	 * @param keyWord
//	 * @return
//	 */
//	List<Problems> findByKeyWord(String keyWord);
//	
//	/**
//	 * 组合查询，根据审核状态（audit）和权限状态（authority）组合查询咨询记录
//	 * @param audit
//	 * @param authority
//	 * @return
//	 */
//	List<Problems> findByAuditWithAuthority(@Param("audit") String audit,@Param("authority") String authority);
//	
//	/**
//	 * 组合查询，根据审核状态（audit）和关键字（keyWord）组合查询咨询记录
//	 * @param audit
//	 * @param keyWord
//	 * @return
//	 */
//	List<Problems> findByAuditWithKeyWord(@Param("audit") String audit,@Param("keyWord") String keyWord);
//	
//	/**
//	 * 组合查询，根据权限状态（authority）和关键字（keyWord）组合查询咨询记录
//	 * @param authority
//	 * @param keyWord
//	 * @return
//	 */
//	List<Problems> findByAuthorityWithKeyWord(@Param("authority") String authority,@Param("keyWord") String keyWord);
//	
//	
	
}
