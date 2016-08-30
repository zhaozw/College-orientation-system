package cn.edu.scau.yx.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.scau.yx.dao.ColumnDao;
import cn.edu.scau.yx.entity.Column;
import cn.edu.scau.yx.service.interfaces.ColumnService;

@Service
public class ColumnServiceImpl implements ColumnService{

	@Autowired
	private ColumnDao columnDao;
	public List<Column> findAll() {
		List<Column> list = columnDao.findAll();
		return list;
	}


	public List<Column> findByColumnKey(String ciKey) {
		List<Column> list = columnDao.findByColumnKey(ciKey);
		return list;
	}


	public int insertColumn(Column column) {
		int count = columnDao.insertColumn(column);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int delColumnById(int ciId) {
		int count = columnDao.delColumnById(ciId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int updateColumn(Column column) {
		int count = columnDao.updateColumn(column);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public List<Column> sortColumn() {
		List<Column> list = columnDao.sortColumn();
		return list;
	}

}
