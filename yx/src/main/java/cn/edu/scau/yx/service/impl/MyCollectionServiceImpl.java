package cn.edu.scau.yx.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.scau.yx.dao.MyCollectionDao;
import cn.edu.scau.yx.entity.MyCollection;
import cn.edu.scau.yx.service.interfaces.MyCollectionService;
@Service
public class MyCollectionServiceImpl implements MyCollectionService{
	@Autowired
	private MyCollectionDao myCollectionDao;
	public int insertCollection(MyCollection myCollection) {
		int count = myCollectionDao.insertCollection(myCollection);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	public int delCollectionById(int coId) {
		int count = myCollectionDao.delCollectionById(coId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	public List<MyCollection> findByVistorId(int nuId) {
		List<MyCollection> list = myCollectionDao.findByVistorId(nuId);
		return list;
	}


}
