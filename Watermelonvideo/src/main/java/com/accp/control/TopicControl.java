package com.accp.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.entity.Topic;
import com.accp.service.TopicService;
@Controller
 
@RequestMapping("/TopicControl")

public class TopicControl {

	
	@Autowired
	 TopicService topicService = new TopicService();

	@ResponseBody
	@RequestMapping(value="/gettitle",method=RequestMethod.GET)
	public List<Topic> gettitle() {
		return this.topicService.selecttname();
		
	

		
	}
	
}
