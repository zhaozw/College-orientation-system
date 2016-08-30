package cn.edu.scau.yx.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.scau.yx.dao.NoticeCommentDao;
import cn.edu.scau.yx.entity.NoticeComment;
import cn.edu.scau.yx.service.interfaces.NoticeCommentService;
@Service
public class NoticeCommentServiceImpl implements NoticeCommentService{
	
	@Autowired
	private NoticeCommentDao noticeCommentDao;
	public List<NoticeComment> findAll() {
		List<NoticeComment> list=noticeCommentDao.findAll();
		return list;
	}

	
	public List<NoticeComment> findAllReportedComment() {
		List<NoticeComment> list=noticeCommentDao.findAllReportedComment();
		return list;
	}

	
	public NoticeComment findCommentById(int ncId) {
		NoticeComment result = noticeCommentDao.findCommentById(ncId);
		return result;
	}

	
	public int insertComment(NoticeComment comment) {
		int count = noticeCommentDao.insertComment(comment);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int delCommentById(int ncId) {
		int count = noticeCommentDao.delCommentById(ncId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int updateCommentById(int ncId) {
		int count=noticeCommentDao.updateCommentById(ncId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;

	}
	
}
