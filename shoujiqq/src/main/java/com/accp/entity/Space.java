package com.accp.entity;

public class Space {
    private Integer spaceid;

    private String backcolor;

    private Integer signature;

    private Integer backimgid;

    private Integer userid;

    public Integer getSpaceid() {
        return spaceid;
    }

    public void setSpaceid(Integer spaceid) {
        this.spaceid = spaceid;
    }

    public String getBackcolor() {
        return backcolor;
    }

    public void setBackcolor(String backcolor) {
        this.backcolor = backcolor == null ? null : backcolor.trim();
    }

    public Integer getSignature() {
        return signature;
    }

    public void setSignature(Integer signature) {
        this.signature = signature;
    }

    public Integer getBackimgid() {
        return backimgid;
    }

    public void setBackimgid(Integer backimgid) {
        this.backimgid = backimgid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}