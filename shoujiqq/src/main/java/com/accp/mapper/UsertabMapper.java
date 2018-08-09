package com.accp.mapper;

import org.apache.ibatis.annotations.Param;

import com.accp.entity.Usertab;

public interface UsertabMapper {
	Usertab userlogin(@Param("username") String username, @Param("password") String password);// ÓÃ»§µÇÂ¼
	int insertusertab(Usertab usertab);

}