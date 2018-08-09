package com.accp.entity;

import java.util.Date;

public class Reply {
    private Integer replyid;

    private Integer userid;

    private Integer pasvuserid;

    private Date replytime;

    private Integer commentid;

    private String replytext;

    public Integer getReplyid() {
        return replyid;
    }

    public void setReplyid(Integer replyid) {
        this.replyid = replyid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getPasvuserid() {
        return pasvuserid;
    }

    public void setPasvuserid(Integer pasvuserid) {
        this.pasvuserid = pasvuserid;
    }

    public Date getReplytime() {
        return replytime;
    }

    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public String getReplytext() {
        return replytext;
    }

    public void setReplytext(String replytext) {
        this.replytext = replytext == null ? null : replytext.trim();
    }
}