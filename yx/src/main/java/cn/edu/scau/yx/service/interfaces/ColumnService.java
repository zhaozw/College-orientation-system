package cn.edu.scau.yx.service.interfaces;
import java.util.List;
import cn.edu.scau.yx.entity.Column;

public interface ColumnService {
	/**
	 * 无条件查询全部咨询内容列表
	 * @return
	 */
	List<Column> findAll();
	
	/**
	 * 根据栏目名称查询记录
	 * @param ciKey
	 * @return
	 */
	List<Column> findByColumnKey(String ciKey);
	/**
	 * 插入一条记录（一个实体）
	 * @param column
	 * @return 返回影响行数 0：表示插入失败
	 */
	int insertColumn(Column column);
	/**
	 * 根据id删除一条记录
	 * @param ciId
	 * @return 返回影响行数 0：表示删除失败
	 */
	int delColumnById(int ciId);
	/**
	 * 更新一条记录（一个实体）
	 * @param column
	 * @return
	 */
	int updateColumn(Column column);
	/**
	 * 根据栏目大小写排序查询记录
	 * @return
	 */
	List<Column> sortColumn();
}
