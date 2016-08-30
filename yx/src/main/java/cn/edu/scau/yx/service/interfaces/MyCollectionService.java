package cn.edu.scau.yx.service.interfaces;
import java.util.List;
import cn.edu.scau.yx.entity.MyCollection;

public interface MyCollectionService {
	/**
	 * 插入一条记录（一个实体）
	 * @param myCollection
	 * @return 返回影响行数 0：表示插入失败
	 */
	int insertCollection(MyCollection myCollection);
	/**
	 * @param coId
	 * return 返回影响行数 0：表示删除失败
	 */
	int delCollectionById(int coId);
	/**
	 * 根据nuId（游客Id）查询收藏记录
	 * @param nuId
	 * @return
	 */
	List<MyCollection> findByVistorId(int nuId);
}
