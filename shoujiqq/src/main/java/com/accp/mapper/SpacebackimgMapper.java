package com.accp.mapper;

import com.accp.entity.Spacebackimg;

public interface SpacebackimgMapper {
    int deleteByPrimaryKey(Integer backimgid);

    int insert(Spacebackimg record);

    int insertSelective(Spacebackimg record);

    Spacebackimg selectByPrimaryKey(Integer backimgid);

    int updateByPrimaryKeySelective(Spacebackimg record);

    int updateByPrimaryKeyWithBLOBs(Spacebackimg record);

    int updateByPrimaryKey(Spacebackimg record);
}