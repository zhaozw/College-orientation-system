package cn.edu.scau.yx.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/spring-context.xml"})
public class ProblemsDaoTest {
	
	@Autowired
	private ProblemsDao problemsDao;
	
	@Test
	public void TestDelProblemsById(){
		
		int problemsId=101;
		int delCount=problemsDao.delProblemsById(problemsId);
		System.out.println("delCount="+delCount);
		
	}
}
