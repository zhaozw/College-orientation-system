package cn.edu.scau.yx.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.DS;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="/spring-context.xml")
public class RestartDormMapperTest {

	@Autowired
	private RestartDormMapper restartDormMapper;
	
	@Test
	public void getById(){
		int sId=3;
		DS ds=restartDormMapper.findDsById(sId);
		System.out.println(ds);
	}
}
