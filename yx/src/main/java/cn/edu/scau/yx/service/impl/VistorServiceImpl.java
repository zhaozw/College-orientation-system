package cn.edu.scau.yx.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.scau.yx.dao.VistorDao;
import cn.edu.scau.yx.entity.Vistor;
import cn.edu.scau.yx.service.interfaces.VistorService;
@Service
public class VistorServiceImpl implements VistorService{

	@Autowired
	private VistorDao vistorDao;
	public int insertVistor(Vistor vistor) {
		int count = vistorDao.insertVistor(vistor);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int delVistorById(int nuId) {
		int count = vistorDao.delVistorById(nuId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

}
