package com.accp.mapper;

import org.apache.ibatis.annotations.Param;

import com.accp.entity.Usertab;

public interface UsertabMapper {
	Usertab userlogin(@Param("username") String username, @Param("password") String password);// �û���¼
	int insertusertab(Usertab usertab);

}