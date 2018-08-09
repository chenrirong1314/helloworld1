package com.accp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.entity.Usertab;
import com.accp.mapper.UsertabMapper;

@Service
public class UsertabService {
	@Autowired
	public UsertabMapper usertabMapper;
	public Usertab userlogin(String username,String password) {
		return this.usertabMapper.userlogin(username, password);
		
	}
	public int insertusertab(Usertab usertab) {
		return this.usertabMapper.insertusertab(usertab);
		
	}
	
}
