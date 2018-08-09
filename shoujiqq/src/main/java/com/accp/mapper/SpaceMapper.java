package com.accp.mapper;

import com.accp.entity.Space;

public interface SpaceMapper {
    int deleteByPrimaryKey(Integer spaceid);

    int insert(Space record);

    int insertSelective(Space record);

    Space selectByPrimaryKey(Integer spaceid);

    int updateByPrimaryKeySelective(Space record);

    int updateByPrimaryKey(Space record);
}