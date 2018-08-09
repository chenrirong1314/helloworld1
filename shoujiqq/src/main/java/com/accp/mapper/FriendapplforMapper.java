package com.accp.mapper;

import com.accp.entity.Friendapplfor;

public interface FriendapplforMapper {
    int deleteByPrimaryKey(Integer applforid);

    int insert(Friendapplfor record);

    int insertSelective(Friendapplfor record);

    Friendapplfor selectByPrimaryKey(Integer applforid);

    int updateByPrimaryKeySelective(Friendapplfor record);

    int updateByPrimaryKey(Friendapplfor record);
}