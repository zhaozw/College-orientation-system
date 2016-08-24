package cn.edu.scau.yx.dao;

import java.util.List;

import cn.edu.scau.yx.entity.ProblemsTheme;

/**
 * 
 *  @author Wongsir 2016年8月17日21:22:17
 *
 */
public interface ProblemsThemeMapper {
	
	/**
	 * 根据id查询问题类型
	 * @param problemsThemeId 问题类型id
	 * @return 
	 */
	ProblemsTheme findById(int problemsThemeId);
	
	/**
	 * 无条件查询全部问题类型列表
	 * @return
	 */
	List<ProblemsTheme> findAll();
	
	/**
	 * 根据id更新问题类型列表
	 * @param problemsThemeId
	 * @return
	 */
	int updateThemesById(int problemsThemeId);
	
	
}
