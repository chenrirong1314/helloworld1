package com.accp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.accp.entity.Dynamicstate;
import com.accp.mapper.DynamicstateMapper;

@Service
public class DynamicstateService {
	@Autowired
	public DynamicstateMapper dynamicstateMapper;

	public List<Dynamicstate> dynamicstates() {
		return this.dynamicstateMapper.cxdt();
	}

}
