package cn.edu.scau.yx.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;

import cn.edu.scau.yx.entity.NoticeComment;
import cn.edu.scau.yx.entity.Vistor;

public interface VistorDao {
	/**
	 * 插入一条记录（一个实体）
	 * @param comment
	 * @return	返回影响行数 0：表示删除失败
	 */
	int insertVistor(Vistor vistor);
	/**
	 * 根据Id删除一条记录
	 * @return
	 */
	int delVistorById(int nuId);
}
