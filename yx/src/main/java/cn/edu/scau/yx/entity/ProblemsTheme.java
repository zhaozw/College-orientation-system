package cn.edu.scau.yx.entity;

/**
 * 问题分类实体（主题类型）--对应着problems_theme表
 * @author Wongsir 2016年8月17日20:56:16
 *
 */
public class ProblemsTheme {
	
	private int problemsThemeId;
	private String themeName;
	public int getProblemsThemeId() {
		return problemsThemeId;
	}
	public void setProblemsThemeId(int problemsThemeId) {
		this.problemsThemeId = problemsThemeId;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	@Override
	public String toString() {
		return "ProblemsThemeEntity [problemsThemeId=" + problemsThemeId + ", themeName=" + themeName + "]";
	}
	
	
}
