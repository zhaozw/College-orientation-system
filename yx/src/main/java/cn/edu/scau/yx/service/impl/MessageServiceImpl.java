package cn.edu.scau.yx.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.edu.scau.yx.dao.MessageDao;
import cn.edu.scau.yx.entity.Message;
import cn.edu.scau.yx.service.interfaces.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
    private MessageDao messageDao; 
	
	public List<Message> findAll() {
		List<Message> list = messageDao.findAll();
		
		return list;
	}

	
	public Message findById(int piId) {
		Message result = messageDao.findById(piId);
		
		return result;
	}

	
	public List<Message> findByMessageTitle(String piTitle) {
		List<Message> list = messageDao.findByMessageTitle(piTitle);
		
		return list;
	}

	
	public int insertMessage(Message message) {
		int count = messageDao.insertMessage(message);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int delMessageById(int piId) {
		int count = messageDao.delMessageById(piId);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

	
	public int updateMessage(Message message) {
		int count = messageDao.updateMessage(message);
		if( count != 1 ){
			throw new RuntimeException("error");
		}
		return 1;
	}

}
