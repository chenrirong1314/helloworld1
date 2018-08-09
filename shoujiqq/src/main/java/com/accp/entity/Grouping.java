package com.accp.entity;

public class Grouping {
    private Integer groupingid;

    private String groupingname;

    private Integer userid;

    public Integer getGroupingid() {
        return groupingid;
    }

    public void setGroupingid(Integer groupingid) {
        this.groupingid = groupingid;
    }

    public String getGroupingname() {
        return groupingname;
    }

    public void setGroupingname(String groupingname) {
        this.groupingname = groupingname == null ? null : groupingname.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}