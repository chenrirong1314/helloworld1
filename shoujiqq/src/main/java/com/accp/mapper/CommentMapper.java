package com.accp.mapper;

import com.accp.entity.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentid);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer commentid);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKeyWithBLOBs(Comment record);

    int updateByPrimaryKey(Comment record);
}