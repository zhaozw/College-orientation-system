package cn.edu.scau.yx.dao;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml"})
public class RoleInfoMapperTest {
	@Autowired
	private RoleInfoMapper roleInfoMapper;
	@Test
	public void testFindRoleByName() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindPowerListByRoleId() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindByRoleId() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteRoleInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertRoleInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateRoleInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testViewRoleInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertRolePowerInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteRolePowerList() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindAllsByUserId() {
		fail("Not yet implemented");
	}

}
