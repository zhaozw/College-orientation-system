package cn.edu.scau.yx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.ProblemsMapper;
import cn.edu.scau.yx.entity.Problems;
import cn.edu.scau.yx.service.interfaces.ProblemsService;

@Service
public class ProblemsServiceImpl implements ProblemsService{

	
	//注入Service依赖
	@Autowired
	private ProblemsMapper problemsMapper;
	
	
	public int delById(int problemsId) {
		int delCount=problemsMapper.delProblemsById(problemsId);
		return delCount;
	}

	public Problems getById(int problemsId) {
		return problemsMapper.findById(problemsId);
	}

	public List<Problems> getList() {
		return problemsMapper.findAll();
	}

	public List<Problems> getListByCondition(String audit, String authority, String keyWord) {
		return problemsMapper.findWithKey(audit, authority, keyWord);
	}

}
