package com.accp.entity;

import java.util.Date;

public class Friend {
    private Integer friendid;

    private String friendname;

    private Integer userid;

    private Integer frienduserid;

    private Integer groupingid;

    private Date friendtime;

    public Integer getFriendid() {
        return friendid;
    }

    public void setFriendid(Integer friendid) {
        this.friendid = friendid;
    }

    public String getFriendname() {
        return friendname;
    }

    public void setFriendname(String friendname) {
        this.friendname = friendname == null ? null : friendname.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getFrienduserid() {
        return frienduserid;
    }

    public void setFrienduserid(Integer frienduserid) {
        this.frienduserid = frienduserid;
    }

    public Integer getGroupingid() {
        return groupingid;
    }

    public void setGroupingid(Integer groupingid) {
        this.groupingid = groupingid;
    }

    public Date getFriendtime() {
        return friendtime;
    }

    public void setFriendtime(Date friendtime) {
        this.friendtime = friendtime;
    }
}