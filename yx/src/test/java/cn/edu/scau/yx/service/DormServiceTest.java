package cn.edu.scau.yx.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.scau.yx.entity.DormArea;
import cn.edu.scau.yx.service.interfaces.DormService;

/**
 * 
 *@author 黄建东 
 *@email 2594570106@qq.com
 *@description 宿舍模块service测试
 *@date 2016年8月26日下午2:16:02
 *@version v1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/spring-context.xml"})
public class DormServiceTest {

	@Autowired
	private DormService dormService;
	
	@Test
	public void TestGetList(){
		List<DormArea> dormArea = dormService.getDormAreaList();
		System.out.println("宿舍区列表="+dormArea);
	}
}
