package cn.edu.scau.yx.service.interfaces;
import java.util.List;

import cn.edu.scau.yx.entity.Message;
public interface MessageService {
	/**
	 * 无条件查询全部咨询内容列表
	 * @return
	 */
	List<Message> findAll();
	
	/**
	 * 根据id查询咨询内容，进行“详情”操作的时候用到该查询
	 * @param piId
	 * @return
	 */
	Message findById(int piId);
	/**
	 * 根据标题查询记录
	 * @param piTitle
	 * @return
	 */
	List<Message> findByMessageTitle(String piTitle);
	
	/**
	 * 插入一条记录（一个实体）
	 * @param message
	 * @return 返回影响行数 0：表示插入失败
	 */
	int insertMessage(Message message);
	/**
	 * 根据id删除一条记录
	 * @param messageId
	 * @return 返回影响行数 0：表示删除失败
	 */
	int delMessageById(int piId);

	/**
	 * 更新一条记录（一个实体）
	 * @param message
	 * @return
	 */
	int updateMessage(Message message);
	
}
