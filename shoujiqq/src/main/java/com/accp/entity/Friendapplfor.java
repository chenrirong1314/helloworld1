package com.accp.entity;

import java.util.Date;

public class Friendapplfor {
    private Integer applforid;

    private String remark;

    private Integer userid;

    private Integer pasvuserid;

    private Integer isok;

    private Date createtime;

    public Integer getApplforid() {
        return applforid;
    }

    public void setApplforid(Integer applforid) {
        this.applforid = applforid;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

    public Integer getIsok() {
        return isok;
    }

    public void setIsok(Integer isok) {
        this.isok = isok;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}