package cn.edu.scau.yx.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.Problems;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/spring-context.xml"})
public class ProblemsMapperTest {
	
	@Autowired
	private ProblemsMapper problemsMapper;
	
	@Test
	public void TestDelProblemsById(){
		
		int problemsId=101;
		int delCount=problemsMapper.delProblemsById(problemsId);
		System.out.println("delCount="+delCount);
		
	}
	
	@Test
	public void TestFindById(){
		
		int problemsId=102;
		Problems problems = problemsMapper.findById(problemsId);
		
		System.out.println(problems.getUserInfoAns().getUserName());
		System.out.println("实体problems="+problems);
	}
	
	@Test
	public void TestFindAll(){
		List<Problems> problems = problemsMapper.findAll();
		System.out.println(problems);
	}
	
	@Test
	public void TestFindByCondition(){
		String audit=null;
		String authority=null;
		String keyWord="校招";
		List<Problems> problems = problemsMapper.findWithKey(audit, authority, keyWord);
		System.out.println(problems);
	}
}