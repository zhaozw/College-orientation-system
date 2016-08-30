package cn.edu.scau.yx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.yx.dao.PayTheFeesMapper;
import cn.edu.scau.yx.service.interfaces.PayTheFeesService;

@Service
public class PayTheFeesServiceImpl implements PayTheFeesService{
 
    @Autowired
    private PayTheFeesMapper payTheFeesMapper;
	
	@Override
	public int updatePayTheFeesStatusByStuId(int stuId) {
		int i=payTheFeesMapper.updatePayTheFeesStatusByStuId(stuId);
		return i;
	}

}
