package com.accp.mapper;

import com.accp.entity.Praiserecord;

public interface PraiserecordMapper {
    int deleteByPrimaryKey(Integer praiseid);

    int insert(Praiserecord record);

    int insertSelective(Praiserecord record);

    Praiserecord selectByPrimaryKey(Integer praiseid);

    int updateByPrimaryKeySelective(Praiserecord record);

    int updateByPrimaryKey(Praiserecord record);
}