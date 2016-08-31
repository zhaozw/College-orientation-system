package cn.edu.scau.yx.dao;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.edu.scau.yx.entity.NoticeComment;

public interface NoticeCommentDao {
	/**
	 * 无条件查询全部咨询内容列表
	 * @return
	 */
	List<NoticeComment> findAll();
	/**
	 * 无条件查询全部被举报咨询内容列表
	 * @return
	 */
	List<NoticeComment> findAllReportedComment();
	/**
	 * 根据Id查找一条记录
	 * @retrun
	 */
	NoticeComment findCommentById(int ncId);
	/**
	 * 根据信息查询其所有评论
	 * @return
	 */
	List<NoticeComment> findFromMessage(int piId);
	/**
	 * 插入一条记录（一个实体）
	 * @param comment
	 * @return	返回影响行数 0：表示删除失败
	 */
	int insertComment(NoticeComment comment);
	/**
	 * 根据Id删除一条记录
	 * @return
	 */
	int delCommentById(int ncId);
	/**
	 * 根据Id更新一条记录
	 */
	int updateComment(NoticeComment comment);
	
}
