package cn.edu.scau.yx.dao;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.UserInfo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml"})
public class UserInfoMapperTest {
	@Autowired
	private UserInfoMapper userInfoMapper;
	@Test
	public void testFindUserByName() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindRoleListByUserId() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindByUserId() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindByUserIdAndPwd() {
		UserInfo userInfo = userInfoMapper.findByUserIdAndPwd(3, "123456");
		System.out.println(userInfo);
	}

	@Test
	public void testDeleteUserInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertUserInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateUserInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testViewUserInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertUserRoleInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteUserRoleList() {
		fail("Not yet implemented");
	}

}
