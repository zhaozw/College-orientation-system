package cn.edu.scau.yx.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.Problems;
import cn.edu.scau.yx.service.interfaces.ProblemsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/spring-context.xml"})
public class ProblemsServiceTest {

	@Autowired
	private ProblemsService problemsService;
	
	@Test
	public void TestGetList(){
		List<Problems> problems=problemsService.getList();
		System.out.println("GetList="+problems);
	}
	
	@Test
	public void TestGetById(){
		int problemsId=100;
		Problems problems =problemsService.getById(problemsId);
		System.out.println("GetById="+problems);
	}
	
	@Test
	public void TestGetListByCondition(){
//		String audit="通过";
//		String authority="仅学生可见";
		String keyWord="软件工程";
		String audit=null;
		String authority=null;
//		String keyWord=null;
		List<Problems> problems= problemsService.getListByCondition(audit, authority, keyWord);
		System.out.println(problems);
	}
}
