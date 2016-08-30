package cn.edu.scau.yx.interceptor;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.scau.yx.entity.RoleInfo;
import cn.edu.scau.yx.entity.UserInfo;

/**
 * 
 *@author Bruce 
 *@email 2594570106@qq.com
 *@description 
 *@date 2016年8月25日上午10:17:00
 *@version v1.0
 */
/*
1、系统管理员Manager：用户信息管理、角色信息管理、权限信息管理
2、院系老师CollegeTeacher ：登记报到单打印状态 、院系报道管理 、档案提交管理
3、保卫处老师SecurityTeacher ：军训用品发放管理、军训用品信息管理
4、国有资产老师AssetsTeacher : 学习用品发放管理、学习用品信息管理
5、饮食中心老师FoodTeacher : 一卡通发放管理
6、后勤处老师LogisticsTeacher ：医保办理管理、医保费用信息管理、一卡通管理
7、计财处老师FinanceTeacher ：现场缴费登记 、专业学费标准管理、床上用品购买管理、学习用品购买管理、军训用品购买管理
8、公寓中心老师ApartmentTeacher：管理宿舍管理系统模块、宿舍费用信息管理、床上用品信息管理、供应商管理
9、统计查看员StatisticsEmployee：查看迎新统计人数
10、教务处老师EducationTeacher：学生信息管理、录取查询管理、管理学校院系的基本信息、管理学校专业的基本信息、管理学校年级的基本信息、管理学校班级的基本信息
11、新生Freshman：学生信息修改、学生信息查看、录取信息查询、统计缴纳学生费用
12、财务系统使用人员FinanceEmployee（PS：不是统称）：学生缴费管理
13、迎新系统管理员WelcomeManager：管理发布内容、管理栏目、管理学校信息的评论管理、管理咨询系统
14、学生Student：学生功能模块、咨询者咨询系统
15、游客Visitor：登录，注册，评论，举报，收藏信息
*/


//教务处老师模块
public class EducationTeacherInterceptor implements HandlerInterceptor {

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.HandlerInterceptor#preHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object)
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		UserInfo userInfo = (UserInfo)session.getAttribute("user");
		if (userInfo != null) {
			ArrayList<RoleInfo> roleInfos = userInfo.getRoleList();
			
			
			for (RoleInfo roleInfo : roleInfos) {
				if (roleInfo.getRoleId() == 10) {
					return true;
				}
			}
		} 
		
			//否则，跳到登录界面
			response.sendRedirect("/yx/login");
			return false;
		

	}

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.HandlerInterceptor#postHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object, org.springframework.web.servlet.ModelAndView)
	 */

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
	}

	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.HandlerInterceptor#afterCompletion(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object, java.lang.Exception)
	 */

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
