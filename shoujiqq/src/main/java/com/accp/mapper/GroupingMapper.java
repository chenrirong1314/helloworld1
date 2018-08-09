package com.accp.mapper;

import com.accp.entity.Grouping;

public interface GroupingMapper {
    int deleteByPrimaryKey(Integer groupingid);

    int insert(Grouping record);

    int insertSelective(Grouping record);

    Grouping selectByPrimaryKey(Integer groupingid);

    int updateByPrimaryKeySelective(Grouping record);

    int updateByPrimaryKey(Grouping record);
}