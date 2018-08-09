package com.accp.mapper;

import com.accp.entity.Friend;

public interface FriendMapper {
    int deleteByPrimaryKey(Integer friendid);

    int insert(Friend record);

    int insertSelective(Friend record);

    Friend selectByPrimaryKey(Integer friendid);

    int updateByPrimaryKeySelective(Friend record);

    int updateByPrimaryKey(Friend record);
}