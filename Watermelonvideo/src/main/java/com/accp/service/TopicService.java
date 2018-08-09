package com.accp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.entity.Topic;
import com.accp.mapper.TopicMapper;
@Service
public class TopicService {

	@Autowired
	public TopicMapper topicMapper;
	
	public  List<Topic> selecttname(){
		return this.topicMapper.selecttname();
		
	}
}
